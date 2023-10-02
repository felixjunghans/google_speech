//
//  Generated code. Do not modify.
//  source: google/cloud/speech/v1p1beta1/cloud_speech.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

///  The encoding of the audio data sent in the request.
///
///  All encodings support only 1 channel (mono) audio, unless the
///  `audio_channel_count` and `enable_separate_recognition_per_channel` fields
///  are set.
///
///  For best results, the audio source should be captured and transmitted using
///  a lossless encoding (`FLAC` or `LINEAR16`). The accuracy of the speech
///  recognition can be reduced if lossy codecs are used to capture or transmit
///  audio, particularly if background noise is present. Lossy codecs include
///  `MULAW`, `AMR`, `AMR_WB`, `OGG_OPUS`, `SPEEX_WITH_HEADER_BYTE`, `MP3`,
///  and `WEBM_OPUS`.
///
///  The `FLAC` and `WAV` audio file formats include a header that describes the
///  included audio content. You can request recognition for `WAV` files that
///  contain either `LINEAR16` or `MULAW` encoded audio.
///  If you send `FLAC` or `WAV` audio file format in
///  your request, you do not need to specify an `AudioEncoding`; the audio
///  encoding format is determined from the file header. If you specify
///  an `AudioEncoding` when you send  send `FLAC` or `WAV` audio, the
///  encoding configuration must match the encoding described in the audio
///  header; otherwise the request returns an
///  [google.rpc.Code.INVALID_ARGUMENT][google.rpc.Code.INVALID_ARGUMENT] error
///  code.
class RecognitionConfig_AudioEncoding extends $pb.ProtobufEnum {
  static const RecognitionConfig_AudioEncoding ENCODING_UNSPECIFIED =
      RecognitionConfig_AudioEncoding._(
          0, _omitEnumNames ? '' : 'ENCODING_UNSPECIFIED');
  static const RecognitionConfig_AudioEncoding LINEAR16 =
      RecognitionConfig_AudioEncoding._(1, _omitEnumNames ? '' : 'LINEAR16');
  static const RecognitionConfig_AudioEncoding FLAC =
      RecognitionConfig_AudioEncoding._(2, _omitEnumNames ? '' : 'FLAC');
  static const RecognitionConfig_AudioEncoding MULAW =
      RecognitionConfig_AudioEncoding._(3, _omitEnumNames ? '' : 'MULAW');
  static const RecognitionConfig_AudioEncoding AMR =
      RecognitionConfig_AudioEncoding._(4, _omitEnumNames ? '' : 'AMR');
  static const RecognitionConfig_AudioEncoding AMR_WB =
      RecognitionConfig_AudioEncoding._(5, _omitEnumNames ? '' : 'AMR_WB');
  static const RecognitionConfig_AudioEncoding OGG_OPUS =
      RecognitionConfig_AudioEncoding._(6, _omitEnumNames ? '' : 'OGG_OPUS');
  static const RecognitionConfig_AudioEncoding SPEEX_WITH_HEADER_BYTE =
      RecognitionConfig_AudioEncoding._(
          7, _omitEnumNames ? '' : 'SPEEX_WITH_HEADER_BYTE');
  static const RecognitionConfig_AudioEncoding MP3 =
      RecognitionConfig_AudioEncoding._(8, _omitEnumNames ? '' : 'MP3');
  static const RecognitionConfig_AudioEncoding WEBM_OPUS =
      RecognitionConfig_AudioEncoding._(9, _omitEnumNames ? '' : 'WEBM_OPUS');

  static const $core.List<RecognitionConfig_AudioEncoding> values =
      <RecognitionConfig_AudioEncoding>[
    ENCODING_UNSPECIFIED,
    LINEAR16,
    FLAC,
    MULAW,
    AMR,
    AMR_WB,
    OGG_OPUS,
    SPEEX_WITH_HEADER_BYTE,
    MP3,
    WEBM_OPUS,
  ];

  static final $core.Map<$core.int, RecognitionConfig_AudioEncoding> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static RecognitionConfig_AudioEncoding? valueOf($core.int value) =>
      _byValue[value];

  const RecognitionConfig_AudioEncoding._($core.int v, $core.String n)
      : super(v, n);
}

/// Use case categories that the audio recognition request can be described
/// by.
class RecognitionMetadata_InteractionType extends $pb.ProtobufEnum {
  static const RecognitionMetadata_InteractionType
      INTERACTION_TYPE_UNSPECIFIED = RecognitionMetadata_InteractionType._(
          0, _omitEnumNames ? '' : 'INTERACTION_TYPE_UNSPECIFIED');
  static const RecognitionMetadata_InteractionType DISCUSSION =
      RecognitionMetadata_InteractionType._(
          1, _omitEnumNames ? '' : 'DISCUSSION');
  static const RecognitionMetadata_InteractionType PRESENTATION =
      RecognitionMetadata_InteractionType._(
          2, _omitEnumNames ? '' : 'PRESENTATION');
  static const RecognitionMetadata_InteractionType PHONE_CALL =
      RecognitionMetadata_InteractionType._(
          3, _omitEnumNames ? '' : 'PHONE_CALL');
  static const RecognitionMetadata_InteractionType VOICEMAIL =
      RecognitionMetadata_InteractionType._(
          4, _omitEnumNames ? '' : 'VOICEMAIL');
  static const RecognitionMetadata_InteractionType PROFESSIONALLY_PRODUCED =
      RecognitionMetadata_InteractionType._(
          5, _omitEnumNames ? '' : 'PROFESSIONALLY_PRODUCED');
  static const RecognitionMetadata_InteractionType VOICE_SEARCH =
      RecognitionMetadata_InteractionType._(
          6, _omitEnumNames ? '' : 'VOICE_SEARCH');
  static const RecognitionMetadata_InteractionType VOICE_COMMAND =
      RecognitionMetadata_InteractionType._(
          7, _omitEnumNames ? '' : 'VOICE_COMMAND');
  static const RecognitionMetadata_InteractionType DICTATION =
      RecognitionMetadata_InteractionType._(
          8, _omitEnumNames ? '' : 'DICTATION');

  static const $core.List<RecognitionMetadata_InteractionType> values =
      <RecognitionMetadata_InteractionType>[
    INTERACTION_TYPE_UNSPECIFIED,
    DISCUSSION,
    PRESENTATION,
    PHONE_CALL,
    VOICEMAIL,
    PROFESSIONALLY_PRODUCED,
    VOICE_SEARCH,
    VOICE_COMMAND,
    DICTATION,
  ];

  static final $core.Map<$core.int, RecognitionMetadata_InteractionType>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static RecognitionMetadata_InteractionType? valueOf($core.int value) =>
      _byValue[value];

  const RecognitionMetadata_InteractionType._($core.int v, $core.String n)
      : super(v, n);
}

/// Enumerates the types of capture settings describing an audio file.
class RecognitionMetadata_MicrophoneDistance extends $pb.ProtobufEnum {
  static const RecognitionMetadata_MicrophoneDistance
      MICROPHONE_DISTANCE_UNSPECIFIED =
      RecognitionMetadata_MicrophoneDistance._(
          0, _omitEnumNames ? '' : 'MICROPHONE_DISTANCE_UNSPECIFIED');
  static const RecognitionMetadata_MicrophoneDistance NEARFIELD =
      RecognitionMetadata_MicrophoneDistance._(
          1, _omitEnumNames ? '' : 'NEARFIELD');
  static const RecognitionMetadata_MicrophoneDistance MIDFIELD =
      RecognitionMetadata_MicrophoneDistance._(
          2, _omitEnumNames ? '' : 'MIDFIELD');
  static const RecognitionMetadata_MicrophoneDistance FARFIELD =
      RecognitionMetadata_MicrophoneDistance._(
          3, _omitEnumNames ? '' : 'FARFIELD');

  static const $core.List<RecognitionMetadata_MicrophoneDistance> values =
      <RecognitionMetadata_MicrophoneDistance>[
    MICROPHONE_DISTANCE_UNSPECIFIED,
    NEARFIELD,
    MIDFIELD,
    FARFIELD,
  ];

  static final $core.Map<$core.int, RecognitionMetadata_MicrophoneDistance>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static RecognitionMetadata_MicrophoneDistance? valueOf($core.int value) =>
      _byValue[value];

  const RecognitionMetadata_MicrophoneDistance._($core.int v, $core.String n)
      : super(v, n);
}

/// The original media the speech was recorded on.
class RecognitionMetadata_OriginalMediaType extends $pb.ProtobufEnum {
  static const RecognitionMetadata_OriginalMediaType
      ORIGINAL_MEDIA_TYPE_UNSPECIFIED = RecognitionMetadata_OriginalMediaType._(
          0, _omitEnumNames ? '' : 'ORIGINAL_MEDIA_TYPE_UNSPECIFIED');
  static const RecognitionMetadata_OriginalMediaType AUDIO =
      RecognitionMetadata_OriginalMediaType._(1, _omitEnumNames ? '' : 'AUDIO');
  static const RecognitionMetadata_OriginalMediaType VIDEO =
      RecognitionMetadata_OriginalMediaType._(2, _omitEnumNames ? '' : 'VIDEO');

  static const $core.List<RecognitionMetadata_OriginalMediaType> values =
      <RecognitionMetadata_OriginalMediaType>[
    ORIGINAL_MEDIA_TYPE_UNSPECIFIED,
    AUDIO,
    VIDEO,
  ];

  static final $core.Map<$core.int, RecognitionMetadata_OriginalMediaType>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static RecognitionMetadata_OriginalMediaType? valueOf($core.int value) =>
      _byValue[value];

  const RecognitionMetadata_OriginalMediaType._($core.int v, $core.String n)
      : super(v, n);
}

/// The type of device the speech was recorded with.
class RecognitionMetadata_RecordingDeviceType extends $pb.ProtobufEnum {
  static const RecognitionMetadata_RecordingDeviceType
      RECORDING_DEVICE_TYPE_UNSPECIFIED =
      RecognitionMetadata_RecordingDeviceType._(
          0, _omitEnumNames ? '' : 'RECORDING_DEVICE_TYPE_UNSPECIFIED');
  static const RecognitionMetadata_RecordingDeviceType SMARTPHONE =
      RecognitionMetadata_RecordingDeviceType._(
          1, _omitEnumNames ? '' : 'SMARTPHONE');
  static const RecognitionMetadata_RecordingDeviceType PC =
      RecognitionMetadata_RecordingDeviceType._(2, _omitEnumNames ? '' : 'PC');
  static const RecognitionMetadata_RecordingDeviceType PHONE_LINE =
      RecognitionMetadata_RecordingDeviceType._(
          3, _omitEnumNames ? '' : 'PHONE_LINE');
  static const RecognitionMetadata_RecordingDeviceType VEHICLE =
      RecognitionMetadata_RecordingDeviceType._(
          4, _omitEnumNames ? '' : 'VEHICLE');
  static const RecognitionMetadata_RecordingDeviceType OTHER_OUTDOOR_DEVICE =
      RecognitionMetadata_RecordingDeviceType._(
          5, _omitEnumNames ? '' : 'OTHER_OUTDOOR_DEVICE');
  static const RecognitionMetadata_RecordingDeviceType OTHER_INDOOR_DEVICE =
      RecognitionMetadata_RecordingDeviceType._(
          6, _omitEnumNames ? '' : 'OTHER_INDOOR_DEVICE');

  static const $core.List<RecognitionMetadata_RecordingDeviceType> values =
      <RecognitionMetadata_RecordingDeviceType>[
    RECORDING_DEVICE_TYPE_UNSPECIFIED,
    SMARTPHONE,
    PC,
    PHONE_LINE,
    VEHICLE,
    OTHER_OUTDOOR_DEVICE,
    OTHER_INDOOR_DEVICE,
  ];

  static final $core.Map<$core.int, RecognitionMetadata_RecordingDeviceType>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static RecognitionMetadata_RecordingDeviceType? valueOf($core.int value) =>
      _byValue[value];

  const RecognitionMetadata_RecordingDeviceType._($core.int v, $core.String n)
      : super(v, n);
}

/// Indicates the type of speech event.
class StreamingRecognizeResponse_SpeechEventType extends $pb.ProtobufEnum {
  static const StreamingRecognizeResponse_SpeechEventType
      SPEECH_EVENT_UNSPECIFIED = StreamingRecognizeResponse_SpeechEventType._(
          0, _omitEnumNames ? '' : 'SPEECH_EVENT_UNSPECIFIED');
  static const StreamingRecognizeResponse_SpeechEventType
      END_OF_SINGLE_UTTERANCE = StreamingRecognizeResponse_SpeechEventType._(
          1, _omitEnumNames ? '' : 'END_OF_SINGLE_UTTERANCE');
  static const StreamingRecognizeResponse_SpeechEventType
      SPEECH_ACTIVITY_BEGIN = StreamingRecognizeResponse_SpeechEventType._(
          2, _omitEnumNames ? '' : 'SPEECH_ACTIVITY_BEGIN');
  static const StreamingRecognizeResponse_SpeechEventType SPEECH_ACTIVITY_END =
      StreamingRecognizeResponse_SpeechEventType._(
          3, _omitEnumNames ? '' : 'SPEECH_ACTIVITY_END');
  static const StreamingRecognizeResponse_SpeechEventType
      SPEECH_ACTIVITY_TIMEOUT = StreamingRecognizeResponse_SpeechEventType._(
          4, _omitEnumNames ? '' : 'SPEECH_ACTIVITY_TIMEOUT');

  static const $core.List<StreamingRecognizeResponse_SpeechEventType> values =
      <StreamingRecognizeResponse_SpeechEventType>[
    SPEECH_EVENT_UNSPECIFIED,
    END_OF_SINGLE_UTTERANCE,
    SPEECH_ACTIVITY_BEGIN,
    SPEECH_ACTIVITY_END,
    SPEECH_ACTIVITY_TIMEOUT,
  ];

  static final $core.Map<$core.int, StreamingRecognizeResponse_SpeechEventType>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static StreamingRecognizeResponse_SpeechEventType? valueOf($core.int value) =>
      _byValue[value];

  const StreamingRecognizeResponse_SpeechEventType._(
      $core.int v, $core.String n)
      : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
