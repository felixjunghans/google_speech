//
//  Generated code. Do not modify.
//  source: google/cloud/speech/v2/cloud_speech.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Set of states that define the lifecycle of a Recognizer.
class Recognizer_State extends $pb.ProtobufEnum {
  static const Recognizer_State STATE_UNSPECIFIED =
      Recognizer_State._(0, _omitEnumNames ? '' : 'STATE_UNSPECIFIED');
  static const Recognizer_State ACTIVE =
      Recognizer_State._(2, _omitEnumNames ? '' : 'ACTIVE');
  static const Recognizer_State DELETED =
      Recognizer_State._(4, _omitEnumNames ? '' : 'DELETED');

  static const $core.List<Recognizer_State> values = <Recognizer_State>[
    STATE_UNSPECIFIED,
    ACTIVE,
    DELETED,
  ];

  static final $core.Map<$core.int, Recognizer_State> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Recognizer_State? valueOf($core.int value) => _byValue[value];

  const Recognizer_State._($core.int v, $core.String n) : super(v, n);
}

/// Supported audio data encodings.
class ExplicitDecodingConfig_AudioEncoding extends $pb.ProtobufEnum {
  static const ExplicitDecodingConfig_AudioEncoding AUDIO_ENCODING_UNSPECIFIED =
      ExplicitDecodingConfig_AudioEncoding._(
          0, _omitEnumNames ? '' : 'AUDIO_ENCODING_UNSPECIFIED');
  static const ExplicitDecodingConfig_AudioEncoding LINEAR16 =
      ExplicitDecodingConfig_AudioEncoding._(
          1, _omitEnumNames ? '' : 'LINEAR16');
  static const ExplicitDecodingConfig_AudioEncoding MULAW =
      ExplicitDecodingConfig_AudioEncoding._(2, _omitEnumNames ? '' : 'MULAW');
  static const ExplicitDecodingConfig_AudioEncoding ALAW =
      ExplicitDecodingConfig_AudioEncoding._(3, _omitEnumNames ? '' : 'ALAW');

  static const $core.List<ExplicitDecodingConfig_AudioEncoding> values =
      <ExplicitDecodingConfig_AudioEncoding>[
    AUDIO_ENCODING_UNSPECIFIED,
    LINEAR16,
    MULAW,
    ALAW,
  ];

  static final $core.Map<$core.int, ExplicitDecodingConfig_AudioEncoding>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static ExplicitDecodingConfig_AudioEncoding? valueOf($core.int value) =>
      _byValue[value];

  const ExplicitDecodingConfig_AudioEncoding._($core.int v, $core.String n)
      : super(v, n);
}

/// Options for how to recognize multi-channel audio.
class RecognitionFeatures_MultiChannelMode extends $pb.ProtobufEnum {
  static const RecognitionFeatures_MultiChannelMode
      MULTI_CHANNEL_MODE_UNSPECIFIED = RecognitionFeatures_MultiChannelMode._(
          0, _omitEnumNames ? '' : 'MULTI_CHANNEL_MODE_UNSPECIFIED');
  static const RecognitionFeatures_MultiChannelMode
      SEPARATE_RECOGNITION_PER_CHANNEL = RecognitionFeatures_MultiChannelMode._(
          1, _omitEnumNames ? '' : 'SEPARATE_RECOGNITION_PER_CHANNEL');

  static const $core.List<RecognitionFeatures_MultiChannelMode> values =
      <RecognitionFeatures_MultiChannelMode>[
    MULTI_CHANNEL_MODE_UNSPECIFIED,
    SEPARATE_RECOGNITION_PER_CHANNEL,
  ];

  static final $core.Map<$core.int, RecognitionFeatures_MultiChannelMode>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static RecognitionFeatures_MultiChannelMode? valueOf($core.int value) =>
      _byValue[value];

  const RecognitionFeatures_MultiChannelMode._($core.int v, $core.String n)
      : super(v, n);
}

/// Possible processing strategies for batch requests.
class BatchRecognizeRequest_ProcessingStrategy extends $pb.ProtobufEnum {
  static const BatchRecognizeRequest_ProcessingStrategy
      PROCESSING_STRATEGY_UNSPECIFIED =
      BatchRecognizeRequest_ProcessingStrategy._(
          0, _omitEnumNames ? '' : 'PROCESSING_STRATEGY_UNSPECIFIED');
  static const BatchRecognizeRequest_ProcessingStrategy DYNAMIC_BATCHING =
      BatchRecognizeRequest_ProcessingStrategy._(
          1, _omitEnumNames ? '' : 'DYNAMIC_BATCHING');

  static const $core.List<BatchRecognizeRequest_ProcessingStrategy> values =
      <BatchRecognizeRequest_ProcessingStrategy>[
    PROCESSING_STRATEGY_UNSPECIFIED,
    DYNAMIC_BATCHING,
  ];

  static final $core.Map<$core.int, BatchRecognizeRequest_ProcessingStrategy>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static BatchRecognizeRequest_ProcessingStrategy? valueOf($core.int value) =>
      _byValue[value];

  const BatchRecognizeRequest_ProcessingStrategy._($core.int v, $core.String n)
      : super(v, n);
}

/// Indicates the type of speech event.
class StreamingRecognizeResponse_SpeechEventType extends $pb.ProtobufEnum {
  static const StreamingRecognizeResponse_SpeechEventType
      SPEECH_EVENT_TYPE_UNSPECIFIED =
      StreamingRecognizeResponse_SpeechEventType._(
          0, _omitEnumNames ? '' : 'SPEECH_EVENT_TYPE_UNSPECIFIED');
  static const StreamingRecognizeResponse_SpeechEventType
      END_OF_SINGLE_UTTERANCE = StreamingRecognizeResponse_SpeechEventType._(
          1, _omitEnumNames ? '' : 'END_OF_SINGLE_UTTERANCE');
  static const StreamingRecognizeResponse_SpeechEventType
      SPEECH_ACTIVITY_BEGIN = StreamingRecognizeResponse_SpeechEventType._(
          2, _omitEnumNames ? '' : 'SPEECH_ACTIVITY_BEGIN');
  static const StreamingRecognizeResponse_SpeechEventType SPEECH_ACTIVITY_END =
      StreamingRecognizeResponse_SpeechEventType._(
          3, _omitEnumNames ? '' : 'SPEECH_ACTIVITY_END');

  static const $core.List<StreamingRecognizeResponse_SpeechEventType> values =
      <StreamingRecognizeResponse_SpeechEventType>[
    SPEECH_EVENT_TYPE_UNSPECIFIED,
    END_OF_SINGLE_UTTERANCE,
    SPEECH_ACTIVITY_BEGIN,
    SPEECH_ACTIVITY_END,
  ];

  static final $core.Map<$core.int, StreamingRecognizeResponse_SpeechEventType>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static StreamingRecognizeResponse_SpeechEventType? valueOf($core.int value) =>
      _byValue[value];

  const StreamingRecognizeResponse_SpeechEventType._(
      $core.int v, $core.String n)
      : super(v, n);
}

/// Set of states that define the lifecycle of a CustomClass.
class CustomClass_State extends $pb.ProtobufEnum {
  static const CustomClass_State STATE_UNSPECIFIED =
      CustomClass_State._(0, _omitEnumNames ? '' : 'STATE_UNSPECIFIED');
  static const CustomClass_State ACTIVE =
      CustomClass_State._(2, _omitEnumNames ? '' : 'ACTIVE');
  static const CustomClass_State DELETED =
      CustomClass_State._(4, _omitEnumNames ? '' : 'DELETED');

  static const $core.List<CustomClass_State> values = <CustomClass_State>[
    STATE_UNSPECIFIED,
    ACTIVE,
    DELETED,
  ];

  static final $core.Map<$core.int, CustomClass_State> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static CustomClass_State? valueOf($core.int value) => _byValue[value];

  const CustomClass_State._($core.int v, $core.String n) : super(v, n);
}

/// Set of states that define the lifecycle of a PhraseSet.
class PhraseSet_State extends $pb.ProtobufEnum {
  static const PhraseSet_State STATE_UNSPECIFIED =
      PhraseSet_State._(0, _omitEnumNames ? '' : 'STATE_UNSPECIFIED');
  static const PhraseSet_State ACTIVE =
      PhraseSet_State._(2, _omitEnumNames ? '' : 'ACTIVE');
  static const PhraseSet_State DELETED =
      PhraseSet_State._(4, _omitEnumNames ? '' : 'DELETED');

  static const $core.List<PhraseSet_State> values = <PhraseSet_State>[
    STATE_UNSPECIFIED,
    ACTIVE,
    DELETED,
  ];

  static final $core.Map<$core.int, PhraseSet_State> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static PhraseSet_State? valueOf($core.int value) => _byValue[value];

  const PhraseSet_State._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
