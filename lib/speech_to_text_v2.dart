library flutter_google_speech;

import 'dart:async';

import 'package:google_speech/auth/third_party_authenticator.dart';
import 'package:google_speech/config/longrunning_result.dart';
import 'package:google_speech/generated/google/cloud/speech/v2/cloud_speech.pbgrpc.dart'
    hide RecognitionConfig, StreamingRecognitionConfig;
import 'package:google_speech/generated/google/longrunning/operations.pbgrpc.dart';
import 'package:google_speech/speech_client_authenticator.dart';
import 'package:grpc/grpc.dart';

import 'config/recognition_config_v2.dart';
import 'config/streaming_recognition_config.dart';

/// An interface to Google's Speech-to-Text Api via grpc.
///
/// Important! You need an own Google project to use this class.
class SpeechToTextV2 {
  /// [CallOptions] that are transferred when creating a [SpeechClient].
  final CallOptions _options;

  /// Your Google Project Id. This is required for Version2
  final String projectId;

  /// [ClientChannel] which is used for the Google Speech-to-Text Api.
  final ClientChannel _channel;

  // Private constructor to prevent direct initialization of the class.
  SpeechToTextV2._(this._options,
      {required this.projectId, String? cloudSpeechEndpoint})
      : _channel =
            ClientChannel(cloudSpeechEndpoint ?? 'speech.googleapis.com');

  /// Creates a SpeechToTextV2 interface using a service account.
  factory SpeechToTextV2.viaServiceAccount(
    ServiceAccount account, {
    required String projectId,
    String? cloudSpeechEndpoint,
    Map<String, String>? metadata,
  }) =>
      SpeechToTextV2._(
          account.callOptions.mergedWith(CallOptions(metadata: metadata ?? {})),
          projectId: projectId,
          cloudSpeechEndpoint: cloudSpeechEndpoint);

  /// Creates a SpeechToText interface using a API keys.
  factory SpeechToTextV2.viaApiKey(
    String apiKey,
    String projectId, {
    String? cloudSpeechEndpoint,
    Map<String, String>? metadata,
  }) =>
      SpeechToTextV2._(
          CallOptions(metadata: {
            'X-goog-api-key': '$apiKey',
            ...?metadata,
          }),
          projectId: projectId,
          cloudSpeechEndpoint: cloudSpeechEndpoint);

  /// Creates a SpeechToTextV2 interface using a third party authenticator.
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
  factory SpeechToTextV2.viaThirdPartyAuthenticator(
    ThirdPartyAuthenticator thirdPartyAuthenticator, {
    required String projectId,
    String? cloudSpeechEndpoint,
    Map<String, String>? metadata,
  }) =>
      SpeechToTextV2._(
          thirdPartyAuthenticator.toCallOptions
              .mergedWith(CallOptions(metadata: metadata ?? {})),
          projectId: projectId,
          cloudSpeechEndpoint: cloudSpeechEndpoint);

  /// Creates a SpeechToTextV2 interface using a token.
  /// You are responsible for updating the token when it expires.
  factory SpeechToTextV2.viaToken(
    String typeToken,
    String token, {
    required String projectId,
    String? cloudSpeechEndpoint,
    Map<String, String>? metadata,
  }) =>
      SpeechToTextV2._(
          CallOptions(metadata: {
            'authorization': '$typeToken $token',
            ...?metadata,
          }),
          projectId: projectId,
          cloudSpeechEndpoint: cloudSpeechEndpoint);

  /// Listen to audio stream.
  /// Cancelled as soon as dispose is called.
  StreamSubscription<List<int>>? _audioStreamSubscription;

  /// Sends a [RecognizeRequest] request to the Google Speech Api.
  /// Requires a [RecognitionConfig] and an [RecognitionAudio].
  ///
  /// Audio files transcribed with recognize must not be longer than 60 seconds.
  /// For longer audio files [longRunningRecognize] must be used.
  Future<RecognizeResponse> recognize(
      RecognitionConfigV2 config, List<int> audio,
      {String location = 'global'}) {
    final client = SpeechClient(_channel, options: _options);

    // Create the request, which transmits the necessary
    // data to the Google Api.
    final request = (RecognizeRequest()
      ..recognizer = 'projects/$projectId/locations/$location/recognizers/_'
      ..config = config.toConfig()
      ..content = audio);
    return client.recognize(request);
  }

  /// Sends a [StreamingRecognizeRequest] to the Google Speech Api.
  /// Requires a [StreamingRecognitionConfig] and an audioStream.
  Stream<StreamingRecognizeResponse> streamingRecognize(
      StreamingRecognitionConfigV2 config, Stream<List<int>> audioStream,
      {String location = 'global'}) {
    final client = SpeechClient(_channel, options: _options);

    // Create the stream, which later transmits the necessary
    // data to the Google Api.
    final request = StreamController<StreamingRecognizeRequest>();

    // Send the streaming config at first.
    request.add(StreamingRecognizeRequest()
      ..streamingConfig = config.toConfig()
      ..recognizer = 'projects/$projectId/locations/$location/recognizers/_');

    _audioStreamSubscription = audioStream.listen((audio) {
      // Add audio content when stream changes.
      request.add(StreamingRecognizeRequest()..audio = audio);
    });

    _audioStreamSubscription!.onDone(() {
      // Close the request stream, if the audio stream is finished.
      request.close();
    });
    return client.streamingRecognize(request.stream);
  }

  /// Sends a [LongRunningRecognizeRequest] request to the Google Speech Api.
  /// Requires a [RecognitionConfigBeta] and an [RecognitionAudio].
  ///
  /// To use asynchronous speech recognition to transcribe audio longer than 60
  /// seconds, you must have your data saved in a Google Cloud Storage bucket.
  ResponseFuture<Operation> longRunningRecognize(
      RecognitionConfigV2 config, String audioGcsUri,
      {String location = 'global'}) {
    final client = SpeechClient(_channel, options: _options);

    // transform audio to RecognitionAudio
    final recognitionAudio = BatchRecognizeFileMetadata()..uri = audioGcsUri;

    // Create the request, which transmits the necessary
    // data to the Google Api.
    final request = BatchRecognizeRequest(
      recognizer: 'projects/$projectId/locations/$location/recognizers/_',
      files: [recognitionAudio],
      config: config.toConfig(),
      recognitionOutputConfig:
          RecognitionOutputConfig(inlineResponseConfig: InlineOutputConfig()),
    );

    return client.batchRecognize(request);
  }

  /// Sends a [LongRunningRecognizeRequest] request to the Google Speech Api.
  /// Requires a [RecognitionConfigV2] and an [RecognitionAudio].
  ///
  /// To use asynchronous speech recognition to transcribe audio longer than 60
  /// seconds, you must have your data saved in a Google Cloud Storage bucket.
  ///
  /// Polls the [Operation] and returns a [LongRunningRequestResult] as soon as
  /// the Operation is finished.
  Future<LongRunningRequestResult> pollingLongRunningRecognize(
      RecognitionConfigV2 config, String audioGcsUri,
      {Duration pollInterval = const Duration(seconds: 1),
      String location = 'global'}) async {
    final client = SpeechClient(_channel, options: _options);

    // transform audio to RecognitionAudio
    final recognitionAudio = BatchRecognizeFileMetadata()..uri = audioGcsUri;

    // Create the request, which transmits the necessary
    // data to the Google Api.
    final request = BatchRecognizeRequest(
      recognizer: 'projects/$projectId/locations/$location/recognizers/_',
      files: [recognitionAudio],
      config: config.toConfig(),
      recognitionOutputConfig:
          RecognitionOutputConfig(inlineResponseConfig: InlineOutputConfig()),
    );

    final operation = await client.batchRecognize(request);
    return _pollOperation(operation, pollInterval);
  }

  Future<LongRunningRequestResult> _pollOperation(
      Operation operation, Duration pollInterval) async {
    final operationsClient = OperationsClient(_channel);
    late Operation operationResult;
    var isDone = false;
    while (isDone != true) {
      final currentOperation = await operationsClient.getOperation(
          GetOperationRequest(name: operation.name),
          options: _options);

      if (currentOperation.done) {
        isDone = true;
        operationResult = currentOperation;
      }

      await Future.delayed(pollInterval);
    }
    final response =
        BatchRecognizeResponse.fromBuffer(operationResult.response.value);

    final result = LongRunningRequestResult(
      operation: operationResult,
      results: response.results[response.results.keys.first]?.transcript.results
          .map(
            (result) => TranscriptionResult(
              alternatives: result.alternatives
                  .map(
                    (alternative) => Transcript(
                      transcript: alternative.transcript,
                      confidence: alternative.confidence,
                    ),
                  )
                  .toList(),
              resultEndOffset: ResultEndOffset(
                seconds: result.resultEndOffset.seconds.toInt(),
                nanos: result.resultEndOffset.nanos.toInt(),
              ),
              languageCode: result.languageCode,
            ),
          )
          .toList(),
      error: operationResult.error,
    );

    return result;
  }

  void dispose() {
    _audioStreamSubscription?.cancel();
  }
}
