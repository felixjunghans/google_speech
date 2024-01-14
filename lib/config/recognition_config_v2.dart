import 'package:google_speech/generated/google/cloud/speech/v2/cloud_speech.pb.dart'
    as _cs;

class RecognitionConfigV2 {
  final _cs.RecognitionFeatures? features;
  final _cs.SpeechAdaptation? adaptation;
  final _cs.AutoDetectDecodingConfig? autoDecodingConfig;
  final _cs.ExplicitDecodingConfig? explicitDecodingConfig;
  final RecognitionModelV2? model;
  final Iterable<String>? languageCodes;

  /// Provides information to the recognizer
  /// that specifies how to process the request.
  RecognitionConfigV2({
    this.features,
    this.adaptation,
    this.autoDecodingConfig,
    this.explicitDecodingConfig,
    this.model,
    this.languageCodes,
  });

  _cs.RecognitionConfig toConfig() => _cs.RecognitionConfig(
      features: features,
      adaptation: adaptation,
      autoDecodingConfig: autoDecodingConfig,
      explicitDecodingConfig: explicitDecodingConfig,
      model: model?.name,
      languageCodes: languageCodes);
}

/// Which model to select for the given request. Select the model best suited
/// to your domain to get best results. If a model is not explicitly specified,
/// then we auto-select a model based on the parameters in the RecognitionConfig.
enum RecognitionModelV2 {
  /// Use this model for any kind of long form content such as media or spontaneous speech and conversations.
  long,

  /// Use this model for short utterances that are a few seconds in length.
  /// It is useful for trying to capture commands or other single-short directed
  /// speech use cases. Consider using this model instead of the command and search model.
  short,

  /// Use this model for short utterances that are a few seconds in length.
  /// It is useful for trying to capture commands or other single shot directed speech use cases.
  /// When you use this model, the service will stop transcribing audio after the first utterance
  /// is detected and completed. With this model, separate recognition per channel is not supported.
  /// While multi-channel audio will be accepted by the service,
  /// only the first channel will be processed and recognized.
  phone_call,

  /// est for audio that originated from a phone call
  /// (typically recorded at an 8 kHz sampling rate).
  telephony,

  /// Unified large speech model. Use this model for any
  /// use case that doesn't need streaming.
  chirp,

  /// Universal large Speech Model(USM) fine-tuned for audio
  /// that originated from a phone call (typically recorded at an 8 kHz sampling rate).
  chirp_telephony,

  /// To transcribe notes dictated by a medical professional.
  /// This is a premium model that costs more than the standard rate.
  /// For pricing visit this page https://cloud.google.com/speech-to-text/pricing
  medical_dictation,
  /// To transcribe a conversation between a medical professional and a patient.
  /// This is a premium model that costs more than the standard rate.
  /// For pricing visit this page https://cloud.google.com/speech-to-text/pricing
  medical_conversation,
}
