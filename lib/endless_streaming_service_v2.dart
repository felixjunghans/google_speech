library flutter_google_speech;

import 'dart:async';
import 'dart:collection';

import 'package:google_speech/auth/third_party_authenticator.dart';
import 'package:google_speech/generated/google/cloud/speech/v2/cloud_speech.pb.dart'
    hide RecognitionConfig, StreamingRecognitionConfig;
import 'package:google_speech/generated/google/cloud/speech/v2/cloud_speech.pbgrpc.dart'
    hide RecognitionConfig, StreamingRecognitionConfig;
import 'package:google_speech/speech_client_authenticator.dart';
import 'package:grpc/grpc.dart';
import 'package:rxdart/rxdart.dart';
import 'config/streaming_recognition_config.dart';

/// An interface to Google's Speech-to-Text Api via grpc for endless streaming recognize.
///
/// Important! You need an own Google project to use this class.
class EndlessStreamingServiceV2 {
  /// [CallOptions] that are transferred when creating a [SpeechClient].
  final CallOptions _options;

  /// Your Google Project Id. This is required for Version2
  final String projectId;

  /// [ClientChannel] which is used for the Google Speech-to-Text Api.
  final ClientChannel _channel;

  // Private constructor to prevent direct initialization of the class.
  EndlessStreamingServiceV2._(this._options,
      {required this.projectId, String? cloudSpeechEndpoint})
      : _channel =
            ClientChannel(cloudSpeechEndpoint ?? 'speech.googleapis.com');

  /// Creates a EndlessStreamingServiceV2 interface using a service account.
  factory EndlessStreamingServiceV2.viaServiceAccount(ServiceAccount account,
          {required String projectId, String? cloudSpeechEndpoint}) =>
      EndlessStreamingServiceV2._(account.callOptions,
          projectId: projectId, cloudSpeechEndpoint: cloudSpeechEndpoint);

  /// Creates a EndlessStreamingServiceV2 interface using a API keys.
  factory EndlessStreamingServiceV2.viaApiKey(String apiKey, String projectId,
          {String? cloudSpeechEndpoint}) =>
      EndlessStreamingServiceV2._(
          CallOptions(metadata: {'X-goog-api-key': '$apiKey'}),
          projectId: projectId,
          cloudSpeechEndpoint: cloudSpeechEndpoint);

  /// Creates a EndlessStreamingServiceV2 interface using a third party authenticator.
  /// Don't worry about updating the access token, the package does it automatically.
  /// Example:
  ///       final SpeechToTextV2 = SpeechToTextV2.viaThirdPartyAuthenticator(
  ///         ThirdPartyAuthenticator(
  ///           obtainCredentialsFromThirdParty: () async {
  ///             // request api to get token
  ///             final json = await requestCredentialFromMyApi();
  ///             return AccessCredentials.fromJson(json);
  ///           },
  ///         ),
  ///       );
  factory EndlessStreamingServiceV2.viaThirdPartyAuthenticator(
          ThirdPartyAuthenticator thirdPartyAuthenticator,
          {required String projectId,
          String? cloudSpeechEndpoint}) =>
      EndlessStreamingServiceV2._(thirdPartyAuthenticator.toCallOptions,
          projectId: projectId, cloudSpeechEndpoint: cloudSpeechEndpoint);

  /// Creates a EndlessStreamingServiceV2 interface using a token.
  /// You are responsible for updating the token when it expires.
  factory EndlessStreamingServiceV2.viaToken(String typeToken, String token,
          {required String projectId, String? cloudSpeechEndpoint}) =>
      EndlessStreamingServiceV2._(
          CallOptions(metadata: {'authorization': '$typeToken $token'}),
          projectId: projectId,
          cloudSpeechEndpoint: cloudSpeechEndpoint);

  /// Listen to audio stream.
  /// Cancelled as soon as dispose is called.
  StreamSubscription<List<int>>? _audioStreamSubscription;

  final BehaviorSubject<StreamingRecognizeResponse> _endlessStream =
      BehaviorSubject<StreamingRecognizeResponse>();

  Stream<StreamingRecognizeResponse> get endlessStream => _endlessStream;

  Timer? _resetTimer;

  final Queue<List<int>> _audioBuffer = Queue();

  var _transitioning = false;
  var _audioStreamIsFinished = false;
  late StreamingRecognitionConfigV2 _config;
  late Stream<List<int>> _audioStream;

  late SpeechClient _client;

  late StreamController<StreamingRecognizeRequest> _request;

  late Duration _restartTime;

  late Duration _transitionBufferTime;

  late StreamSubscription<StreamingRecognizeResponse>
      _streamingRecognizeSubscription;

  /// Sends a [StreamingRecognizeRequest] to the Google Speech Api.
  /// Requires a [StreamingRecognitionConfig] and an audioStream.
  void endlessStreamingRecognize(
    StreamingRecognitionConfigV2 config,
    Stream<List<int>> audioStream, {
    Duration restartTime = const Duration(minutes: 1),
    Duration transitionBufferTime = const Duration(seconds: 2),
  }) {
    _client = SpeechClient(_channel, options: _options);
    _audioStream = audioStream;
    _config = config;
    _restartTime = restartTime;
    _transitionBufferTime = transitionBufferTime;

    _startStream();
  }

  void _startStream() {
    _request = StreamController<StreamingRecognizeRequest>();

    // Send the initial streaming config
    // Send the streaming config at first.
    _request.add(StreamingRecognizeRequest()
      ..streamingConfig = _config.toConfig()
      ..recognizer = 'projects/$projectId/locations/global/recognizers/_');

    // Send buffered audio to the new stream first
    while (_audioBuffer.isNotEmpty) {
      _request
          .add(StreamingRecognizeRequest()..audio = _audioBuffer.removeFirst());
    }

    _audioStreamSubscription = _audioStream.listen((audio) {
      // Buffer audio while transitioning
      if (_transitioning) {
        _audioBuffer.add(audio);

        // Send empty audio content to keep stream alive and trigger final state.
        if (!_request.isClosed) {
          _request.add(StreamingRecognizeRequest()
            ..audio = List.generate(audio.length, (index) => 0));
        }
      } else {
        // Add audio content to the request
        _request.add(StreamingRecognizeRequest()..audio = audio);
      }
    }, onDone: () {
      // Close the request stream, if the audio stream is finished.
      _audioStreamIsFinished = true;
      _request.close();
    });

    // Reset buffer
    _audioBuffer.clear();
    _transitioning = false;

    _streamingRecognizeSubscription =
        _client.streamingRecognize(_request.stream).listen((value) {
      _endlessStream.add(value);
    }, onError: (error) {
      _endlessStream.addError(error);
    });

    _resetTimer = Timer(_restartTime, _restart);
  }

  Future<void> _restart() async {
    _transitioning = true;
    await Future.delayed(_transitionBufferTime);
    await _audioStreamSubscription?.cancel();
    _audioStreamSubscription = null;
    await _streamingRecognizeSubscription.cancel();
    await _request.close();
    if (!_audioStreamIsFinished) {
      _startStream();
    }
  }

  void dispose() {
    _audioStreamSubscription?.cancel();
    _resetTimer?.cancel();
    _endlessStream.close();
  }
}
