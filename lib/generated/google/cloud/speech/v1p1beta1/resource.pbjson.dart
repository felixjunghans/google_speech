//
//  Generated code. Do not modify.
//  source: google/cloud/speech/v1p1beta1/resource.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use customClassDescriptor instead')
const CustomClass$json = {
  '1': 'CustomClass',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'custom_class_id', '3': 2, '4': 1, '5': 9, '10': 'customClassId'},
    {
      '1': 'items',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.CustomClass.ClassItem',
      '10': 'items'
    },
  ],
  '3': [CustomClass_ClassItem$json],
  '7': {},
};

@$core.Deprecated('Use customClassDescriptor instead')
const CustomClass_ClassItem$json = {
  '1': 'ClassItem',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `CustomClass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customClassDescriptor = $convert.base64Decode(
    'CgtDdXN0b21DbGFzcxISCgRuYW1lGAEgASgJUgRuYW1lEiYKD2N1c3RvbV9jbGFzc19pZBgCIA'
    'EoCVINY3VzdG9tQ2xhc3NJZBJKCgVpdGVtcxgDIAMoCzI0Lmdvb2dsZS5jbG91ZC5zcGVlY2gu'
    'djFwMWJldGExLkN1c3RvbUNsYXNzLkNsYXNzSXRlbVIFaXRlbXMaIQoJQ2xhc3NJdGVtEhQKBX'
    'ZhbHVlGAEgASgJUgV2YWx1ZTps6kFpCiFzcGVlY2guZ29vZ2xlYXBpcy5jb20vQ3VzdG9tQ2xh'
    'c3MSRHByb2plY3RzL3twcm9qZWN0fS9sb2NhdGlvbnMve2xvY2F0aW9ufS9jdXN0b21DbGFzc2'
    'VzL3tjdXN0b21fY2xhc3N9');

@$core.Deprecated('Use phraseSetDescriptor instead')
const PhraseSet$json = {
  '1': 'PhraseSet',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'phrases',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.PhraseSet.Phrase',
      '10': 'phrases'
    },
    {'1': 'boost', '3': 4, '4': 1, '5': 2, '10': 'boost'},
  ],
  '3': [PhraseSet_Phrase$json],
  '7': {},
};

@$core.Deprecated('Use phraseSetDescriptor instead')
const PhraseSet_Phrase$json = {
  '1': 'Phrase',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    {'1': 'boost', '3': 2, '4': 1, '5': 2, '10': 'boost'},
  ],
};

/// Descriptor for `PhraseSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List phraseSetDescriptor = $convert.base64Decode(
    'CglQaHJhc2VTZXQSEgoEbmFtZRgBIAEoCVIEbmFtZRJJCgdwaHJhc2VzGAIgAygLMi8uZ29vZ2'
    'xlLmNsb3VkLnNwZWVjaC52MXAxYmV0YTEuUGhyYXNlU2V0LlBocmFzZVIHcGhyYXNlcxIUCgVi'
    'b29zdBgEIAEoAlIFYm9vc3QaNAoGUGhyYXNlEhQKBXZhbHVlGAEgASgJUgV2YWx1ZRIUCgVib2'
    '9zdBgCIAEoAlIFYm9vc3Q6ZepBYgofc3BlZWNoLmdvb2dsZWFwaXMuY29tL1BocmFzZVNldBI/'
    'cHJvamVjdHMve3Byb2plY3R9L2xvY2F0aW9ucy97bG9jYXRpb259L3BocmFzZVNldHMve3Bocm'
    'FzZV9zZXR9');

@$core.Deprecated('Use speechAdaptationDescriptor instead')
const SpeechAdaptation$json = {
  '1': 'SpeechAdaptation',
  '2': [
    {
      '1': 'phrase_sets',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.PhraseSet',
      '10': 'phraseSets'
    },
    {
      '1': 'phrase_set_references',
      '3': 2,
      '4': 3,
      '5': 9,
      '8': {},
      '10': 'phraseSetReferences'
    },
    {
      '1': 'custom_classes',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.CustomClass',
      '10': 'customClasses'
    },
    {
      '1': 'abnf_grammar',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.SpeechAdaptation.ABNFGrammar',
      '10': 'abnfGrammar'
    },
  ],
  '3': [SpeechAdaptation_ABNFGrammar$json],
};

@$core.Deprecated('Use speechAdaptationDescriptor instead')
const SpeechAdaptation_ABNFGrammar$json = {
  '1': 'ABNFGrammar',
  '2': [
    {'1': 'abnf_strings', '3': 1, '4': 3, '5': 9, '10': 'abnfStrings'},
  ],
};

/// Descriptor for `SpeechAdaptation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speechAdaptationDescriptor = $convert.base64Decode(
    'ChBTcGVlY2hBZGFwdGF0aW9uEkkKC3BocmFzZV9zZXRzGAEgAygLMiguZ29vZ2xlLmNsb3VkLn'
    'NwZWVjaC52MXAxYmV0YTEuUGhyYXNlU2V0UgpwaHJhc2VTZXRzElgKFXBocmFzZV9zZXRfcmVm'
    'ZXJlbmNlcxgCIAMoCUIk+kEhCh9zcGVlY2guZ29vZ2xlYXBpcy5jb20vUGhyYXNlU2V0UhNwaH'
    'Jhc2VTZXRSZWZlcmVuY2VzElEKDmN1c3RvbV9jbGFzc2VzGAMgAygLMiouZ29vZ2xlLmNsb3Vk'
    'LnNwZWVjaC52MXAxYmV0YTEuQ3VzdG9tQ2xhc3NSDWN1c3RvbUNsYXNzZXMSXgoMYWJuZl9ncm'
    'FtbWFyGAQgASgLMjsuZ29vZ2xlLmNsb3VkLnNwZWVjaC52MXAxYmV0YTEuU3BlZWNoQWRhcHRh'
    'dGlvbi5BQk5GR3JhbW1hclILYWJuZkdyYW1tYXIaMAoLQUJORkdyYW1tYXISIQoMYWJuZl9zdH'
    'JpbmdzGAEgAygJUgthYm5mU3RyaW5ncw==');

@$core.Deprecated('Use transcriptNormalizationDescriptor instead')
const TranscriptNormalization$json = {
  '1': 'TranscriptNormalization',
  '2': [
    {
      '1': 'entries',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.TranscriptNormalization.Entry',
      '10': 'entries'
    },
  ],
  '3': [TranscriptNormalization_Entry$json],
};

@$core.Deprecated('Use transcriptNormalizationDescriptor instead')
const TranscriptNormalization_Entry$json = {
  '1': 'Entry',
  '2': [
    {'1': 'search', '3': 1, '4': 1, '5': 9, '10': 'search'},
    {'1': 'replace', '3': 2, '4': 1, '5': 9, '10': 'replace'},
    {'1': 'case_sensitive', '3': 3, '4': 1, '5': 8, '10': 'caseSensitive'},
  ],
};

/// Descriptor for `TranscriptNormalization`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transcriptNormalizationDescriptor = $convert.base64Decode(
    'ChdUcmFuc2NyaXB0Tm9ybWFsaXphdGlvbhJWCgdlbnRyaWVzGAEgAygLMjwuZ29vZ2xlLmNsb3'
    'VkLnNwZWVjaC52MXAxYmV0YTEuVHJhbnNjcmlwdE5vcm1hbGl6YXRpb24uRW50cnlSB2VudHJp'
    'ZXMaYAoFRW50cnkSFgoGc2VhcmNoGAEgASgJUgZzZWFyY2gSGAoHcmVwbGFjZRgCIAEoCVIHcm'
    'VwbGFjZRIlCg5jYXNlX3NlbnNpdGl2ZRgDIAEoCFINY2FzZVNlbnNpdGl2ZQ==');
