///
//  Generated code. Do not modify.
//  source: google/cloud/speech_new/v1p1beta1/resource.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const CustomClass$json = const {
  '1': 'CustomClass',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'custom_class_id',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'customClassId'
    },
    const {
      '1': 'items',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.CustomClass.ClassItem',
      '10': 'items'
    },
  ],
  '3': const [CustomClass_ClassItem$json],
  '7': const {},
};

const CustomClass_ClassItem$json = const {
  '1': 'ClassItem',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

const PhraseSet$json = const {
  '1': 'PhraseSet',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'phrases',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.PhraseSet.Phrase',
      '10': 'phrases'
    },
    const {'1': 'boost', '3': 4, '4': 1, '5': 2, '10': 'boost'},
  ],
  '3': const [PhraseSet_Phrase$json],
  '7': const {},
};

const PhraseSet_Phrase$json = const {
  '1': 'Phrase',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'boost', '3': 2, '4': 1, '5': 2, '10': 'boost'},
  ],
};

const SpeechAdaptation$json = const {
  '1': 'SpeechAdaptation',
  '2': const [
    const {
      '1': 'phrase_sets',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.PhraseSet',
      '10': 'phraseSets'
    },
    const {
      '1': 'custom_classes',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.cloud.speech.v1p1beta1.CustomClass',
      '10': 'customClasses'
    },
  ],
};
