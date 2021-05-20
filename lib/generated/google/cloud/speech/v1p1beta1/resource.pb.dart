///
//  Generated code. Do not modify.
//  source: google/cloud/speech_new/v1p1beta1/resource.proto
//

// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CustomClass_ClassItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CustomClass.ClassItem',
      package: const $pb.PackageName('google.cloud.speech.v1p1beta1'),
      createEmptyInstance: create)
    ..aOS(1, 'value')
    ..hasRequiredFields = false;

  CustomClass_ClassItem._() : super();
  factory CustomClass_ClassItem() => create();
  factory CustomClass_ClassItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CustomClass_ClassItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CustomClass_ClassItem clone() =>
      CustomClass_ClassItem()..mergeFromMessage(this);
  CustomClass_ClassItem copyWith(
          void Function(CustomClass_ClassItem) updates) =>
      super.copyWith((message) => updates(message as CustomClass_ClassItem)) as CustomClass_ClassItem;
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CustomClass_ClassItem create() => CustomClass_ClassItem._();
  CustomClass_ClassItem createEmptyInstance() => create();
  static $pb.PbList<CustomClass_ClassItem> createRepeated() =>
      $pb.PbList<CustomClass_ClassItem>();
  @$core.pragma('dart2js:noInline')
  static CustomClass_ClassItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CustomClass_ClassItem>(create);
  static CustomClass_ClassItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class CustomClass extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CustomClass',
      package: const $pb.PackageName('google.cloud.speech.v1p1beta1'),
      createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOS(2, 'customClassId')
    ..pc<CustomClass_ClassItem>(3, 'items', $pb.PbFieldType.PM,
        subBuilder: CustomClass_ClassItem.create)
    ..hasRequiredFields = false;

  CustomClass._() : super();
  factory CustomClass() => create();
  factory CustomClass.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CustomClass.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CustomClass clone() => CustomClass()..mergeFromMessage(this);
  CustomClass copyWith(void Function(CustomClass) updates) =>
      super.copyWith((message) => updates(message as CustomClass)) as CustomClass;
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CustomClass create() => CustomClass._();
  CustomClass createEmptyInstance() => create();
  static $pb.PbList<CustomClass> createRepeated() => $pb.PbList<CustomClass>();
  @$core.pragma('dart2js:noInline')
  static CustomClass getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CustomClass>(create);
  static CustomClass? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get customClassId => $_getSZ(1);
  @$pb.TagNumber(2)
  set customClassId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCustomClassId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCustomClassId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<CustomClass_ClassItem> get items => $_getList(2);
}

class PhraseSet_Phrase extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PhraseSet.Phrase',
      package: const $pb.PackageName('google.cloud.speech.v1p1beta1'),
      createEmptyInstance: create)
    ..aOS(1, 'value')
    ..a<$core.double>(2, 'boost', $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  PhraseSet_Phrase._() : super();
  factory PhraseSet_Phrase() => create();
  factory PhraseSet_Phrase.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PhraseSet_Phrase.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PhraseSet_Phrase clone() => PhraseSet_Phrase()..mergeFromMessage(this);
  PhraseSet_Phrase copyWith(void Function(PhraseSet_Phrase) updates) =>
      super.copyWith((message) => updates(message as PhraseSet_Phrase)) as PhraseSet_Phrase;
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PhraseSet_Phrase create() => PhraseSet_Phrase._();
  PhraseSet_Phrase createEmptyInstance() => create();
  static $pb.PbList<PhraseSet_Phrase> createRepeated() =>
      $pb.PbList<PhraseSet_Phrase>();
  @$core.pragma('dart2js:noInline')
  static PhraseSet_Phrase getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhraseSet_Phrase>(create);
  static PhraseSet_Phrase? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get boost => $_getN(1);
  @$pb.TagNumber(2)
  set boost($core.double v) {
    $_setFloat(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBoost() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoost() => clearField(2);
}

class PhraseSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PhraseSet',
      package: const $pb.PackageName('google.cloud.speech.v1p1beta1'),
      createEmptyInstance: create)
    ..aOS(1, 'name')
    ..pc<PhraseSet_Phrase>(2, 'phrases', $pb.PbFieldType.PM,
        subBuilder: PhraseSet_Phrase.create)
    ..a<$core.double>(4, 'boost', $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  PhraseSet._() : super();
  factory PhraseSet() => create();
  factory PhraseSet.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PhraseSet.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PhraseSet clone() => PhraseSet()..mergeFromMessage(this);
  PhraseSet copyWith(void Function(PhraseSet) updates) =>
      super.copyWith((message) => updates(message as PhraseSet)) as PhraseSet;
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PhraseSet create() => PhraseSet._();
  PhraseSet createEmptyInstance() => create();
  static $pb.PbList<PhraseSet> createRepeated() => $pb.PbList<PhraseSet>();
  @$core.pragma('dart2js:noInline')
  static PhraseSet getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PhraseSet>(create);
  static PhraseSet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<PhraseSet_Phrase> get phrases => $_getList(1);

  @$pb.TagNumber(4)
  $core.double get boost => $_getN(2);
  @$pb.TagNumber(4)
  set boost($core.double v) {
    $_setFloat(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBoost() => $_has(2);
  @$pb.TagNumber(4)
  void clearBoost() => clearField(4);
}

class SpeechAdaptation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SpeechAdaptation',
      package: const $pb.PackageName('google.cloud.speech.v1p1beta1'),
      createEmptyInstance: create)
    ..pc<PhraseSet>(1, 'phraseSets', $pb.PbFieldType.PM,
        subBuilder: PhraseSet.create)
    ..pc<CustomClass>(2, 'customClasses', $pb.PbFieldType.PM,
        subBuilder: CustomClass.create)
    ..hasRequiredFields = false;

  SpeechAdaptation._() : super();
  factory SpeechAdaptation() => create();
  factory SpeechAdaptation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpeechAdaptation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SpeechAdaptation clone() => SpeechAdaptation()..mergeFromMessage(this);
  SpeechAdaptation copyWith(void Function(SpeechAdaptation) updates) =>
      super.copyWith((message) => updates(message as SpeechAdaptation)) as SpeechAdaptation;
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpeechAdaptation create() => SpeechAdaptation._();
  SpeechAdaptation createEmptyInstance() => create();
  static $pb.PbList<SpeechAdaptation> createRepeated() =>
      $pb.PbList<SpeechAdaptation>();
  @$core.pragma('dart2js:noInline')
  static SpeechAdaptation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpeechAdaptation>(create);
  static SpeechAdaptation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PhraseSet> get phraseSets => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<CustomClass> get customClasses => $_getList(1);
}
