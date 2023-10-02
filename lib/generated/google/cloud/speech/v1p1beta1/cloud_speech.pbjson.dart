//
//  Generated code. Do not modify.
//  source: google/cloud/speech/v1p1beta1/cloud_speech.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use recognizeRequestDescriptor instead')
const RecognizeRequest$json = {
  '1': 'RecognizeRequest',
  '2': [
    {
      '1': 'config',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.RecognitionConfig',
      '8': {},
      '10': 'config'
    },
    {
      '1': 'audio',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.RecognitionAudio',
      '8': {},
      '10': 'audio'
    },
  ],
};

/// Descriptor for `RecognizeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognizeRequestDescriptor = $convert.base64Decode(
    'ChBSZWNvZ25pemVSZXF1ZXN0Ek4KBmNvbmZpZxgBIAEoCzIwLmdvb2dsZS5jbG91ZC5zcGVlY2'
    'gudjFwMWJldGExLlJlY29nbml0aW9uQ29uZmlnQgTiQQECUgZjb25maWcSSwoFYXVkaW8YAiAB'
    'KAsyLy5nb29nbGUuY2xvdWQuc3BlZWNoLnYxcDFiZXRhMS5SZWNvZ25pdGlvbkF1ZGlvQgTiQQ'
    'ECUgVhdWRpbw==');

@$core.Deprecated('Use longRunningRecognizeRequestDescriptor instead')
const LongRunningRecognizeRequest$json = {
  '1': 'LongRunningRecognizeRequest',
  '2': [
    {
      '1': 'config',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.RecognitionConfig',
      '8': {},
      '10': 'config'
    },
    {
      '1': 'audio',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.RecognitionAudio',
      '8': {},
      '10': 'audio'
    },
    {
      '1': 'output_config',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.TranscriptOutputConfig',
      '8': {},
      '10': 'outputConfig'
    },
  ],
};

/// Descriptor for `LongRunningRecognizeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List longRunningRecognizeRequestDescriptor = $convert.base64Decode(
    'ChtMb25nUnVubmluZ1JlY29nbml6ZVJlcXVlc3QSTgoGY29uZmlnGAEgASgLMjAuZ29vZ2xlLm'
    'Nsb3VkLnNwZWVjaC52MXAxYmV0YTEuUmVjb2duaXRpb25Db25maWdCBOJBAQJSBmNvbmZpZxJL'
    'CgVhdWRpbxgCIAEoCzIvLmdvb2dsZS5jbG91ZC5zcGVlY2gudjFwMWJldGExLlJlY29nbml0aW'
    '9uQXVkaW9CBOJBAQJSBWF1ZGlvEmAKDW91dHB1dF9jb25maWcYBCABKAsyNS5nb29nbGUuY2xv'
    'dWQuc3BlZWNoLnYxcDFiZXRhMS5UcmFuc2NyaXB0T3V0cHV0Q29uZmlnQgTiQQEBUgxvdXRwdX'
    'RDb25maWc=');

@$core.Deprecated('Use transcriptOutputConfigDescriptor instead')
const TranscriptOutputConfig$json = {
  '1': 'TranscriptOutputConfig',
  '2': [
    {'1': 'gcs_uri', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'gcsUri'},
  ],
  '8': [
    {'1': 'output_type'},
  ],
};

/// Descriptor for `TranscriptOutputConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transcriptOutputConfigDescriptor =
    $convert.base64Decode(
        'ChZUcmFuc2NyaXB0T3V0cHV0Q29uZmlnEhkKB2djc191cmkYASABKAlIAFIGZ2NzVXJpQg0KC2'
        '91dHB1dF90eXBl');

@$core.Deprecated('Use streamingRecognizeRequestDescriptor instead')
const StreamingRecognizeRequest$json = {
  '1': 'StreamingRecognizeRequest',
  '2': [
    {
      '1': 'streaming_config',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.StreamingRecognitionConfig',
      '9': 0,
      '10': 'streamingConfig'
    },
    {
      '1': 'audio_content',
      '3': 2,
      '4': 1,
      '5': 12,
      '9': 0,
      '10': 'audioContent'
    },
  ],
  '8': [
    {'1': 'streaming_request'},
  ],
};

/// Descriptor for `StreamingRecognizeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamingRecognizeRequestDescriptor = $convert.base64Decode(
    'ChlTdHJlYW1pbmdSZWNvZ25pemVSZXF1ZXN0EmYKEHN0cmVhbWluZ19jb25maWcYASABKAsyOS'
    '5nb29nbGUuY2xvdWQuc3BlZWNoLnYxcDFiZXRhMS5TdHJlYW1pbmdSZWNvZ25pdGlvbkNvbmZp'
    'Z0gAUg9zdHJlYW1pbmdDb25maWcSJQoNYXVkaW9fY29udGVudBgCIAEoDEgAUgxhdWRpb0Nvbn'
    'RlbnRCEwoRc3RyZWFtaW5nX3JlcXVlc3Q=');

@$core.Deprecated('Use streamingRecognitionConfigDescriptor instead')
const StreamingRecognitionConfig$json = {
  '1': 'StreamingRecognitionConfig',
  '2': [
    {
      '1': 'config',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.RecognitionConfig',
      '8': {},
      '10': 'config'
    },
    {'1': 'single_utterance', '3': 2, '4': 1, '5': 8, '10': 'singleUtterance'},
    {'1': 'interim_results', '3': 3, '4': 1, '5': 8, '10': 'interimResults'},
    {
      '1': 'enable_voice_activity_events',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'enableVoiceActivityEvents'
    },
    {
      '1': 'voice_activity_timeout',
      '3': 6,
      '4': 1,
      '5': 11,
      '6':
          '.google.cloud.speech.v1p1beta1.StreamingRecognitionConfig.VoiceActivityTimeout',
      '10': 'voiceActivityTimeout'
    },
  ],
  '3': [StreamingRecognitionConfig_VoiceActivityTimeout$json],
};

@$core.Deprecated('Use streamingRecognitionConfigDescriptor instead')
const StreamingRecognitionConfig_VoiceActivityTimeout$json = {
  '1': 'VoiceActivityTimeout',
  '2': [
    {
      '1': 'speech_start_timeout',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'speechStartTimeout'
    },
    {
      '1': 'speech_end_timeout',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'speechEndTimeout'
    },
  ],
};

/// Descriptor for `StreamingRecognitionConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamingRecognitionConfigDescriptor = $convert.base64Decode(
    'ChpTdHJlYW1pbmdSZWNvZ25pdGlvbkNvbmZpZxJOCgZjb25maWcYASABKAsyMC5nb29nbGUuY2'
    'xvdWQuc3BlZWNoLnYxcDFiZXRhMS5SZWNvZ25pdGlvbkNvbmZpZ0IE4kEBAlIGY29uZmlnEikK'
    'EHNpbmdsZV91dHRlcmFuY2UYAiABKAhSD3NpbmdsZVV0dGVyYW5jZRInCg9pbnRlcmltX3Jlc3'
    'VsdHMYAyABKAhSDmludGVyaW1SZXN1bHRzEj8KHGVuYWJsZV92b2ljZV9hY3Rpdml0eV9ldmVu'
    'dHMYBSABKAhSGWVuYWJsZVZvaWNlQWN0aXZpdHlFdmVudHMShAEKFnZvaWNlX2FjdGl2aXR5X3'
    'RpbWVvdXQYBiABKAsyTi5nb29nbGUuY2xvdWQuc3BlZWNoLnYxcDFiZXRhMS5TdHJlYW1pbmdS'
    'ZWNvZ25pdGlvbkNvbmZpZy5Wb2ljZUFjdGl2aXR5VGltZW91dFIUdm9pY2VBY3Rpdml0eVRpbW'
    'VvdXQarAEKFFZvaWNlQWN0aXZpdHlUaW1lb3V0EksKFHNwZWVjaF9zdGFydF90aW1lb3V0GAEg'
    'ASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uUhJzcGVlY2hTdGFydFRpbWVvdXQSRwoSc3'
    'BlZWNoX2VuZF90aW1lb3V0GAIgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uUhBzcGVl'
    'Y2hFbmRUaW1lb3V0');

@$core.Deprecated('Use recognitionConfigDescriptor instead')
const RecognitionConfig$json = {
  '1': 'RecognitionConfig',
  '2': [
    {
      '1': 'encoding',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.google.cloud.speech.v1p1beta1.RecognitionConfig.AudioEncoding',
      '10': 'encoding'
    },
    {'1': 'sample_rate_hertz', '3': 2, '4': 1, '5': 5, '10': 'sampleRateHertz'},
    {
      '1': 'audio_channel_count',
      '3': 7,
      '4': 1,
      '5': 5,
      '10': 'audioChannelCount'
    },
    {
      '1': 'enable_separate_recognition_per_channel',
      '3': 12,
      '4': 1,
      '5': 8,
      '10': 'enableSeparateRecognitionPerChannel'
    },
    {
      '1': 'language_code',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'languageCode'
    },
    {
      '1': 'alternative_language_codes',
      '3': 18,
      '4': 3,
      '5': 9,
      '10': 'alternativeLanguageCodes'
    },
    {'1': 'max_alternatives', '3': 4, '4': 1, '5': 5, '10': 'maxAlternatives'},
    {'1': 'profanity_filter', '3': 5, '4': 1, '5': 8, '10': 'profanityFilter'},
    {
      '1': 'adaptation',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.SpeechAdaptation',
      '10': 'adaptation'
    },
    {
      '1': 'transcript_normalization',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.TranscriptNormalization',
      '10': 'transcriptNormalization'
    },
    {
      '1': 'speech_contexts',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.SpeechContext',
      '10': 'speechContexts'
    },
    {
      '1': 'enable_word_time_offsets',
      '3': 8,
      '4': 1,
      '5': 8,
      '10': 'enableWordTimeOffsets'
    },
    {
      '1': 'enable_word_confidence',
      '3': 15,
      '4': 1,
      '5': 8,
      '10': 'enableWordConfidence'
    },
    {
      '1': 'enable_automatic_punctuation',
      '3': 11,
      '4': 1,
      '5': 8,
      '10': 'enableAutomaticPunctuation'
    },
    {
      '1': 'enable_spoken_punctuation',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'enableSpokenPunctuation'
    },
    {
      '1': 'enable_spoken_emojis',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'enableSpokenEmojis'
    },
    {
      '1': 'enable_speaker_diarization',
      '3': 16,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'enableSpeakerDiarization',
    },
    {
      '1': 'diarization_speaker_count',
      '3': 17,
      '4': 1,
      '5': 5,
      '8': {'3': true},
      '10': 'diarizationSpeakerCount',
    },
    {
      '1': 'diarization_config',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.SpeakerDiarizationConfig',
      '10': 'diarizationConfig'
    },
    {
      '1': 'metadata',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.RecognitionMetadata',
      '10': 'metadata'
    },
    {'1': 'model', '3': 13, '4': 1, '5': 9, '10': 'model'},
    {'1': 'use_enhanced', '3': 14, '4': 1, '5': 8, '10': 'useEnhanced'},
  ],
  '4': [RecognitionConfig_AudioEncoding$json],
};

@$core.Deprecated('Use recognitionConfigDescriptor instead')
const RecognitionConfig_AudioEncoding$json = {
  '1': 'AudioEncoding',
  '2': [
    {'1': 'ENCODING_UNSPECIFIED', '2': 0},
    {'1': 'LINEAR16', '2': 1},
    {'1': 'FLAC', '2': 2},
    {'1': 'MULAW', '2': 3},
    {'1': 'AMR', '2': 4},
    {'1': 'AMR_WB', '2': 5},
    {'1': 'OGG_OPUS', '2': 6},
    {'1': 'SPEEX_WITH_HEADER_BYTE', '2': 7},
    {'1': 'MP3', '2': 8},
    {'1': 'WEBM_OPUS', '2': 9},
  ],
};

/// Descriptor for `RecognitionConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognitionConfigDescriptor = $convert.base64Decode(
    'ChFSZWNvZ25pdGlvbkNvbmZpZxJaCghlbmNvZGluZxgBIAEoDjI+Lmdvb2dsZS5jbG91ZC5zcG'
    'VlY2gudjFwMWJldGExLlJlY29nbml0aW9uQ29uZmlnLkF1ZGlvRW5jb2RpbmdSCGVuY29kaW5n'
    'EioKEXNhbXBsZV9yYXRlX2hlcnR6GAIgASgFUg9zYW1wbGVSYXRlSGVydHoSLgoTYXVkaW9fY2'
    'hhbm5lbF9jb3VudBgHIAEoBVIRYXVkaW9DaGFubmVsQ291bnQSVAonZW5hYmxlX3NlcGFyYXRl'
    'X3JlY29nbml0aW9uX3Blcl9jaGFubmVsGAwgASgIUiNlbmFibGVTZXBhcmF0ZVJlY29nbml0aW'
    '9uUGVyQ2hhbm5lbBIpCg1sYW5ndWFnZV9jb2RlGAMgASgJQgTiQQECUgxsYW5ndWFnZUNvZGUS'
    'PAoaYWx0ZXJuYXRpdmVfbGFuZ3VhZ2VfY29kZXMYEiADKAlSGGFsdGVybmF0aXZlTGFuZ3VhZ2'
    'VDb2RlcxIpChBtYXhfYWx0ZXJuYXRpdmVzGAQgASgFUg9tYXhBbHRlcm5hdGl2ZXMSKQoQcHJv'
    'ZmFuaXR5X2ZpbHRlchgFIAEoCFIPcHJvZmFuaXR5RmlsdGVyEk8KCmFkYXB0YXRpb24YFCABKA'
    'syLy5nb29nbGUuY2xvdWQuc3BlZWNoLnYxcDFiZXRhMS5TcGVlY2hBZGFwdGF0aW9uUgphZGFw'
    'dGF0aW9uEnEKGHRyYW5zY3JpcHRfbm9ybWFsaXphdGlvbhgYIAEoCzI2Lmdvb2dsZS5jbG91ZC'
    '5zcGVlY2gudjFwMWJldGExLlRyYW5zY3JpcHROb3JtYWxpemF0aW9uUhd0cmFuc2NyaXB0Tm9y'
    'bWFsaXphdGlvbhJVCg9zcGVlY2hfY29udGV4dHMYBiADKAsyLC5nb29nbGUuY2xvdWQuc3BlZW'
    'NoLnYxcDFiZXRhMS5TcGVlY2hDb250ZXh0Ug5zcGVlY2hDb250ZXh0cxI3ChhlbmFibGVfd29y'
    'ZF90aW1lX29mZnNldHMYCCABKAhSFWVuYWJsZVdvcmRUaW1lT2Zmc2V0cxI0ChZlbmFibGVfd2'
    '9yZF9jb25maWRlbmNlGA8gASgIUhRlbmFibGVXb3JkQ29uZmlkZW5jZRJAChxlbmFibGVfYXV0'
    'b21hdGljX3B1bmN0dWF0aW9uGAsgASgIUhplbmFibGVBdXRvbWF0aWNQdW5jdHVhdGlvbhJWCh'
    'llbmFibGVfc3Bva2VuX3B1bmN0dWF0aW9uGBYgASgLMhouZ29vZ2xlLnByb3RvYnVmLkJvb2xW'
    'YWx1ZVIXZW5hYmxlU3Bva2VuUHVuY3R1YXRpb24STAoUZW5hYmxlX3Nwb2tlbl9lbW9qaXMYFy'
    'ABKAsyGi5nb29nbGUucHJvdG9idWYuQm9vbFZhbHVlUhJlbmFibGVTcG9rZW5FbW9qaXMSQAoa'
    'ZW5hYmxlX3NwZWFrZXJfZGlhcml6YXRpb24YECABKAhCAhgBUhhlbmFibGVTcGVha2VyRGlhcm'
    'l6YXRpb24SPgoZZGlhcml6YXRpb25fc3BlYWtlcl9jb3VudBgRIAEoBUICGAFSF2RpYXJpemF0'
    'aW9uU3BlYWtlckNvdW50EmYKEmRpYXJpemF0aW9uX2NvbmZpZxgTIAEoCzI3Lmdvb2dsZS5jbG'
    '91ZC5zcGVlY2gudjFwMWJldGExLlNwZWFrZXJEaWFyaXphdGlvbkNvbmZpZ1IRZGlhcml6YXRp'
    'b25Db25maWcSTgoIbWV0YWRhdGEYCSABKAsyMi5nb29nbGUuY2xvdWQuc3BlZWNoLnYxcDFiZX'
    'RhMS5SZWNvZ25pdGlvbk1ldGFkYXRhUghtZXRhZGF0YRIUCgVtb2RlbBgNIAEoCVIFbW9kZWwS'
    'IQoMdXNlX2VuaGFuY2VkGA4gASgIUgt1c2VFbmhhbmNlZCKjAQoNQXVkaW9FbmNvZGluZxIYCh'
    'RFTkNPRElOR19VTlNQRUNJRklFRBAAEgwKCExJTkVBUjE2EAESCAoERkxBQxACEgkKBU1VTEFX'
    'EAMSBwoDQU1SEAQSCgoGQU1SX1dCEAUSDAoIT0dHX09QVVMQBhIaChZTUEVFWF9XSVRIX0hFQU'
    'RFUl9CWVRFEAcSBwoDTVAzEAgSDQoJV0VCTV9PUFVTEAk=');

@$core.Deprecated('Use speakerDiarizationConfigDescriptor instead')
const SpeakerDiarizationConfig$json = {
  '1': 'SpeakerDiarizationConfig',
  '2': [
    {
      '1': 'enable_speaker_diarization',
      '3': 1,
      '4': 1,
      '5': 8,
      '10': 'enableSpeakerDiarization'
    },
    {'1': 'min_speaker_count', '3': 2, '4': 1, '5': 5, '10': 'minSpeakerCount'},
    {'1': 'max_speaker_count', '3': 3, '4': 1, '5': 5, '10': 'maxSpeakerCount'},
    {
      '1': 'speaker_tag',
      '3': 5,
      '4': 1,
      '5': 5,
      '8': {'3': true},
      '10': 'speakerTag',
    },
  ],
};

/// Descriptor for `SpeakerDiarizationConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speakerDiarizationConfigDescriptor = $convert.base64Decode(
    'ChhTcGVha2VyRGlhcml6YXRpb25Db25maWcSPAoaZW5hYmxlX3NwZWFrZXJfZGlhcml6YXRpb2'
    '4YASABKAhSGGVuYWJsZVNwZWFrZXJEaWFyaXphdGlvbhIqChFtaW5fc3BlYWtlcl9jb3VudBgC'
    'IAEoBVIPbWluU3BlYWtlckNvdW50EioKEW1heF9zcGVha2VyX2NvdW50GAMgASgFUg9tYXhTcG'
    'Vha2VyQ291bnQSJwoLc3BlYWtlcl90YWcYBSABKAVCBhgB4kEBA1IKc3BlYWtlclRhZw==');

@$core.Deprecated('Use recognitionMetadataDescriptor instead')
const RecognitionMetadata$json = {
  '1': 'RecognitionMetadata',
  '2': [
    {
      '1': 'interaction_type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.google.cloud.speech.v1p1beta1.RecognitionMetadata.InteractionType',
      '10': 'interactionType'
    },
    {
      '1': 'industry_naics_code_of_audio',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'industryNaicsCodeOfAudio'
    },
    {
      '1': 'microphone_distance',
      '3': 4,
      '4': 1,
      '5': 14,
      '6':
          '.google.cloud.speech.v1p1beta1.RecognitionMetadata.MicrophoneDistance',
      '10': 'microphoneDistance'
    },
    {
      '1': 'original_media_type',
      '3': 5,
      '4': 1,
      '5': 14,
      '6':
          '.google.cloud.speech.v1p1beta1.RecognitionMetadata.OriginalMediaType',
      '10': 'originalMediaType'
    },
    {
      '1': 'recording_device_type',
      '3': 6,
      '4': 1,
      '5': 14,
      '6':
          '.google.cloud.speech.v1p1beta1.RecognitionMetadata.RecordingDeviceType',
      '10': 'recordingDeviceType'
    },
    {
      '1': 'recording_device_name',
      '3': 7,
      '4': 1,
      '5': 9,
      '10': 'recordingDeviceName'
    },
    {
      '1': 'original_mime_type',
      '3': 8,
      '4': 1,
      '5': 9,
      '10': 'originalMimeType'
    },
    {
      '1': 'obfuscated_id',
      '3': 9,
      '4': 1,
      '5': 3,
      '8': {'3': true},
      '10': 'obfuscatedId',
    },
    {'1': 'audio_topic', '3': 10, '4': 1, '5': 9, '10': 'audioTopic'},
  ],
  '4': [
    RecognitionMetadata_InteractionType$json,
    RecognitionMetadata_MicrophoneDistance$json,
    RecognitionMetadata_OriginalMediaType$json,
    RecognitionMetadata_RecordingDeviceType$json
  ],
  '7': {'3': true},
};

@$core.Deprecated('Use recognitionMetadataDescriptor instead')
const RecognitionMetadata_InteractionType$json = {
  '1': 'InteractionType',
  '2': [
    {'1': 'INTERACTION_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'DISCUSSION', '2': 1},
    {'1': 'PRESENTATION', '2': 2},
    {'1': 'PHONE_CALL', '2': 3},
    {'1': 'VOICEMAIL', '2': 4},
    {'1': 'PROFESSIONALLY_PRODUCED', '2': 5},
    {'1': 'VOICE_SEARCH', '2': 6},
    {'1': 'VOICE_COMMAND', '2': 7},
    {'1': 'DICTATION', '2': 8},
  ],
};

@$core.Deprecated('Use recognitionMetadataDescriptor instead')
const RecognitionMetadata_MicrophoneDistance$json = {
  '1': 'MicrophoneDistance',
  '2': [
    {'1': 'MICROPHONE_DISTANCE_UNSPECIFIED', '2': 0},
    {'1': 'NEARFIELD', '2': 1},
    {'1': 'MIDFIELD', '2': 2},
    {'1': 'FARFIELD', '2': 3},
  ],
};

@$core.Deprecated('Use recognitionMetadataDescriptor instead')
const RecognitionMetadata_OriginalMediaType$json = {
  '1': 'OriginalMediaType',
  '2': [
    {'1': 'ORIGINAL_MEDIA_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'AUDIO', '2': 1},
    {'1': 'VIDEO', '2': 2},
  ],
};

@$core.Deprecated('Use recognitionMetadataDescriptor instead')
const RecognitionMetadata_RecordingDeviceType$json = {
  '1': 'RecordingDeviceType',
  '2': [
    {'1': 'RECORDING_DEVICE_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'SMARTPHONE', '2': 1},
    {'1': 'PC', '2': 2},
    {'1': 'PHONE_LINE', '2': 3},
    {'1': 'VEHICLE', '2': 4},
    {'1': 'OTHER_OUTDOOR_DEVICE', '2': 5},
    {'1': 'OTHER_INDOOR_DEVICE', '2': 6},
  ],
};

/// Descriptor for `RecognitionMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognitionMetadataDescriptor = $convert.base64Decode(
    'ChNSZWNvZ25pdGlvbk1ldGFkYXRhEm0KEGludGVyYWN0aW9uX3R5cGUYASABKA4yQi5nb29nbG'
    'UuY2xvdWQuc3BlZWNoLnYxcDFiZXRhMS5SZWNvZ25pdGlvbk1ldGFkYXRhLkludGVyYWN0aW9u'
    'VHlwZVIPaW50ZXJhY3Rpb25UeXBlEj4KHGluZHVzdHJ5X25haWNzX2NvZGVfb2ZfYXVkaW8YAy'
    'ABKA1SGGluZHVzdHJ5TmFpY3NDb2RlT2ZBdWRpbxJ2ChNtaWNyb3Bob25lX2Rpc3RhbmNlGAQg'
    'ASgOMkUuZ29vZ2xlLmNsb3VkLnNwZWVjaC52MXAxYmV0YTEuUmVjb2duaXRpb25NZXRhZGF0YS'
    '5NaWNyb3Bob25lRGlzdGFuY2VSEm1pY3JvcGhvbmVEaXN0YW5jZRJ0ChNvcmlnaW5hbF9tZWRp'
    'YV90eXBlGAUgASgOMkQuZ29vZ2xlLmNsb3VkLnNwZWVjaC52MXAxYmV0YTEuUmVjb2duaXRpb2'
    '5NZXRhZGF0YS5PcmlnaW5hbE1lZGlhVHlwZVIRb3JpZ2luYWxNZWRpYVR5cGUSegoVcmVjb3Jk'
    'aW5nX2RldmljZV90eXBlGAYgASgOMkYuZ29vZ2xlLmNsb3VkLnNwZWVjaC52MXAxYmV0YTEuUm'
    'Vjb2duaXRpb25NZXRhZGF0YS5SZWNvcmRpbmdEZXZpY2VUeXBlUhNyZWNvcmRpbmdEZXZpY2VU'
    'eXBlEjIKFXJlY29yZGluZ19kZXZpY2VfbmFtZRgHIAEoCVITcmVjb3JkaW5nRGV2aWNlTmFtZR'
    'IsChJvcmlnaW5hbF9taW1lX3R5cGUYCCABKAlSEG9yaWdpbmFsTWltZVR5cGUSJwoNb2JmdXNj'
    'YXRlZF9pZBgJIAEoA0ICGAFSDG9iZnVzY2F0ZWRJZBIfCgthdWRpb190b3BpYxgKIAEoCVIKYX'
    'VkaW9Ub3BpYyLFAQoPSW50ZXJhY3Rpb25UeXBlEiAKHElOVEVSQUNUSU9OX1RZUEVfVU5TUEVD'
    'SUZJRUQQABIOCgpESVNDVVNTSU9OEAESEAoMUFJFU0VOVEFUSU9OEAISDgoKUEhPTkVfQ0FMTB'
    'ADEg0KCVZPSUNFTUFJTBAEEhsKF1BST0ZFU1NJT05BTExZX1BST0RVQ0VEEAUSEAoMVk9JQ0Vf'
    'U0VBUkNIEAYSEQoNVk9JQ0VfQ09NTUFORBAHEg0KCURJQ1RBVElPThAIImQKEk1pY3JvcGhvbm'
    'VEaXN0YW5jZRIjCh9NSUNST1BIT05FX0RJU1RBTkNFX1VOU1BFQ0lGSUVEEAASDQoJTkVBUkZJ'
    'RUxEEAESDAoITUlERklFTEQQAhIMCghGQVJGSUVMRBADIk4KEU9yaWdpbmFsTWVkaWFUeXBlEi'
    'MKH09SSUdJTkFMX01FRElBX1RZUEVfVU5TUEVDSUZJRUQQABIJCgVBVURJTxABEgkKBVZJREVP'
    'EAIipAEKE1JlY29yZGluZ0RldmljZVR5cGUSJQohUkVDT1JESU5HX0RFVklDRV9UWVBFX1VOU1'
    'BFQ0lGSUVEEAASDgoKU01BUlRQSE9ORRABEgYKAlBDEAISDgoKUEhPTkVfTElORRADEgsKB1ZF'
    'SElDTEUQBBIYChRPVEhFUl9PVVRET09SX0RFVklDRRAFEhcKE09USEVSX0lORE9PUl9ERVZJQ0'
    'UQBjoCGAE=');

@$core.Deprecated('Use speechContextDescriptor instead')
const SpeechContext$json = {
  '1': 'SpeechContext',
  '2': [
    {'1': 'phrases', '3': 1, '4': 3, '5': 9, '10': 'phrases'},
    {'1': 'boost', '3': 4, '4': 1, '5': 2, '10': 'boost'},
  ],
};

/// Descriptor for `SpeechContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speechContextDescriptor = $convert.base64Decode(
    'Cg1TcGVlY2hDb250ZXh0EhgKB3BocmFzZXMYASADKAlSB3BocmFzZXMSFAoFYm9vc3QYBCABKA'
    'JSBWJvb3N0');

@$core.Deprecated('Use recognitionAudioDescriptor instead')
const RecognitionAudio$json = {
  '1': 'RecognitionAudio',
  '2': [
    {'1': 'content', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'content'},
    {'1': 'uri', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'uri'},
  ],
  '8': [
    {'1': 'audio_source'},
  ],
};

/// Descriptor for `RecognitionAudio`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognitionAudioDescriptor = $convert.base64Decode(
    'ChBSZWNvZ25pdGlvbkF1ZGlvEhoKB2NvbnRlbnQYASABKAxIAFIHY29udGVudBISCgN1cmkYAi'
    'ABKAlIAFIDdXJpQg4KDGF1ZGlvX3NvdXJjZQ==');

@$core.Deprecated('Use recognizeResponseDescriptor instead')
const RecognizeResponse$json = {
  '1': 'RecognizeResponse',
  '2': [
    {
      '1': 'results',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.SpeechRecognitionResult',
      '10': 'results'
    },
    {
      '1': 'total_billed_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'totalBilledTime'
    },
    {
      '1': 'speech_adaptation_info',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.SpeechAdaptationInfo',
      '10': 'speechAdaptationInfo'
    },
    {'1': 'request_id', '3': 8, '4': 1, '5': 3, '10': 'requestId'},
  ],
};

/// Descriptor for `RecognizeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognizeResponseDescriptor = $convert.base64Decode(
    'ChFSZWNvZ25pemVSZXNwb25zZRJQCgdyZXN1bHRzGAIgAygLMjYuZ29vZ2xlLmNsb3VkLnNwZW'
    'VjaC52MXAxYmV0YTEuU3BlZWNoUmVjb2duaXRpb25SZXN1bHRSB3Jlc3VsdHMSRQoRdG90YWxf'
    'YmlsbGVkX3RpbWUYAyABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SD3RvdGFsQmlsbG'
    'VkVGltZRJpChZzcGVlY2hfYWRhcHRhdGlvbl9pbmZvGAcgASgLMjMuZ29vZ2xlLmNsb3VkLnNw'
    'ZWVjaC52MXAxYmV0YTEuU3BlZWNoQWRhcHRhdGlvbkluZm9SFHNwZWVjaEFkYXB0YXRpb25Jbm'
    'ZvEh0KCnJlcXVlc3RfaWQYCCABKANSCXJlcXVlc3RJZA==');

@$core.Deprecated('Use longRunningRecognizeResponseDescriptor instead')
const LongRunningRecognizeResponse$json = {
  '1': 'LongRunningRecognizeResponse',
  '2': [
    {
      '1': 'results',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.SpeechRecognitionResult',
      '10': 'results'
    },
    {
      '1': 'total_billed_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'totalBilledTime'
    },
    {
      '1': 'output_config',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.TranscriptOutputConfig',
      '10': 'outputConfig'
    },
    {
      '1': 'output_error',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.rpc.Status',
      '10': 'outputError'
    },
    {
      '1': 'speech_adaptation_info',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.SpeechAdaptationInfo',
      '10': 'speechAdaptationInfo'
    },
    {'1': 'request_id', '3': 9, '4': 1, '5': 3, '10': 'requestId'},
  ],
};

/// Descriptor for `LongRunningRecognizeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List longRunningRecognizeResponseDescriptor = $convert.base64Decode(
    'ChxMb25nUnVubmluZ1JlY29nbml6ZVJlc3BvbnNlElAKB3Jlc3VsdHMYAiADKAsyNi5nb29nbG'
    'UuY2xvdWQuc3BlZWNoLnYxcDFiZXRhMS5TcGVlY2hSZWNvZ25pdGlvblJlc3VsdFIHcmVzdWx0'
    'cxJFChF0b3RhbF9iaWxsZWRfdGltZRgDIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvbl'
    'IPdG90YWxCaWxsZWRUaW1lEloKDW91dHB1dF9jb25maWcYBiABKAsyNS5nb29nbGUuY2xvdWQu'
    'c3BlZWNoLnYxcDFiZXRhMS5UcmFuc2NyaXB0T3V0cHV0Q29uZmlnUgxvdXRwdXRDb25maWcSNQ'
    'oMb3V0cHV0X2Vycm9yGAcgASgLMhIuZ29vZ2xlLnJwYy5TdGF0dXNSC291dHB1dEVycm9yEmkK'
    'FnNwZWVjaF9hZGFwdGF0aW9uX2luZm8YCCABKAsyMy5nb29nbGUuY2xvdWQuc3BlZWNoLnYxcD'
    'FiZXRhMS5TcGVlY2hBZGFwdGF0aW9uSW5mb1IUc3BlZWNoQWRhcHRhdGlvbkluZm8SHQoKcmVx'
    'dWVzdF9pZBgJIAEoA1IJcmVxdWVzdElk');

@$core.Deprecated('Use longRunningRecognizeMetadataDescriptor instead')
const LongRunningRecognizeMetadata$json = {
  '1': 'LongRunningRecognizeMetadata',
  '2': [
    {'1': 'progress_percent', '3': 1, '4': 1, '5': 5, '10': 'progressPercent'},
    {
      '1': 'start_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'startTime'
    },
    {
      '1': 'last_update_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'lastUpdateTime'
    },
    {'1': 'uri', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'uri'},
    {
      '1': 'output_config',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.TranscriptOutputConfig',
      '8': {},
      '10': 'outputConfig'
    },
  ],
};

/// Descriptor for `LongRunningRecognizeMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List longRunningRecognizeMetadataDescriptor = $convert.base64Decode(
    'ChxMb25nUnVubmluZ1JlY29nbml6ZU1ldGFkYXRhEikKEHByb2dyZXNzX3BlcmNlbnQYASABKA'
    'VSD3Byb2dyZXNzUGVyY2VudBI5CgpzdGFydF90aW1lGAIgASgLMhouZ29vZ2xlLnByb3RvYnVm'
    'LlRpbWVzdGFtcFIJc3RhcnRUaW1lEkQKEGxhc3RfdXBkYXRlX3RpbWUYAyABKAsyGi5nb29nbG'
    'UucHJvdG9idWYuVGltZXN0YW1wUg5sYXN0VXBkYXRlVGltZRIWCgN1cmkYBCABKAlCBOJBAQNS'
    'A3VyaRJgCg1vdXRwdXRfY29uZmlnGAUgASgLMjUuZ29vZ2xlLmNsb3VkLnNwZWVjaC52MXAxYm'
    'V0YTEuVHJhbnNjcmlwdE91dHB1dENvbmZpZ0IE4kEBA1IMb3V0cHV0Q29uZmln');

@$core.Deprecated('Use streamingRecognizeResponseDescriptor instead')
const StreamingRecognizeResponse$json = {
  '1': 'StreamingRecognizeResponse',
  '2': [
    {
      '1': 'error',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.rpc.Status',
      '10': 'error'
    },
    {
      '1': 'results',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.StreamingRecognitionResult',
      '10': 'results'
    },
    {
      '1': 'speech_event_type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6':
          '.google.cloud.speech.v1p1beta1.StreamingRecognizeResponse.SpeechEventType',
      '10': 'speechEventType'
    },
    {
      '1': 'speech_event_time',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'speechEventTime'
    },
    {
      '1': 'total_billed_time',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'totalBilledTime'
    },
    {
      '1': 'speech_adaptation_info',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.SpeechAdaptationInfo',
      '10': 'speechAdaptationInfo'
    },
    {'1': 'request_id', '3': 10, '4': 1, '5': 3, '10': 'requestId'},
  ],
  '4': [StreamingRecognizeResponse_SpeechEventType$json],
};

@$core.Deprecated('Use streamingRecognizeResponseDescriptor instead')
const StreamingRecognizeResponse_SpeechEventType$json = {
  '1': 'SpeechEventType',
  '2': [
    {'1': 'SPEECH_EVENT_UNSPECIFIED', '2': 0},
    {'1': 'END_OF_SINGLE_UTTERANCE', '2': 1},
    {'1': 'SPEECH_ACTIVITY_BEGIN', '2': 2},
    {'1': 'SPEECH_ACTIVITY_END', '2': 3},
    {'1': 'SPEECH_ACTIVITY_TIMEOUT', '2': 4},
  ],
};

/// Descriptor for `StreamingRecognizeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamingRecognizeResponseDescriptor = $convert.base64Decode(
    'ChpTdHJlYW1pbmdSZWNvZ25pemVSZXNwb25zZRIoCgVlcnJvchgBIAEoCzISLmdvb2dsZS5ycG'
    'MuU3RhdHVzUgVlcnJvchJTCgdyZXN1bHRzGAIgAygLMjkuZ29vZ2xlLmNsb3VkLnNwZWVjaC52'
    'MXAxYmV0YTEuU3RyZWFtaW5nUmVjb2duaXRpb25SZXN1bHRSB3Jlc3VsdHMSdQoRc3BlZWNoX2'
    'V2ZW50X3R5cGUYBCABKA4ySS5nb29nbGUuY2xvdWQuc3BlZWNoLnYxcDFiZXRhMS5TdHJlYW1p'
    'bmdSZWNvZ25pemVSZXNwb25zZS5TcGVlY2hFdmVudFR5cGVSD3NwZWVjaEV2ZW50VHlwZRJFCh'
    'FzcGVlY2hfZXZlbnRfdGltZRgIIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblIPc3Bl'
    'ZWNoRXZlbnRUaW1lEkUKEXRvdGFsX2JpbGxlZF90aW1lGAUgASgLMhkuZ29vZ2xlLnByb3RvYn'
    'VmLkR1cmF0aW9uUg90b3RhbEJpbGxlZFRpbWUSaQoWc3BlZWNoX2FkYXB0YXRpb25faW5mbxgJ'
    'IAEoCzIzLmdvb2dsZS5jbG91ZC5zcGVlY2gudjFwMWJldGExLlNwZWVjaEFkYXB0YXRpb25Jbm'
    'ZvUhRzcGVlY2hBZGFwdGF0aW9uSW5mbxIdCgpyZXF1ZXN0X2lkGAogASgDUglyZXF1ZXN0SWQi'
    'nQEKD1NwZWVjaEV2ZW50VHlwZRIcChhTUEVFQ0hfRVZFTlRfVU5TUEVDSUZJRUQQABIbChdFTk'
    'RfT0ZfU0lOR0xFX1VUVEVSQU5DRRABEhkKFVNQRUVDSF9BQ1RJVklUWV9CRUdJThACEhcKE1NQ'
    'RUVDSF9BQ1RJVklUWV9FTkQQAxIbChdTUEVFQ0hfQUNUSVZJVFlfVElNRU9VVBAE');

@$core.Deprecated('Use streamingRecognitionResultDescriptor instead')
const StreamingRecognitionResult$json = {
  '1': 'StreamingRecognitionResult',
  '2': [
    {
      '1': 'alternatives',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.SpeechRecognitionAlternative',
      '10': 'alternatives'
    },
    {'1': 'is_final', '3': 2, '4': 1, '5': 8, '10': 'isFinal'},
    {'1': 'stability', '3': 3, '4': 1, '5': 2, '10': 'stability'},
    {
      '1': 'result_end_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'resultEndTime'
    },
    {'1': 'channel_tag', '3': 5, '4': 1, '5': 5, '10': 'channelTag'},
    {
      '1': 'language_code',
      '3': 6,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'languageCode'
    },
  ],
};

/// Descriptor for `StreamingRecognitionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamingRecognitionResultDescriptor = $convert.base64Decode(
    'ChpTdHJlYW1pbmdSZWNvZ25pdGlvblJlc3VsdBJfCgxhbHRlcm5hdGl2ZXMYASADKAsyOy5nb2'
    '9nbGUuY2xvdWQuc3BlZWNoLnYxcDFiZXRhMS5TcGVlY2hSZWNvZ25pdGlvbkFsdGVybmF0aXZl'
    'UgxhbHRlcm5hdGl2ZXMSGQoIaXNfZmluYWwYAiABKAhSB2lzRmluYWwSHAoJc3RhYmlsaXR5GA'
    'MgASgCUglzdGFiaWxpdHkSQQoPcmVzdWx0X2VuZF90aW1lGAQgASgLMhkuZ29vZ2xlLnByb3Rv'
    'YnVmLkR1cmF0aW9uUg1yZXN1bHRFbmRUaW1lEh8KC2NoYW5uZWxfdGFnGAUgASgFUgpjaGFubm'
    'VsVGFnEikKDWxhbmd1YWdlX2NvZGUYBiABKAlCBOJBAQNSDGxhbmd1YWdlQ29kZQ==');

@$core.Deprecated('Use speechRecognitionResultDescriptor instead')
const SpeechRecognitionResult$json = {
  '1': 'SpeechRecognitionResult',
  '2': [
    {
      '1': 'alternatives',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.SpeechRecognitionAlternative',
      '10': 'alternatives'
    },
    {'1': 'channel_tag', '3': 2, '4': 1, '5': 5, '10': 'channelTag'},
    {
      '1': 'result_end_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'resultEndTime'
    },
    {
      '1': 'language_code',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'languageCode'
    },
  ],
};

/// Descriptor for `SpeechRecognitionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speechRecognitionResultDescriptor = $convert.base64Decode(
    'ChdTcGVlY2hSZWNvZ25pdGlvblJlc3VsdBJfCgxhbHRlcm5hdGl2ZXMYASADKAsyOy5nb29nbG'
    'UuY2xvdWQuc3BlZWNoLnYxcDFiZXRhMS5TcGVlY2hSZWNvZ25pdGlvbkFsdGVybmF0aXZlUgxh'
    'bHRlcm5hdGl2ZXMSHwoLY2hhbm5lbF90YWcYAiABKAVSCmNoYW5uZWxUYWcSQQoPcmVzdWx0X2'
    'VuZF90aW1lGAQgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uUg1yZXN1bHRFbmRUaW1l'
    'EikKDWxhbmd1YWdlX2NvZGUYBSABKAlCBOJBAQNSDGxhbmd1YWdlQ29kZQ==');

@$core.Deprecated('Use speechRecognitionAlternativeDescriptor instead')
const SpeechRecognitionAlternative$json = {
  '1': 'SpeechRecognitionAlternative',
  '2': [
    {'1': 'transcript', '3': 1, '4': 1, '5': 9, '10': 'transcript'},
    {'1': 'confidence', '3': 2, '4': 1, '5': 2, '10': 'confidence'},
    {
      '1': 'words',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.WordInfo',
      '10': 'words'
    },
  ],
};

/// Descriptor for `SpeechRecognitionAlternative`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speechRecognitionAlternativeDescriptor =
    $convert.base64Decode(
        'ChxTcGVlY2hSZWNvZ25pdGlvbkFsdGVybmF0aXZlEh4KCnRyYW5zY3JpcHQYASABKAlSCnRyYW'
        '5zY3JpcHQSHgoKY29uZmlkZW5jZRgCIAEoAlIKY29uZmlkZW5jZRI9CgV3b3JkcxgDIAMoCzIn'
        'Lmdvb2dsZS5jbG91ZC5zcGVlY2gudjFwMWJldGExLldvcmRJbmZvUgV3b3Jkcw==');

@$core.Deprecated('Use wordInfoDescriptor instead')
const WordInfo$json = {
  '1': 'WordInfo',
  '2': [
    {
      '1': 'start_time',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'startTime'
    },
    {
      '1': 'end_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'endTime'
    },
    {'1': 'word', '3': 3, '4': 1, '5': 9, '10': 'word'},
    {'1': 'confidence', '3': 4, '4': 1, '5': 2, '10': 'confidence'},
    {'1': 'speaker_tag', '3': 5, '4': 1, '5': 5, '8': {}, '10': 'speakerTag'},
  ],
};

/// Descriptor for `WordInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wordInfoDescriptor = $convert.base64Decode(
    'CghXb3JkSW5mbxI4CgpzdGFydF90aW1lGAEgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW'
    '9uUglzdGFydFRpbWUSNAoIZW5kX3RpbWUYAiABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRp'
    'b25SB2VuZFRpbWUSEgoEd29yZBgDIAEoCVIEd29yZBIeCgpjb25maWRlbmNlGAQgASgCUgpjb2'
    '5maWRlbmNlEiUKC3NwZWFrZXJfdGFnGAUgASgFQgTiQQEDUgpzcGVha2VyVGFn');

@$core.Deprecated('Use speechAdaptationInfoDescriptor instead')
const SpeechAdaptationInfo$json = {
  '1': 'SpeechAdaptationInfo',
  '2': [
    {
      '1': 'adaptation_timeout',
      '3': 1,
      '4': 1,
      '5': 8,
      '10': 'adaptationTimeout'
    },
    {'1': 'timeout_message', '3': 4, '4': 1, '5': 9, '10': 'timeoutMessage'},
  ],
};

/// Descriptor for `SpeechAdaptationInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speechAdaptationInfoDescriptor = $convert.base64Decode(
    'ChRTcGVlY2hBZGFwdGF0aW9uSW5mbxItChJhZGFwdGF0aW9uX3RpbWVvdXQYASABKAhSEWFkYX'
    'B0YXRpb25UaW1lb3V0EicKD3RpbWVvdXRfbWVzc2FnZRgEIAEoCVIOdGltZW91dE1lc3NhZ2U=');
