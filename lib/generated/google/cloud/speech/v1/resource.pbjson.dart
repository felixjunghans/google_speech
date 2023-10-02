//
//  Generated code. Do not modify.
//  source: google/cloud/speech/v1/resource.proto
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
      '6': '.google.cloud.speech.v1.CustomClass.ClassItem',
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
    'EoCVINY3VzdG9tQ2xhc3NJZBJDCgVpdGVtcxgDIAMoCzItLmdvb2dsZS5jbG91ZC5zcGVlY2gu'
    'djEuQ3VzdG9tQ2xhc3MuQ2xhc3NJdGVtUgVpdGVtcxohCglDbGFzc0l0ZW0SFAoFdmFsdWUYAS'
    'ABKAlSBXZhbHVlOmzqQWkKIXNwZWVjaC5nb29nbGVhcGlzLmNvbS9DdXN0b21DbGFzcxJEcHJv'
    'amVjdHMve3Byb2plY3R9L2xvY2F0aW9ucy97bG9jYXRpb259L2N1c3RvbUNsYXNzZXMve2N1c3'
    'RvbV9jbGFzc30=');

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
      '6': '.google.cloud.speech.v1.PhraseSet.Phrase',
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
    'CglQaHJhc2VTZXQSEgoEbmFtZRgBIAEoCVIEbmFtZRJCCgdwaHJhc2VzGAIgAygLMiguZ29vZ2'
    'xlLmNsb3VkLnNwZWVjaC52MS5QaHJhc2VTZXQuUGhyYXNlUgdwaHJhc2VzEhQKBWJvb3N0GAQg'
    'ASgCUgVib29zdBo0CgZQaHJhc2USFAoFdmFsdWUYASABKAlSBXZhbHVlEhQKBWJvb3N0GAIgAS'
    'gCUgVib29zdDpl6kFiCh9zcGVlY2guZ29vZ2xlYXBpcy5jb20vUGhyYXNlU2V0Ej9wcm9qZWN0'
    'cy97cHJvamVjdH0vbG9jYXRpb25zL3tsb2NhdGlvbn0vcGhyYXNlU2V0cy97cGhyYXNlX3NldH'
    '0=');

@$core.Deprecated('Use speechAdaptationDescriptor instead')
const SpeechAdaptation$json = {
  '1': 'SpeechAdaptation',
  '2': [
    {
      '1': 'phrase_sets',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1.PhraseSet',
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
      '6': '.google.cloud.speech.v1.CustomClass',
      '10': 'customClasses'
    },
    {
      '1': 'abnf_grammar',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.cloud.speech.v1.SpeechAdaptation.ABNFGrammar',
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
    'ChBTcGVlY2hBZGFwdGF0aW9uEkIKC3BocmFzZV9zZXRzGAEgAygLMiEuZ29vZ2xlLmNsb3VkLn'
    'NwZWVjaC52MS5QaHJhc2VTZXRSCnBocmFzZVNldHMSWAoVcGhyYXNlX3NldF9yZWZlcmVuY2Vz'
    'GAIgAygJQiT6QSEKH3NwZWVjaC5nb29nbGVhcGlzLmNvbS9QaHJhc2VTZXRSE3BocmFzZVNldF'
    'JlZmVyZW5jZXMSSgoOY3VzdG9tX2NsYXNzZXMYAyADKAsyIy5nb29nbGUuY2xvdWQuc3BlZWNo'
    'LnYxLkN1c3RvbUNsYXNzUg1jdXN0b21DbGFzc2VzElcKDGFibmZfZ3JhbW1hchgEIAEoCzI0Lm'
    'dvb2dsZS5jbG91ZC5zcGVlY2gudjEuU3BlZWNoQWRhcHRhdGlvbi5BQk5GR3JhbW1hclILYWJu'
    'ZkdyYW1tYXIaMAoLQUJORkdyYW1tYXISIQoMYWJuZl9zdHJpbmdzGAEgAygJUgthYm5mU3RyaW'
    '5ncw==');
