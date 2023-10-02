//
//  Generated code. Do not modify.
//  source: google/cloud/speech/v1/cloud_speech.proto
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
      '6': '.google.cloud.speech.v1.RecognitionConfig',
      '8': {},
      '10': 'config'
    },
    {
      '1': 'audio',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1.RecognitionAudio',
      '8': {},
      '10': 'audio'
    },
  ],
};

/// Descriptor for `RecognizeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognizeRequestDescriptor = $convert.base64Decode(
    'ChBSZWNvZ25pemVSZXF1ZXN0EkcKBmNvbmZpZxgBIAEoCzIpLmdvb2dsZS5jbG91ZC5zcGVlY2'
    'gudjEuUmVjb2duaXRpb25Db25maWdCBOJBAQJSBmNvbmZpZxJECgVhdWRpbxgCIAEoCzIoLmdv'
    'b2dsZS5jbG91ZC5zcGVlY2gudjEuUmVjb2duaXRpb25BdWRpb0IE4kEBAlIFYXVkaW8=');

@$core.Deprecated('Use longRunningRecognizeRequestDescriptor instead')
const LongRunningRecognizeRequest$json = {
  '1': 'LongRunningRecognizeRequest',
  '2': [
    {
      '1': 'config',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1.RecognitionConfig',
      '8': {},
      '10': 'config'
    },
    {
      '1': 'audio',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1.RecognitionAudio',
      '8': {},
      '10': 'audio'
    },
    {
      '1': 'output_config',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1.TranscriptOutputConfig',
      '8': {},
      '10': 'outputConfig'
    },
  ],
};

/// Descriptor for `LongRunningRecognizeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List longRunningRecognizeRequestDescriptor = $convert.base64Decode(
    'ChtMb25nUnVubmluZ1JlY29nbml6ZVJlcXVlc3QSRwoGY29uZmlnGAEgASgLMikuZ29vZ2xlLm'
    'Nsb3VkLnNwZWVjaC52MS5SZWNvZ25pdGlvbkNvbmZpZ0IE4kEBAlIGY29uZmlnEkQKBWF1ZGlv'
    'GAIgASgLMiguZ29vZ2xlLmNsb3VkLnNwZWVjaC52MS5SZWNvZ25pdGlvbkF1ZGlvQgTiQQECUg'
    'VhdWRpbxJZCg1vdXRwdXRfY29uZmlnGAQgASgLMi4uZ29vZ2xlLmNsb3VkLnNwZWVjaC52MS5U'
    'cmFuc2NyaXB0T3V0cHV0Q29uZmlnQgTiQQEBUgxvdXRwdXRDb25maWc=');

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
      '6': '.google.cloud.speech.v1.StreamingRecognitionConfig',
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
    'ChlTdHJlYW1pbmdSZWNvZ25pemVSZXF1ZXN0El8KEHN0cmVhbWluZ19jb25maWcYASABKAsyMi'
    '5nb29nbGUuY2xvdWQuc3BlZWNoLnYxLlN0cmVhbWluZ1JlY29nbml0aW9uQ29uZmlnSABSD3N0'
    'cmVhbWluZ0NvbmZpZxIlCg1hdWRpb19jb250ZW50GAIgASgMSABSDGF1ZGlvQ29udGVudEITCh'
    'FzdHJlYW1pbmdfcmVxdWVzdA==');

@$core.Deprecated('Use streamingRecognitionConfigDescriptor instead')
const StreamingRecognitionConfig$json = {
  '1': 'StreamingRecognitionConfig',
  '2': [
    {
      '1': 'config',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1.RecognitionConfig',
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
          '.google.cloud.speech.v1.StreamingRecognitionConfig.VoiceActivityTimeout',
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
    'ChpTdHJlYW1pbmdSZWNvZ25pdGlvbkNvbmZpZxJHCgZjb25maWcYASABKAsyKS5nb29nbGUuY2'
    'xvdWQuc3BlZWNoLnYxLlJlY29nbml0aW9uQ29uZmlnQgTiQQECUgZjb25maWcSKQoQc2luZ2xl'
    'X3V0dGVyYW5jZRgCIAEoCFIPc2luZ2xlVXR0ZXJhbmNlEicKD2ludGVyaW1fcmVzdWx0cxgDIA'
    'EoCFIOaW50ZXJpbVJlc3VsdHMSPwocZW5hYmxlX3ZvaWNlX2FjdGl2aXR5X2V2ZW50cxgFIAEo'
    'CFIZZW5hYmxlVm9pY2VBY3Rpdml0eUV2ZW50cxJ9ChZ2b2ljZV9hY3Rpdml0eV90aW1lb3V0GA'
    'YgASgLMkcuZ29vZ2xlLmNsb3VkLnNwZWVjaC52MS5TdHJlYW1pbmdSZWNvZ25pdGlvbkNvbmZp'
    'Zy5Wb2ljZUFjdGl2aXR5VGltZW91dFIUdm9pY2VBY3Rpdml0eVRpbWVvdXQarAEKFFZvaWNlQW'
    'N0aXZpdHlUaW1lb3V0EksKFHNwZWVjaF9zdGFydF90aW1lb3V0GAEgASgLMhkuZ29vZ2xlLnBy'
    'b3RvYnVmLkR1cmF0aW9uUhJzcGVlY2hTdGFydFRpbWVvdXQSRwoSc3BlZWNoX2VuZF90aW1lb3'
    'V0GAIgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uUhBzcGVlY2hFbmRUaW1lb3V0');

@$core.Deprecated('Use recognitionConfigDescriptor instead')
const RecognitionConfig$json = {
  '1': 'RecognitionConfig',
  '2': [
    {
      '1': 'encoding',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.google.cloud.speech.v1.RecognitionConfig.AudioEncoding',
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
      '6': '.google.cloud.speech.v1.SpeechAdaptation',
      '10': 'adaptation'
    },
    {
      '1': 'speech_contexts',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1.SpeechContext',
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
      '1': 'diarization_config',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1.SpeakerDiarizationConfig',
      '10': 'diarizationConfig'
    },
    {
      '1': 'metadata',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1.RecognitionMetadata',
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
    {'1': 'WEBM_OPUS', '2': 9},
  ],
};

/// Descriptor for `RecognitionConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognitionConfigDescriptor = $convert.base64Decode(
    'ChFSZWNvZ25pdGlvbkNvbmZpZxJTCghlbmNvZGluZxgBIAEoDjI3Lmdvb2dsZS5jbG91ZC5zcG'
    'VlY2gudjEuUmVjb2duaXRpb25Db25maWcuQXVkaW9FbmNvZGluZ1IIZW5jb2RpbmcSKgoRc2Ft'
    'cGxlX3JhdGVfaGVydHoYAiABKAVSD3NhbXBsZVJhdGVIZXJ0ehIuChNhdWRpb19jaGFubmVsX2'
    'NvdW50GAcgASgFUhFhdWRpb0NoYW5uZWxDb3VudBJUCidlbmFibGVfc2VwYXJhdGVfcmVjb2du'
    'aXRpb25fcGVyX2NoYW5uZWwYDCABKAhSI2VuYWJsZVNlcGFyYXRlUmVjb2duaXRpb25QZXJDaG'
    'FubmVsEikKDWxhbmd1YWdlX2NvZGUYAyABKAlCBOJBAQJSDGxhbmd1YWdlQ29kZRI8ChphbHRl'
    'cm5hdGl2ZV9sYW5ndWFnZV9jb2RlcxgSIAMoCVIYYWx0ZXJuYXRpdmVMYW5ndWFnZUNvZGVzEi'
    'kKEG1heF9hbHRlcm5hdGl2ZXMYBCABKAVSD21heEFsdGVybmF0aXZlcxIpChBwcm9mYW5pdHlf'
    'ZmlsdGVyGAUgASgIUg9wcm9mYW5pdHlGaWx0ZXISSAoKYWRhcHRhdGlvbhgUIAEoCzIoLmdvb2'
    'dsZS5jbG91ZC5zcGVlY2gudjEuU3BlZWNoQWRhcHRhdGlvblIKYWRhcHRhdGlvbhJOCg9zcGVl'
    'Y2hfY29udGV4dHMYBiADKAsyJS5nb29nbGUuY2xvdWQuc3BlZWNoLnYxLlNwZWVjaENvbnRleH'
    'RSDnNwZWVjaENvbnRleHRzEjcKGGVuYWJsZV93b3JkX3RpbWVfb2Zmc2V0cxgIIAEoCFIVZW5h'
    'YmxlV29yZFRpbWVPZmZzZXRzEjQKFmVuYWJsZV93b3JkX2NvbmZpZGVuY2UYDyABKAhSFGVuYW'
    'JsZVdvcmRDb25maWRlbmNlEkAKHGVuYWJsZV9hdXRvbWF0aWNfcHVuY3R1YXRpb24YCyABKAhS'
    'GmVuYWJsZUF1dG9tYXRpY1B1bmN0dWF0aW9uElYKGWVuYWJsZV9zcG9rZW5fcHVuY3R1YXRpb2'
    '4YFiABKAsyGi5nb29nbGUucHJvdG9idWYuQm9vbFZhbHVlUhdlbmFibGVTcG9rZW5QdW5jdHVh'
    'dGlvbhJMChRlbmFibGVfc3Bva2VuX2Vtb2ppcxgXIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5Cb2'
    '9sVmFsdWVSEmVuYWJsZVNwb2tlbkVtb2ppcxJfChJkaWFyaXphdGlvbl9jb25maWcYEyABKAsy'
    'MC5nb29nbGUuY2xvdWQuc3BlZWNoLnYxLlNwZWFrZXJEaWFyaXphdGlvbkNvbmZpZ1IRZGlhcm'
    'l6YXRpb25Db25maWcSRwoIbWV0YWRhdGEYCSABKAsyKy5nb29nbGUuY2xvdWQuc3BlZWNoLnYx'
    'LlJlY29nbml0aW9uTWV0YWRhdGFSCG1ldGFkYXRhEhQKBW1vZGVsGA0gASgJUgVtb2RlbBIhCg'
    'x1c2VfZW5oYW5jZWQYDiABKAhSC3VzZUVuaGFuY2VkIpoBCg1BdWRpb0VuY29kaW5nEhgKFEVO'
    'Q09ESU5HX1VOU1BFQ0lGSUVEEAASDAoITElORUFSMTYQARIICgRGTEFDEAISCQoFTVVMQVcQAx'
    'IHCgNBTVIQBBIKCgZBTVJfV0IQBRIMCghPR0dfT1BVUxAGEhoKFlNQRUVYX1dJVEhfSEVBREVS'
    'X0JZVEUQBxINCglXRUJNX09QVVMQCQ==');

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
      '6': '.google.cloud.speech.v1.RecognitionMetadata.InteractionType',
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
      '6': '.google.cloud.speech.v1.RecognitionMetadata.MicrophoneDistance',
      '10': 'microphoneDistance'
    },
    {
      '1': 'original_media_type',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.google.cloud.speech.v1.RecognitionMetadata.OriginalMediaType',
      '10': 'originalMediaType'
    },
    {
      '1': 'recording_device_type',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.google.cloud.speech.v1.RecognitionMetadata.RecordingDeviceType',
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
    'ChNSZWNvZ25pdGlvbk1ldGFkYXRhEmYKEGludGVyYWN0aW9uX3R5cGUYASABKA4yOy5nb29nbG'
    'UuY2xvdWQuc3BlZWNoLnYxLlJlY29nbml0aW9uTWV0YWRhdGEuSW50ZXJhY3Rpb25UeXBlUg9p'
    'bnRlcmFjdGlvblR5cGUSPgocaW5kdXN0cnlfbmFpY3NfY29kZV9vZl9hdWRpbxgDIAEoDVIYaW'
    '5kdXN0cnlOYWljc0NvZGVPZkF1ZGlvEm8KE21pY3JvcGhvbmVfZGlzdGFuY2UYBCABKA4yPi5n'
    'b29nbGUuY2xvdWQuc3BlZWNoLnYxLlJlY29nbml0aW9uTWV0YWRhdGEuTWljcm9waG9uZURpc3'
    'RhbmNlUhJtaWNyb3Bob25lRGlzdGFuY2USbQoTb3JpZ2luYWxfbWVkaWFfdHlwZRgFIAEoDjI9'
    'Lmdvb2dsZS5jbG91ZC5zcGVlY2gudjEuUmVjb2duaXRpb25NZXRhZGF0YS5PcmlnaW5hbE1lZG'
    'lhVHlwZVIRb3JpZ2luYWxNZWRpYVR5cGUScwoVcmVjb3JkaW5nX2RldmljZV90eXBlGAYgASgO'
    'Mj8uZ29vZ2xlLmNsb3VkLnNwZWVjaC52MS5SZWNvZ25pdGlvbk1ldGFkYXRhLlJlY29yZGluZ0'
    'RldmljZVR5cGVSE3JlY29yZGluZ0RldmljZVR5cGUSMgoVcmVjb3JkaW5nX2RldmljZV9uYW1l'
    'GAcgASgJUhNyZWNvcmRpbmdEZXZpY2VOYW1lEiwKEm9yaWdpbmFsX21pbWVfdHlwZRgIIAEoCV'
    'IQb3JpZ2luYWxNaW1lVHlwZRIfCgthdWRpb190b3BpYxgKIAEoCVIKYXVkaW9Ub3BpYyLFAQoP'
    'SW50ZXJhY3Rpb25UeXBlEiAKHElOVEVSQUNUSU9OX1RZUEVfVU5TUEVDSUZJRUQQABIOCgpESV'
    'NDVVNTSU9OEAESEAoMUFJFU0VOVEFUSU9OEAISDgoKUEhPTkVfQ0FMTBADEg0KCVZPSUNFTUFJ'
    'TBAEEhsKF1BST0ZFU1NJT05BTExZX1BST0RVQ0VEEAUSEAoMVk9JQ0VfU0VBUkNIEAYSEQoNVk'
    '9JQ0VfQ09NTUFORBAHEg0KCURJQ1RBVElPThAIImQKEk1pY3JvcGhvbmVEaXN0YW5jZRIjCh9N'
    'SUNST1BIT05FX0RJU1RBTkNFX1VOU1BFQ0lGSUVEEAASDQoJTkVBUkZJRUxEEAESDAoITUlERk'
    'lFTEQQAhIMCghGQVJGSUVMRBADIk4KEU9yaWdpbmFsTWVkaWFUeXBlEiMKH09SSUdJTkFMX01F'
    'RElBX1RZUEVfVU5TUEVDSUZJRUQQABIJCgVBVURJTxABEgkKBVZJREVPEAIipAEKE1JlY29yZG'
    'luZ0RldmljZVR5cGUSJQohUkVDT1JESU5HX0RFVklDRV9UWVBFX1VOU1BFQ0lGSUVEEAASDgoK'
    'U01BUlRQSE9ORRABEgYKAlBDEAISDgoKUEhPTkVfTElORRADEgsKB1ZFSElDTEUQBBIYChRPVE'
    'hFUl9PVVRET09SX0RFVklDRRAFEhcKE09USEVSX0lORE9PUl9ERVZJQ0UQBjoCGAE=');

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
      '6': '.google.cloud.speech.v1.SpeechRecognitionResult',
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
      '6': '.google.cloud.speech.v1.SpeechAdaptationInfo',
      '10': 'speechAdaptationInfo'
    },
    {'1': 'request_id', '3': 8, '4': 1, '5': 3, '10': 'requestId'},
  ],
};

/// Descriptor for `RecognizeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognizeResponseDescriptor = $convert.base64Decode(
    'ChFSZWNvZ25pemVSZXNwb25zZRJJCgdyZXN1bHRzGAIgAygLMi8uZ29vZ2xlLmNsb3VkLnNwZW'
    'VjaC52MS5TcGVlY2hSZWNvZ25pdGlvblJlc3VsdFIHcmVzdWx0cxJFChF0b3RhbF9iaWxsZWRf'
    'dGltZRgDIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblIPdG90YWxCaWxsZWRUaW1lEm'
    'IKFnNwZWVjaF9hZGFwdGF0aW9uX2luZm8YByABKAsyLC5nb29nbGUuY2xvdWQuc3BlZWNoLnYx'
    'LlNwZWVjaEFkYXB0YXRpb25JbmZvUhRzcGVlY2hBZGFwdGF0aW9uSW5mbxIdCgpyZXF1ZXN0X2'
    'lkGAggASgDUglyZXF1ZXN0SWQ=');

@$core.Deprecated('Use longRunningRecognizeResponseDescriptor instead')
const LongRunningRecognizeResponse$json = {
  '1': 'LongRunningRecognizeResponse',
  '2': [
    {
      '1': 'results',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1.SpeechRecognitionResult',
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
      '6': '.google.cloud.speech.v1.TranscriptOutputConfig',
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
      '6': '.google.cloud.speech.v1.SpeechAdaptationInfo',
      '10': 'speechAdaptationInfo'
    },
    {'1': 'request_id', '3': 9, '4': 1, '5': 3, '10': 'requestId'},
  ],
};

/// Descriptor for `LongRunningRecognizeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List longRunningRecognizeResponseDescriptor = $convert.base64Decode(
    'ChxMb25nUnVubmluZ1JlY29nbml6ZVJlc3BvbnNlEkkKB3Jlc3VsdHMYAiADKAsyLy5nb29nbG'
    'UuY2xvdWQuc3BlZWNoLnYxLlNwZWVjaFJlY29nbml0aW9uUmVzdWx0UgdyZXN1bHRzEkUKEXRv'
    'dGFsX2JpbGxlZF90aW1lGAMgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uUg90b3RhbE'
    'JpbGxlZFRpbWUSUwoNb3V0cHV0X2NvbmZpZxgGIAEoCzIuLmdvb2dsZS5jbG91ZC5zcGVlY2gu'
    'djEuVHJhbnNjcmlwdE91dHB1dENvbmZpZ1IMb3V0cHV0Q29uZmlnEjUKDG91dHB1dF9lcnJvch'
    'gHIAEoCzISLmdvb2dsZS5ycGMuU3RhdHVzUgtvdXRwdXRFcnJvchJiChZzcGVlY2hfYWRhcHRh'
    'dGlvbl9pbmZvGAggASgLMiwuZ29vZ2xlLmNsb3VkLnNwZWVjaC52MS5TcGVlY2hBZGFwdGF0aW'
    '9uSW5mb1IUc3BlZWNoQWRhcHRhdGlvbkluZm8SHQoKcmVxdWVzdF9pZBgJIAEoA1IJcmVxdWVz'
    'dElk');

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
  ],
};

/// Descriptor for `LongRunningRecognizeMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List longRunningRecognizeMetadataDescriptor = $convert.base64Decode(
    'ChxMb25nUnVubmluZ1JlY29nbml6ZU1ldGFkYXRhEikKEHByb2dyZXNzX3BlcmNlbnQYASABKA'
    'VSD3Byb2dyZXNzUGVyY2VudBI5CgpzdGFydF90aW1lGAIgASgLMhouZ29vZ2xlLnByb3RvYnVm'
    'LlRpbWVzdGFtcFIJc3RhcnRUaW1lEkQKEGxhc3RfdXBkYXRlX3RpbWUYAyABKAsyGi5nb29nbG'
    'UucHJvdG9idWYuVGltZXN0YW1wUg5sYXN0VXBkYXRlVGltZRIWCgN1cmkYBCABKAlCBOJBAQNS'
    'A3VyaQ==');

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
      '6': '.google.cloud.speech.v1.StreamingRecognitionResult',
      '10': 'results'
    },
    {
      '1': 'speech_event_type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.google.cloud.speech.v1.StreamingRecognizeResponse.SpeechEventType',
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
      '6': '.google.cloud.speech.v1.SpeechAdaptationInfo',
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
    'MuU3RhdHVzUgVlcnJvchJMCgdyZXN1bHRzGAIgAygLMjIuZ29vZ2xlLmNsb3VkLnNwZWVjaC52'
    'MS5TdHJlYW1pbmdSZWNvZ25pdGlvblJlc3VsdFIHcmVzdWx0cxJuChFzcGVlY2hfZXZlbnRfdH'
    'lwZRgEIAEoDjJCLmdvb2dsZS5jbG91ZC5zcGVlY2gudjEuU3RyZWFtaW5nUmVjb2duaXplUmVz'
    'cG9uc2UuU3BlZWNoRXZlbnRUeXBlUg9zcGVlY2hFdmVudFR5cGUSRQoRc3BlZWNoX2V2ZW50X3'
    'RpbWUYCCABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SD3NwZWVjaEV2ZW50VGltZRJF'
    'ChF0b3RhbF9iaWxsZWRfdGltZRgFIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblIPdG'
    '90YWxCaWxsZWRUaW1lEmIKFnNwZWVjaF9hZGFwdGF0aW9uX2luZm8YCSABKAsyLC5nb29nbGUu'
    'Y2xvdWQuc3BlZWNoLnYxLlNwZWVjaEFkYXB0YXRpb25JbmZvUhRzcGVlY2hBZGFwdGF0aW9uSW'
    '5mbxIdCgpyZXF1ZXN0X2lkGAogASgDUglyZXF1ZXN0SWQinQEKD1NwZWVjaEV2ZW50VHlwZRIc'
    'ChhTUEVFQ0hfRVZFTlRfVU5TUEVDSUZJRUQQABIbChdFTkRfT0ZfU0lOR0xFX1VUVEVSQU5DRR'
    'ABEhkKFVNQRUVDSF9BQ1RJVklUWV9CRUdJThACEhcKE1NQRUVDSF9BQ1RJVklUWV9FTkQQAxIb'
    'ChdTUEVFQ0hfQUNUSVZJVFlfVElNRU9VVBAE');

@$core.Deprecated('Use streamingRecognitionResultDescriptor instead')
const StreamingRecognitionResult$json = {
  '1': 'StreamingRecognitionResult',
  '2': [
    {
      '1': 'alternatives',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1.SpeechRecognitionAlternative',
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
    'ChpTdHJlYW1pbmdSZWNvZ25pdGlvblJlc3VsdBJYCgxhbHRlcm5hdGl2ZXMYASADKAsyNC5nb2'
    '9nbGUuY2xvdWQuc3BlZWNoLnYxLlNwZWVjaFJlY29nbml0aW9uQWx0ZXJuYXRpdmVSDGFsdGVy'
    'bmF0aXZlcxIZCghpc19maW5hbBgCIAEoCFIHaXNGaW5hbBIcCglzdGFiaWxpdHkYAyABKAJSCX'
    'N0YWJpbGl0eRJBCg9yZXN1bHRfZW5kX3RpbWUYBCABKAsyGS5nb29nbGUucHJvdG9idWYuRHVy'
    'YXRpb25SDXJlc3VsdEVuZFRpbWUSHwoLY2hhbm5lbF90YWcYBSABKAVSCmNoYW5uZWxUYWcSKQ'
    'oNbGFuZ3VhZ2VfY29kZRgGIAEoCUIE4kEBA1IMbGFuZ3VhZ2VDb2Rl');

@$core.Deprecated('Use speechRecognitionResultDescriptor instead')
const SpeechRecognitionResult$json = {
  '1': 'SpeechRecognitionResult',
  '2': [
    {
      '1': 'alternatives',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1.SpeechRecognitionAlternative',
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
    'ChdTcGVlY2hSZWNvZ25pdGlvblJlc3VsdBJYCgxhbHRlcm5hdGl2ZXMYASADKAsyNC5nb29nbG'
    'UuY2xvdWQuc3BlZWNoLnYxLlNwZWVjaFJlY29nbml0aW9uQWx0ZXJuYXRpdmVSDGFsdGVybmF0'
    'aXZlcxIfCgtjaGFubmVsX3RhZxgCIAEoBVIKY2hhbm5lbFRhZxJBCg9yZXN1bHRfZW5kX3RpbW'
    'UYBCABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SDXJlc3VsdEVuZFRpbWUSKQoNbGFu'
    'Z3VhZ2VfY29kZRgFIAEoCUIE4kEBA1IMbGFuZ3VhZ2VDb2Rl');

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
      '6': '.google.cloud.speech.v1.WordInfo',
      '10': 'words'
    },
  ],
};

/// Descriptor for `SpeechRecognitionAlternative`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speechRecognitionAlternativeDescriptor =
    $convert.base64Decode(
        'ChxTcGVlY2hSZWNvZ25pdGlvbkFsdGVybmF0aXZlEh4KCnRyYW5zY3JpcHQYASABKAlSCnRyYW'
        '5zY3JpcHQSHgoKY29uZmlkZW5jZRgCIAEoAlIKY29uZmlkZW5jZRI2CgV3b3JkcxgDIAMoCzIg'
        'Lmdvb2dsZS5jbG91ZC5zcGVlY2gudjEuV29yZEluZm9SBXdvcmRz');

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
