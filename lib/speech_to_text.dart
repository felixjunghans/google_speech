library flutter_google_speech;

import 'dart:async';

import 'package:google_speech/generated/google/cloud/speech/v1/cloud_speech.pb.dart'
    hide RecognitionConfig, StreamingRecognitionConfig;
import 'package:google_speech/generated/google/cloud/speech/v1/cloud_speech.pbgrpc.dart'
    hide RecognitionConfig, StreamingRecognitionConfig;
import 'package:google_speech/speech_client_authenticator.dart';
import 'package:grpc/grpc.dart';

import 'config/recognition_config_v1.dart';
import 'config/streaming_recognition_config.dart';

/// An interface to Google's Speech-to-Text Api via grpc.
///
/// Important! You need an own Google project to use this class.
class SpeechToText {
  /// [CallOptions] that are transferred when creating a [SpeechClient].
  final CallOptions _options;

  /// [ClientChannel] which is used for the Google Speech-to-Text Api.
  final ClientChannel _channel = ClientChannel('speech.googleapis.com');

  // Private constructor to prevent direct initialization of the class.
  SpeechToText._(this._options);

  /// Creates a SpeechToText interface using a service account.
  factory SpeechToText.viaServiceAccount(ServiceAccount account) =>
      SpeechToText._(account.callOptions);

  /// Listen to audio stream.
  /// Cancelled as soon as dispose is called.
  StreamSubscription<List<int>>? _audioStreamSubscription;

  /// Sends a [RecognizeRequest] request to the Google Speech Api.
  /// Requires a [RecognitionConfig] and an [RecognitionAudio].
  ///
  /// Audio files transcribed with recognize must not be longer than 60 seconds.
  /// For longer audio files [longRunningRecognize] must be used.
  Future<RecognizeResponse> recognize(
      RecognitionConfig config, List<int> audio) {
    final client = SpeechClient(_channel, options: _options);

    // transform audio to RecognitionAudio
    final recognitionAudio = RecognitionAudio()..content = audio;

    // Create the request, which transmits the necessary
    // data to the Google Api.
    final request = (RecognizeRequest()
      ..config = config.toConfig()
      ..audio = recognitionAudio);
    return client.recognize(request);
  }

  /// Sends a [StreamingRecognizeRequest] to the Google Speech Api.
  /// Requires a [StreamingRecognitionConfig] and an audioStream.
  Stream<StreamingRecognizeResponse> streamingRecognize(
      StreamingRecognitionConfig config, Stream<List<int>> audioStream) {
    final client = SpeechClient(_channel, options: _options);

    // Create the stream, which later transmits the necessary
    // data to the Google Api.
    final request = StreamController<StreamingRecognizeRequest>();

    // Send the streaming config at first.
    request
        .add(StreamingRecognizeRequest()..streamingConfig = config.toConfig());

    _audioStreamSubscription = audioStream.listen((audio) {
      // Add audio content when stream changes.
      request.add(StreamingRecognizeRequest()..audioContent = audio);
    });

    _audioStreamSubscription!.onDone(() {
      // Close the request stream, if the audio stream is finished.
      request.close();
    });
    return client.streamingRecognize(request.stream);
  }

  void dispose() {
    _audioStreamSubscription?.cancel();
  }
}
