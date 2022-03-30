library flutter_google_speech_beta;

import 'dart:async';

import 'package:google_speech/config/recognition_config_v1p1beta1.dart';
import 'package:google_speech/generated/google/cloud/speech/v1p1beta1/cloud_speech.pb.dart'
    hide RecognitionConfig, StreamingRecognitionConfig;
import 'package:google_speech/generated/google/cloud/speech/v1p1beta1/cloud_speech.pbgrpc.dart'
    hide RecognitionConfig, StreamingRecognitionConfig;
import 'package:google_speech/speech_client_authenticator.dart';
import 'package:grpc/grpc.dart';

import 'config/recognition_config_v1.dart';
import 'config/streaming_recognition_config.dart';
import 'generated/google/longrunning/operations.pb.dart';

/// An interface to Google's Speech-to-Text Api via grpc.
///
/// Important! You need an own Google project to use this class.
class SpeechToTextBeta {
  /// [CallOptions] that are transferred when creating a [SpeechClient].
  final CallOptions _options;

  /// [ClientChannel] which is used for the Google Speech-to-Text Api.
  final ClientChannel _channel = ClientChannel('speech.googleapis.com');

  // Private constructor to prevent direct initialization of the class.
  SpeechToTextBeta._(this._options);

  /// Creates a SpeechToText interface using a service account.
  factory SpeechToTextBeta.viaServiceAccount(ServiceAccount account) =>
      SpeechToTextBeta._(account.callOptions);

  /// Listen to audio stream.
  /// Cancelled as soon as dispose is called.
  StreamSubscription<List<int>>? _audioStreamSubscription;

  /// Sends a [RecognizeRequest] request to the Google Speech Api.
  /// Requires a [RecognitionConfig] and an [RecognitionAudio].
  ///
  /// Audio files transcribed with recognize must not be longer than 60 seconds.
  /// For longer audio files [longRunningRecognize] must be used.
  Future<RecognizeResponse> recognize(
      RecognitionConfigBeta config, List<int> audio) {
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
      StreamingRecognitionConfigBeta config, Stream<List<int>> audioStream) {
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

  /// Sends a [LongRunningRecognizeRequest] request to the Google Speech Api.
  /// Requires a [RecognitionConfigBeta] and an [RecognitionAudio].
  ///
  /// To use asynchronous speech recognition to transcribe audio longer than 60
  /// seconds, you must have your data saved in a Google Cloud Storage bucket.
  ResponseFuture<Operation> longRunningRecognize(
      RecognitionConfigBeta config, String audioGcsUri) {
    final client = SpeechClient(_channel, options: _options);

    // transform audio to RecognitionAudio
    final recognitionAudio = RecognitionAudio()..uri = audioGcsUri;

    // Create the request, which transmits the necessary
    // data to the Google Api.
    final request = (LongRunningRecognizeRequest()
      ..config = config.toConfig()
      ..audio = recognitionAudio);
    return client.longRunningRecognize(request);
  }

  void dispose() {
    _audioStreamSubscription?.cancel();
  }
}
