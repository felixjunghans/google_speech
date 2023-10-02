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

import '../../../protobuf/duration.pb.dart' as $5;
import '../../../protobuf/field_mask.pb.dart' as $4;
import '../../../protobuf/timestamp.pb.dart' as $3;
import '../../../rpc/status.pb.dart' as $6;
import 'cloud_speech.pbenum.dart';

export 'cloud_speech.pbenum.dart';

/// Request message for the
/// [CreateRecognizer][google.cloud.speech.v2.Speech.CreateRecognizer] method.
class CreateRecognizerRequest extends $pb.GeneratedMessage {
  factory CreateRecognizerRequest({
    Recognizer? recognizer,
    $core.bool? validateOnly,
    $core.String? recognizerId,
    $core.String? parent,
  }) {
    final $result = create();
    if (recognizer != null) {
      $result.recognizer = recognizer;
    }
    if (validateOnly != null) {
      $result.validateOnly = validateOnly;
    }
    if (recognizerId != null) {
      $result.recognizerId = recognizerId;
    }
    if (parent != null) {
      $result.parent = parent;
    }
    return $result;
  }
  CreateRecognizerRequest._() : super();
  factory CreateRecognizerRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateRecognizerRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateRecognizerRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOM<Recognizer>(1, _omitFieldNames ? '' : 'recognizer',
        subBuilder: Recognizer.create)
    ..aOB(2, _omitFieldNames ? '' : 'validateOnly')
    ..aOS(3, _omitFieldNames ? '' : 'recognizerId')
    ..aOS(4, _omitFieldNames ? '' : 'parent')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateRecognizerRequest clone() =>
      CreateRecognizerRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateRecognizerRequest copyWith(
          void Function(CreateRecognizerRequest) updates) =>
      super.copyWith((message) => updates(message as CreateRecognizerRequest))
          as CreateRecognizerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRecognizerRequest create() => CreateRecognizerRequest._();
  CreateRecognizerRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRecognizerRequest> createRepeated() =>
      $pb.PbList<CreateRecognizerRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateRecognizerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateRecognizerRequest>(create);
  static CreateRecognizerRequest? _defaultInstance;

  /// Required. The Recognizer to create.
  @$pb.TagNumber(1)
  Recognizer get recognizer => $_getN(0);
  @$pb.TagNumber(1)
  set recognizer(Recognizer v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRecognizer() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecognizer() => clearField(1);
  @$pb.TagNumber(1)
  Recognizer ensureRecognizer() => $_ensure(0);

  /// If set, validate the request and preview the Recognizer, but do not
  /// actually create it.
  @$pb.TagNumber(2)
  $core.bool get validateOnly => $_getBF(1);
  @$pb.TagNumber(2)
  set validateOnly($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValidateOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidateOnly() => clearField(2);

  ///  The ID to use for the Recognizer, which will become the final component of
  ///  the Recognizer's resource name.
  ///
  ///  This value should be 4-63 characters, and valid characters
  ///  are /[a-z][0-9]-/.
  @$pb.TagNumber(3)
  $core.String get recognizerId => $_getSZ(2);
  @$pb.TagNumber(3)
  set recognizerId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRecognizerId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecognizerId() => clearField(3);

  /// Required. The project and location where this Recognizer will be created.
  /// The expected format is `projects/{project}/locations/{location}`.
  @$pb.TagNumber(4)
  $core.String get parent => $_getSZ(3);
  @$pb.TagNumber(4)
  set parent($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasParent() => $_has(3);
  @$pb.TagNumber(4)
  void clearParent() => clearField(4);
}

enum OperationMetadata_Request {
  batchRecognizeRequest,
  createRecognizerRequest,
  updateRecognizerRequest,
  deleteRecognizerRequest,
  undeleteRecognizerRequest,
  createCustomClassRequest,
  updateCustomClassRequest,
  deleteCustomClassRequest,
  undeleteCustomClassRequest,
  createPhraseSetRequest,
  updatePhraseSetRequest,
  deletePhraseSetRequest,
  undeletePhraseSetRequest,
  updateConfigRequest,
  notSet
}

enum OperationMetadata_Metadata { batchRecognizeMetadata, notSet }

/// Represents the metadata of a long-running operation.
class OperationMetadata extends $pb.GeneratedMessage {
  factory OperationMetadata({
    $3.Timestamp? createTime,
    $3.Timestamp? updateTime,
    $core.String? resource,
    $core.String? method,
    $core.String? kmsKeyName,
    $core.String? kmsKeyVersionName,
    BatchRecognizeRequest? batchRecognizeRequest,
    CreateRecognizerRequest? createRecognizerRequest,
    UpdateRecognizerRequest? updateRecognizerRequest,
    DeleteRecognizerRequest? deleteRecognizerRequest,
    UndeleteRecognizerRequest? undeleteRecognizerRequest,
    CreateCustomClassRequest? createCustomClassRequest,
    UpdateCustomClassRequest? updateCustomClassRequest,
    DeleteCustomClassRequest? deleteCustomClassRequest,
    UndeleteCustomClassRequest? undeleteCustomClassRequest,
    CreatePhraseSetRequest? createPhraseSetRequest,
    UpdatePhraseSetRequest? updatePhraseSetRequest,
    DeletePhraseSetRequest? deletePhraseSetRequest,
    UndeletePhraseSetRequest? undeletePhraseSetRequest,
    @$core.Deprecated('This field is deprecated.')
    UpdateConfigRequest? updateConfigRequest,
    $core.int? progressPercent,
    BatchRecognizeMetadata? batchRecognizeMetadata,
  }) {
    final $result = create();
    if (createTime != null) {
      $result.createTime = createTime;
    }
    if (updateTime != null) {
      $result.updateTime = updateTime;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    if (method != null) {
      $result.method = method;
    }
    if (kmsKeyName != null) {
      $result.kmsKeyName = kmsKeyName;
    }
    if (kmsKeyVersionName != null) {
      $result.kmsKeyVersionName = kmsKeyVersionName;
    }
    if (batchRecognizeRequest != null) {
      $result.batchRecognizeRequest = batchRecognizeRequest;
    }
    if (createRecognizerRequest != null) {
      $result.createRecognizerRequest = createRecognizerRequest;
    }
    if (updateRecognizerRequest != null) {
      $result.updateRecognizerRequest = updateRecognizerRequest;
    }
    if (deleteRecognizerRequest != null) {
      $result.deleteRecognizerRequest = deleteRecognizerRequest;
    }
    if (undeleteRecognizerRequest != null) {
      $result.undeleteRecognizerRequest = undeleteRecognizerRequest;
    }
    if (createCustomClassRequest != null) {
      $result.createCustomClassRequest = createCustomClassRequest;
    }
    if (updateCustomClassRequest != null) {
      $result.updateCustomClassRequest = updateCustomClassRequest;
    }
    if (deleteCustomClassRequest != null) {
      $result.deleteCustomClassRequest = deleteCustomClassRequest;
    }
    if (undeleteCustomClassRequest != null) {
      $result.undeleteCustomClassRequest = undeleteCustomClassRequest;
    }
    if (createPhraseSetRequest != null) {
      $result.createPhraseSetRequest = createPhraseSetRequest;
    }
    if (updatePhraseSetRequest != null) {
      $result.updatePhraseSetRequest = updatePhraseSetRequest;
    }
    if (deletePhraseSetRequest != null) {
      $result.deletePhraseSetRequest = deletePhraseSetRequest;
    }
    if (undeletePhraseSetRequest != null) {
      $result.undeletePhraseSetRequest = undeletePhraseSetRequest;
    }
    if (updateConfigRequest != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.updateConfigRequest = updateConfigRequest;
    }
    if (progressPercent != null) {
      $result.progressPercent = progressPercent;
    }
    if (batchRecognizeMetadata != null) {
      $result.batchRecognizeMetadata = batchRecognizeMetadata;
    }
    return $result;
  }
  OperationMetadata._() : super();
  factory OperationMetadata.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OperationMetadata.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, OperationMetadata_Request>
      _OperationMetadata_RequestByTag = {
    8: OperationMetadata_Request.batchRecognizeRequest,
    9: OperationMetadata_Request.createRecognizerRequest,
    10: OperationMetadata_Request.updateRecognizerRequest,
    11: OperationMetadata_Request.deleteRecognizerRequest,
    12: OperationMetadata_Request.undeleteRecognizerRequest,
    13: OperationMetadata_Request.createCustomClassRequest,
    14: OperationMetadata_Request.updateCustomClassRequest,
    15: OperationMetadata_Request.deleteCustomClassRequest,
    16: OperationMetadata_Request.undeleteCustomClassRequest,
    17: OperationMetadata_Request.createPhraseSetRequest,
    18: OperationMetadata_Request.updatePhraseSetRequest,
    19: OperationMetadata_Request.deletePhraseSetRequest,
    20: OperationMetadata_Request.undeletePhraseSetRequest,
    21: OperationMetadata_Request.updateConfigRequest,
    0: OperationMetadata_Request.notSet
  };
  static const $core.Map<$core.int, OperationMetadata_Metadata>
      _OperationMetadata_MetadataByTag = {
    23: OperationMetadata_Metadata.batchRecognizeMetadata,
    0: OperationMetadata_Metadata.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OperationMetadata',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..oo(0, [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21])
    ..oo(1, [23])
    ..aOM<$3.Timestamp>(1, _omitFieldNames ? '' : 'createTime',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(2, _omitFieldNames ? '' : 'updateTime',
        subBuilder: $3.Timestamp.create)
    ..aOS(3, _omitFieldNames ? '' : 'resource')
    ..aOS(4, _omitFieldNames ? '' : 'method')
    ..aOS(6, _omitFieldNames ? '' : 'kmsKeyName')
    ..aOS(7, _omitFieldNames ? '' : 'kmsKeyVersionName')
    ..aOM<BatchRecognizeRequest>(
        8, _omitFieldNames ? '' : 'batchRecognizeRequest',
        subBuilder: BatchRecognizeRequest.create)
    ..aOM<CreateRecognizerRequest>(
        9, _omitFieldNames ? '' : 'createRecognizerRequest',
        subBuilder: CreateRecognizerRequest.create)
    ..aOM<UpdateRecognizerRequest>(
        10, _omitFieldNames ? '' : 'updateRecognizerRequest',
        subBuilder: UpdateRecognizerRequest.create)
    ..aOM<DeleteRecognizerRequest>(
        11, _omitFieldNames ? '' : 'deleteRecognizerRequest',
        subBuilder: DeleteRecognizerRequest.create)
    ..aOM<UndeleteRecognizerRequest>(
        12, _omitFieldNames ? '' : 'undeleteRecognizerRequest',
        subBuilder: UndeleteRecognizerRequest.create)
    ..aOM<CreateCustomClassRequest>(
        13, _omitFieldNames ? '' : 'createCustomClassRequest',
        subBuilder: CreateCustomClassRequest.create)
    ..aOM<UpdateCustomClassRequest>(
        14, _omitFieldNames ? '' : 'updateCustomClassRequest',
        subBuilder: UpdateCustomClassRequest.create)
    ..aOM<DeleteCustomClassRequest>(
        15, _omitFieldNames ? '' : 'deleteCustomClassRequest',
        subBuilder: DeleteCustomClassRequest.create)
    ..aOM<UndeleteCustomClassRequest>(
        16, _omitFieldNames ? '' : 'undeleteCustomClassRequest',
        subBuilder: UndeleteCustomClassRequest.create)
    ..aOM<CreatePhraseSetRequest>(
        17, _omitFieldNames ? '' : 'createPhraseSetRequest',
        subBuilder: CreatePhraseSetRequest.create)
    ..aOM<UpdatePhraseSetRequest>(
        18, _omitFieldNames ? '' : 'updatePhraseSetRequest',
        subBuilder: UpdatePhraseSetRequest.create)
    ..aOM<DeletePhraseSetRequest>(
        19, _omitFieldNames ? '' : 'deletePhraseSetRequest',
        subBuilder: DeletePhraseSetRequest.create)
    ..aOM<UndeletePhraseSetRequest>(
        20, _omitFieldNames ? '' : 'undeletePhraseSetRequest',
        subBuilder: UndeletePhraseSetRequest.create)
    ..aOM<UpdateConfigRequest>(21, _omitFieldNames ? '' : 'updateConfigRequest',
        subBuilder: UpdateConfigRequest.create)
    ..a<$core.int>(
        22, _omitFieldNames ? '' : 'progressPercent', $pb.PbFieldType.O3)
    ..aOM<BatchRecognizeMetadata>(
        23, _omitFieldNames ? '' : 'batchRecognizeMetadata',
        subBuilder: BatchRecognizeMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OperationMetadata clone() => OperationMetadata()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OperationMetadata copyWith(void Function(OperationMetadata) updates) =>
      super.copyWith((message) => updates(message as OperationMetadata))
          as OperationMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OperationMetadata create() => OperationMetadata._();
  OperationMetadata createEmptyInstance() => create();
  static $pb.PbList<OperationMetadata> createRepeated() =>
      $pb.PbList<OperationMetadata>();
  @$core.pragma('dart2js:noInline')
  static OperationMetadata getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OperationMetadata>(create);
  static OperationMetadata? _defaultInstance;

  OperationMetadata_Request whichRequest() =>
      _OperationMetadata_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => clearField($_whichOneof(0));

  OperationMetadata_Metadata whichMetadata() =>
      _OperationMetadata_MetadataByTag[$_whichOneof(1)]!;
  void clearMetadata() => clearField($_whichOneof(1));

  /// The time the operation was created.
  @$pb.TagNumber(1)
  $3.Timestamp get createTime => $_getN(0);
  @$pb.TagNumber(1)
  set createTime($3.Timestamp v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCreateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreateTime() => clearField(1);
  @$pb.TagNumber(1)
  $3.Timestamp ensureCreateTime() => $_ensure(0);

  /// The time the operation was last updated.
  @$pb.TagNumber(2)
  $3.Timestamp get updateTime => $_getN(1);
  @$pb.TagNumber(2)
  set updateTime($3.Timestamp v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateTime() => clearField(2);
  @$pb.TagNumber(2)
  $3.Timestamp ensureUpdateTime() => $_ensure(1);

  /// The resource path for the target of the operation.
  @$pb.TagNumber(3)
  $core.String get resource => $_getSZ(2);
  @$pb.TagNumber(3)
  set resource($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasResource() => $_has(2);
  @$pb.TagNumber(3)
  void clearResource() => clearField(3);

  /// The method that triggered the operation.
  @$pb.TagNumber(4)
  $core.String get method => $_getSZ(3);
  @$pb.TagNumber(4)
  set method($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMethod() => $_has(3);
  @$pb.TagNumber(4)
  void clearMethod() => clearField(4);

  /// The [KMS key
  /// name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with which
  /// the content of the Operation is encrypted. The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  @$pb.TagNumber(6)
  $core.String get kmsKeyName => $_getSZ(4);
  @$pb.TagNumber(6)
  set kmsKeyName($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasKmsKeyName() => $_has(4);
  @$pb.TagNumber(6)
  void clearKmsKeyName() => clearField(6);

  /// The [KMS key version
  /// name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions)
  /// with which content of the Operation is encrypted. The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  @$pb.TagNumber(7)
  $core.String get kmsKeyVersionName => $_getSZ(5);
  @$pb.TagNumber(7)
  set kmsKeyVersionName($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasKmsKeyVersionName() => $_has(5);
  @$pb.TagNumber(7)
  void clearKmsKeyVersionName() => clearField(7);

  /// The BatchRecognizeRequest that spawned the Operation.
  @$pb.TagNumber(8)
  BatchRecognizeRequest get batchRecognizeRequest => $_getN(6);
  @$pb.TagNumber(8)
  set batchRecognizeRequest(BatchRecognizeRequest v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasBatchRecognizeRequest() => $_has(6);
  @$pb.TagNumber(8)
  void clearBatchRecognizeRequest() => clearField(8);
  @$pb.TagNumber(8)
  BatchRecognizeRequest ensureBatchRecognizeRequest() => $_ensure(6);

  /// The CreateRecognizerRequest that spawned the Operation.
  @$pb.TagNumber(9)
  CreateRecognizerRequest get createRecognizerRequest => $_getN(7);
  @$pb.TagNumber(9)
  set createRecognizerRequest(CreateRecognizerRequest v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasCreateRecognizerRequest() => $_has(7);
  @$pb.TagNumber(9)
  void clearCreateRecognizerRequest() => clearField(9);
  @$pb.TagNumber(9)
  CreateRecognizerRequest ensureCreateRecognizerRequest() => $_ensure(7);

  /// The UpdateRecognizerRequest that spawned the Operation.
  @$pb.TagNumber(10)
  UpdateRecognizerRequest get updateRecognizerRequest => $_getN(8);
  @$pb.TagNumber(10)
  set updateRecognizerRequest(UpdateRecognizerRequest v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasUpdateRecognizerRequest() => $_has(8);
  @$pb.TagNumber(10)
  void clearUpdateRecognizerRequest() => clearField(10);
  @$pb.TagNumber(10)
  UpdateRecognizerRequest ensureUpdateRecognizerRequest() => $_ensure(8);

  /// The DeleteRecognizerRequest that spawned the Operation.
  @$pb.TagNumber(11)
  DeleteRecognizerRequest get deleteRecognizerRequest => $_getN(9);
  @$pb.TagNumber(11)
  set deleteRecognizerRequest(DeleteRecognizerRequest v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDeleteRecognizerRequest() => $_has(9);
  @$pb.TagNumber(11)
  void clearDeleteRecognizerRequest() => clearField(11);
  @$pb.TagNumber(11)
  DeleteRecognizerRequest ensureDeleteRecognizerRequest() => $_ensure(9);

  /// The UndeleteRecognizerRequest that spawned the Operation.
  @$pb.TagNumber(12)
  UndeleteRecognizerRequest get undeleteRecognizerRequest => $_getN(10);
  @$pb.TagNumber(12)
  set undeleteRecognizerRequest(UndeleteRecognizerRequest v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasUndeleteRecognizerRequest() => $_has(10);
  @$pb.TagNumber(12)
  void clearUndeleteRecognizerRequest() => clearField(12);
  @$pb.TagNumber(12)
  UndeleteRecognizerRequest ensureUndeleteRecognizerRequest() => $_ensure(10);

  /// The CreateCustomClassRequest that spawned the Operation.
  @$pb.TagNumber(13)
  CreateCustomClassRequest get createCustomClassRequest => $_getN(11);
  @$pb.TagNumber(13)
  set createCustomClassRequest(CreateCustomClassRequest v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasCreateCustomClassRequest() => $_has(11);
  @$pb.TagNumber(13)
  void clearCreateCustomClassRequest() => clearField(13);
  @$pb.TagNumber(13)
  CreateCustomClassRequest ensureCreateCustomClassRequest() => $_ensure(11);

  /// The UpdateCustomClassRequest that spawned the Operation.
  @$pb.TagNumber(14)
  UpdateCustomClassRequest get updateCustomClassRequest => $_getN(12);
  @$pb.TagNumber(14)
  set updateCustomClassRequest(UpdateCustomClassRequest v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasUpdateCustomClassRequest() => $_has(12);
  @$pb.TagNumber(14)
  void clearUpdateCustomClassRequest() => clearField(14);
  @$pb.TagNumber(14)
  UpdateCustomClassRequest ensureUpdateCustomClassRequest() => $_ensure(12);

  /// The DeleteCustomClassRequest that spawned the Operation.
  @$pb.TagNumber(15)
  DeleteCustomClassRequest get deleteCustomClassRequest => $_getN(13);
  @$pb.TagNumber(15)
  set deleteCustomClassRequest(DeleteCustomClassRequest v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasDeleteCustomClassRequest() => $_has(13);
  @$pb.TagNumber(15)
  void clearDeleteCustomClassRequest() => clearField(15);
  @$pb.TagNumber(15)
  DeleteCustomClassRequest ensureDeleteCustomClassRequest() => $_ensure(13);

  /// The UndeleteCustomClassRequest that spawned the Operation.
  @$pb.TagNumber(16)
  UndeleteCustomClassRequest get undeleteCustomClassRequest => $_getN(14);
  @$pb.TagNumber(16)
  set undeleteCustomClassRequest(UndeleteCustomClassRequest v) {
    setField(16, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasUndeleteCustomClassRequest() => $_has(14);
  @$pb.TagNumber(16)
  void clearUndeleteCustomClassRequest() => clearField(16);
  @$pb.TagNumber(16)
  UndeleteCustomClassRequest ensureUndeleteCustomClassRequest() => $_ensure(14);

  /// The CreatePhraseSetRequest that spawned the Operation.
  @$pb.TagNumber(17)
  CreatePhraseSetRequest get createPhraseSetRequest => $_getN(15);
  @$pb.TagNumber(17)
  set createPhraseSetRequest(CreatePhraseSetRequest v) {
    setField(17, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasCreatePhraseSetRequest() => $_has(15);
  @$pb.TagNumber(17)
  void clearCreatePhraseSetRequest() => clearField(17);
  @$pb.TagNumber(17)
  CreatePhraseSetRequest ensureCreatePhraseSetRequest() => $_ensure(15);

  /// The UpdatePhraseSetRequest that spawned the Operation.
  @$pb.TagNumber(18)
  UpdatePhraseSetRequest get updatePhraseSetRequest => $_getN(16);
  @$pb.TagNumber(18)
  set updatePhraseSetRequest(UpdatePhraseSetRequest v) {
    setField(18, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasUpdatePhraseSetRequest() => $_has(16);
  @$pb.TagNumber(18)
  void clearUpdatePhraseSetRequest() => clearField(18);
  @$pb.TagNumber(18)
  UpdatePhraseSetRequest ensureUpdatePhraseSetRequest() => $_ensure(16);

  /// The DeletePhraseSetRequest that spawned the Operation.
  @$pb.TagNumber(19)
  DeletePhraseSetRequest get deletePhraseSetRequest => $_getN(17);
  @$pb.TagNumber(19)
  set deletePhraseSetRequest(DeletePhraseSetRequest v) {
    setField(19, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasDeletePhraseSetRequest() => $_has(17);
  @$pb.TagNumber(19)
  void clearDeletePhraseSetRequest() => clearField(19);
  @$pb.TagNumber(19)
  DeletePhraseSetRequest ensureDeletePhraseSetRequest() => $_ensure(17);

  /// The UndeletePhraseSetRequest that spawned the Operation.
  @$pb.TagNumber(20)
  UndeletePhraseSetRequest get undeletePhraseSetRequest => $_getN(18);
  @$pb.TagNumber(20)
  set undeletePhraseSetRequest(UndeletePhraseSetRequest v) {
    setField(20, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasUndeletePhraseSetRequest() => $_has(18);
  @$pb.TagNumber(20)
  void clearUndeletePhraseSetRequest() => clearField(20);
  @$pb.TagNumber(20)
  UndeletePhraseSetRequest ensureUndeletePhraseSetRequest() => $_ensure(18);

  /// The UpdateConfigRequest that spawned the Operation.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(21)
  UpdateConfigRequest get updateConfigRequest => $_getN(19);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(21)
  set updateConfigRequest(UpdateConfigRequest v) {
    setField(21, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(21)
  $core.bool hasUpdateConfigRequest() => $_has(19);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(21)
  void clearUpdateConfigRequest() => clearField(21);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(21)
  UpdateConfigRequest ensureUpdateConfigRequest() => $_ensure(19);

  /// The percent progress of the Operation. Values can range from 0-100. If the
  /// value is 100, then the operation is finished.
  @$pb.TagNumber(22)
  $core.int get progressPercent => $_getIZ(20);
  @$pb.TagNumber(22)
  set progressPercent($core.int v) {
    $_setSignedInt32(20, v);
  }

  @$pb.TagNumber(22)
  $core.bool hasProgressPercent() => $_has(20);
  @$pb.TagNumber(22)
  void clearProgressPercent() => clearField(22);

  /// Metadata specific to the BatchRecognize method.
  @$pb.TagNumber(23)
  BatchRecognizeMetadata get batchRecognizeMetadata => $_getN(21);
  @$pb.TagNumber(23)
  set batchRecognizeMetadata(BatchRecognizeMetadata v) {
    setField(23, v);
  }

  @$pb.TagNumber(23)
  $core.bool hasBatchRecognizeMetadata() => $_has(21);
  @$pb.TagNumber(23)
  void clearBatchRecognizeMetadata() => clearField(23);
  @$pb.TagNumber(23)
  BatchRecognizeMetadata ensureBatchRecognizeMetadata() => $_ensure(21);
}

/// Request message for the
/// [ListRecognizers][google.cloud.speech.v2.Speech.ListRecognizers] method.
class ListRecognizersRequest extends $pb.GeneratedMessage {
  factory ListRecognizersRequest({
    $core.String? parent,
    $core.int? pageSize,
    $core.String? pageToken,
    $core.bool? showDeleted,
  }) {
    final $result = create();
    if (parent != null) {
      $result.parent = parent;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    if (showDeleted != null) {
      $result.showDeleted = showDeleted;
    }
    return $result;
  }
  ListRecognizersRequest._() : super();
  factory ListRecognizersRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListRecognizersRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListRecognizersRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'parent')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'pageToken')
    ..aOB(4, _omitFieldNames ? '' : 'showDeleted')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListRecognizersRequest clone() =>
      ListRecognizersRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListRecognizersRequest copyWith(
          void Function(ListRecognizersRequest) updates) =>
      super.copyWith((message) => updates(message as ListRecognizersRequest))
          as ListRecognizersRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRecognizersRequest create() => ListRecognizersRequest._();
  ListRecognizersRequest createEmptyInstance() => create();
  static $pb.PbList<ListRecognizersRequest> createRepeated() =>
      $pb.PbList<ListRecognizersRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRecognizersRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListRecognizersRequest>(create);
  static ListRecognizersRequest? _defaultInstance;

  /// Required. The project and location of Recognizers to list. The expected
  /// format is `projects/{project}/locations/{location}`.
  @$pb.TagNumber(1)
  $core.String get parent => $_getSZ(0);
  @$pb.TagNumber(1)
  set parent($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);

  /// The maximum number of Recognizers to return. The service may return fewer
  /// than this value. If unspecified, at most 5 Recognizers will be returned.
  /// The maximum value is 100; values above 100 will be coerced to 100.
  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  ///  A page token, received from a previous
  ///  [ListRecognizers][google.cloud.speech.v2.Speech.ListRecognizers] call.
  ///  Provide this to retrieve the subsequent page.
  ///
  ///  When paginating, all other parameters provided to
  ///  [ListRecognizers][google.cloud.speech.v2.Speech.ListRecognizers] must match
  ///  the call that provided the page token.
  @$pb.TagNumber(3)
  $core.String get pageToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set pageToken($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPageToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageToken() => clearField(3);

  /// Whether, or not, to show resources that have been deleted.
  @$pb.TagNumber(4)
  $core.bool get showDeleted => $_getBF(3);
  @$pb.TagNumber(4)
  set showDeleted($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasShowDeleted() => $_has(3);
  @$pb.TagNumber(4)
  void clearShowDeleted() => clearField(4);
}

/// Response message for the
/// [ListRecognizers][google.cloud.speech.v2.Speech.ListRecognizers] method.
class ListRecognizersResponse extends $pb.GeneratedMessage {
  factory ListRecognizersResponse({
    $core.Iterable<Recognizer>? recognizers,
    $core.String? nextPageToken,
  }) {
    final $result = create();
    if (recognizers != null) {
      $result.recognizers.addAll(recognizers);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    return $result;
  }
  ListRecognizersResponse._() : super();
  factory ListRecognizersResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListRecognizersResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListRecognizersResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..pc<Recognizer>(
        1, _omitFieldNames ? '' : 'recognizers', $pb.PbFieldType.PM,
        subBuilder: Recognizer.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListRecognizersResponse clone() =>
      ListRecognizersResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListRecognizersResponse copyWith(
          void Function(ListRecognizersResponse) updates) =>
      super.copyWith((message) => updates(message as ListRecognizersResponse))
          as ListRecognizersResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRecognizersResponse create() => ListRecognizersResponse._();
  ListRecognizersResponse createEmptyInstance() => create();
  static $pb.PbList<ListRecognizersResponse> createRepeated() =>
      $pb.PbList<ListRecognizersResponse>();
  @$core.pragma('dart2js:noInline')
  static ListRecognizersResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListRecognizersResponse>(create);
  static ListRecognizersResponse? _defaultInstance;

  /// The list of requested Recognizers.
  @$pb.TagNumber(1)
  $core.List<Recognizer> get recognizers => $_getList(0);

  /// A token, which can be sent as
  /// [page_token][google.cloud.speech.v2.ListRecognizersRequest.page_token] to
  /// retrieve the next page. If this field is omitted, there are no subsequent
  /// pages. This token expires after 72 hours.
  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);
}

/// Request message for the
/// [GetRecognizer][google.cloud.speech.v2.Speech.GetRecognizer] method.
class GetRecognizerRequest extends $pb.GeneratedMessage {
  factory GetRecognizerRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetRecognizerRequest._() : super();
  factory GetRecognizerRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetRecognizerRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetRecognizerRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetRecognizerRequest clone() =>
      GetRecognizerRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetRecognizerRequest copyWith(void Function(GetRecognizerRequest) updates) =>
      super.copyWith((message) => updates(message as GetRecognizerRequest))
          as GetRecognizerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRecognizerRequest create() => GetRecognizerRequest._();
  GetRecognizerRequest createEmptyInstance() => create();
  static $pb.PbList<GetRecognizerRequest> createRepeated() =>
      $pb.PbList<GetRecognizerRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRecognizerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRecognizerRequest>(create);
  static GetRecognizerRequest? _defaultInstance;

  /// Required. The name of the Recognizer to retrieve. The expected format is
  /// `projects/{project}/locations/{location}/recognizers/{recognizer}`.
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
}

/// Request message for the
/// [UpdateRecognizer][google.cloud.speech.v2.Speech.UpdateRecognizer] method.
class UpdateRecognizerRequest extends $pb.GeneratedMessage {
  factory UpdateRecognizerRequest({
    Recognizer? recognizer,
    $4.FieldMask? updateMask,
    $core.bool? validateOnly,
  }) {
    final $result = create();
    if (recognizer != null) {
      $result.recognizer = recognizer;
    }
    if (updateMask != null) {
      $result.updateMask = updateMask;
    }
    if (validateOnly != null) {
      $result.validateOnly = validateOnly;
    }
    return $result;
  }
  UpdateRecognizerRequest._() : super();
  factory UpdateRecognizerRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateRecognizerRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateRecognizerRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOM<Recognizer>(1, _omitFieldNames ? '' : 'recognizer',
        subBuilder: Recognizer.create)
    ..aOM<$4.FieldMask>(2, _omitFieldNames ? '' : 'updateMask',
        subBuilder: $4.FieldMask.create)
    ..aOB(4, _omitFieldNames ? '' : 'validateOnly')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateRecognizerRequest clone() =>
      UpdateRecognizerRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateRecognizerRequest copyWith(
          void Function(UpdateRecognizerRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateRecognizerRequest))
          as UpdateRecognizerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRecognizerRequest create() => UpdateRecognizerRequest._();
  UpdateRecognizerRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRecognizerRequest> createRepeated() =>
      $pb.PbList<UpdateRecognizerRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRecognizerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateRecognizerRequest>(create);
  static UpdateRecognizerRequest? _defaultInstance;

  ///  Required. The Recognizer to update.
  ///
  ///  The Recognizer's `name` field is used to identify the Recognizer to update.
  ///  Format: `projects/{project}/locations/{location}/recognizers/{recognizer}`.
  @$pb.TagNumber(1)
  Recognizer get recognizer => $_getN(0);
  @$pb.TagNumber(1)
  set recognizer(Recognizer v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRecognizer() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecognizer() => clearField(1);
  @$pb.TagNumber(1)
  Recognizer ensureRecognizer() => $_ensure(0);

  /// The list of fields to update. If empty, all non-default valued fields are
  /// considered for update. Use `*` to update the entire Recognizer resource.
  @$pb.TagNumber(2)
  $4.FieldMask get updateMask => $_getN(1);
  @$pb.TagNumber(2)
  set updateMask($4.FieldMask v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdateMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateMask() => clearField(2);
  @$pb.TagNumber(2)
  $4.FieldMask ensureUpdateMask() => $_ensure(1);

  /// If set, validate the request and preview the updated Recognizer, but do not
  /// actually update it.
  @$pb.TagNumber(4)
  $core.bool get validateOnly => $_getBF(2);
  @$pb.TagNumber(4)
  set validateOnly($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasValidateOnly() => $_has(2);
  @$pb.TagNumber(4)
  void clearValidateOnly() => clearField(4);
}

/// Request message for the
/// [DeleteRecognizer][google.cloud.speech.v2.Speech.DeleteRecognizer] method.
class DeleteRecognizerRequest extends $pb.GeneratedMessage {
  factory DeleteRecognizerRequest({
    $core.String? name,
    $core.bool? validateOnly,
    $core.String? etag,
    $core.bool? allowMissing,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (validateOnly != null) {
      $result.validateOnly = validateOnly;
    }
    if (etag != null) {
      $result.etag = etag;
    }
    if (allowMissing != null) {
      $result.allowMissing = allowMissing;
    }
    return $result;
  }
  DeleteRecognizerRequest._() : super();
  factory DeleteRecognizerRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteRecognizerRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteRecognizerRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'validateOnly')
    ..aOS(3, _omitFieldNames ? '' : 'etag')
    ..aOB(4, _omitFieldNames ? '' : 'allowMissing')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteRecognizerRequest clone() =>
      DeleteRecognizerRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteRecognizerRequest copyWith(
          void Function(DeleteRecognizerRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteRecognizerRequest))
          as DeleteRecognizerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRecognizerRequest create() => DeleteRecognizerRequest._();
  DeleteRecognizerRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRecognizerRequest> createRepeated() =>
      $pb.PbList<DeleteRecognizerRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRecognizerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteRecognizerRequest>(create);
  static DeleteRecognizerRequest? _defaultInstance;

  /// Required. The name of the Recognizer to delete.
  /// Format: `projects/{project}/locations/{location}/recognizers/{recognizer}`
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

  /// If set, validate the request and preview the deleted Recognizer, but do not
  /// actually delete it.
  @$pb.TagNumber(2)
  $core.bool get validateOnly => $_getBF(1);
  @$pb.TagNumber(2)
  set validateOnly($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValidateOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidateOnly() => clearField(2);

  /// This checksum is computed by the server based on the value of other
  /// fields. This may be sent on update, undelete, and delete requests to ensure
  /// the client has an up-to-date value before proceeding.
  @$pb.TagNumber(3)
  $core.String get etag => $_getSZ(2);
  @$pb.TagNumber(3)
  set etag($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEtag() => $_has(2);
  @$pb.TagNumber(3)
  void clearEtag() => clearField(3);

  /// If set to true, and the Recognizer is not found, the request will succeed
  /// and  be a no-op (no Operation is recorded in this case).
  @$pb.TagNumber(4)
  $core.bool get allowMissing => $_getBF(3);
  @$pb.TagNumber(4)
  set allowMissing($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAllowMissing() => $_has(3);
  @$pb.TagNumber(4)
  void clearAllowMissing() => clearField(4);
}

/// Request message for the
/// [UndeleteRecognizer][google.cloud.speech.v2.Speech.UndeleteRecognizer]
/// method.
class UndeleteRecognizerRequest extends $pb.GeneratedMessage {
  factory UndeleteRecognizerRequest({
    $core.String? name,
    $core.bool? validateOnly,
    $core.String? etag,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (validateOnly != null) {
      $result.validateOnly = validateOnly;
    }
    if (etag != null) {
      $result.etag = etag;
    }
    return $result;
  }
  UndeleteRecognizerRequest._() : super();
  factory UndeleteRecognizerRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UndeleteRecognizerRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UndeleteRecognizerRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'validateOnly')
    ..aOS(4, _omitFieldNames ? '' : 'etag')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UndeleteRecognizerRequest clone() =>
      UndeleteRecognizerRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UndeleteRecognizerRequest copyWith(
          void Function(UndeleteRecognizerRequest) updates) =>
      super.copyWith((message) => updates(message as UndeleteRecognizerRequest))
          as UndeleteRecognizerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UndeleteRecognizerRequest create() => UndeleteRecognizerRequest._();
  UndeleteRecognizerRequest createEmptyInstance() => create();
  static $pb.PbList<UndeleteRecognizerRequest> createRepeated() =>
      $pb.PbList<UndeleteRecognizerRequest>();
  @$core.pragma('dart2js:noInline')
  static UndeleteRecognizerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UndeleteRecognizerRequest>(create);
  static UndeleteRecognizerRequest? _defaultInstance;

  /// Required. The name of the Recognizer to undelete.
  /// Format: `projects/{project}/locations/{location}/recognizers/{recognizer}`
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

  /// If set, validate the request and preview the undeleted Recognizer, but do
  /// not actually undelete it.
  @$pb.TagNumber(3)
  $core.bool get validateOnly => $_getBF(1);
  @$pb.TagNumber(3)
  set validateOnly($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasValidateOnly() => $_has(1);
  @$pb.TagNumber(3)
  void clearValidateOnly() => clearField(3);

  /// This checksum is computed by the server based on the value of other
  /// fields. This may be sent on update, undelete, and delete requests to ensure
  /// the client has an up-to-date value before proceeding.
  @$pb.TagNumber(4)
  $core.String get etag => $_getSZ(2);
  @$pb.TagNumber(4)
  set etag($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasEtag() => $_has(2);
  @$pb.TagNumber(4)
  void clearEtag() => clearField(4);
}

/// A Recognizer message. Stores recognition configuration and metadata.
class Recognizer extends $pb.GeneratedMessage {
  factory Recognizer({
    $core.String? name,
    $core.String? uid,
    $core.String? displayName,
    @$core.Deprecated('This field is deprecated.') $core.String? model,
    RecognitionConfig? defaultRecognitionConfig,
    $core.Map<$core.String, $core.String>? annotations,
    Recognizer_State? state,
    $3.Timestamp? createTime,
    $3.Timestamp? updateTime,
    $3.Timestamp? deleteTime,
    $core.String? etag,
    $core.bool? reconciling,
    $3.Timestamp? expireTime,
    $core.String? kmsKeyName,
    $core.String? kmsKeyVersionName,
    @$core.Deprecated('This field is deprecated.')
    $core.Iterable<$core.String>? languageCodes,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (displayName != null) {
      $result.displayName = displayName;
    }
    if (model != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.model = model;
    }
    if (defaultRecognitionConfig != null) {
      $result.defaultRecognitionConfig = defaultRecognitionConfig;
    }
    if (annotations != null) {
      $result.annotations.addAll(annotations);
    }
    if (state != null) {
      $result.state = state;
    }
    if (createTime != null) {
      $result.createTime = createTime;
    }
    if (updateTime != null) {
      $result.updateTime = updateTime;
    }
    if (deleteTime != null) {
      $result.deleteTime = deleteTime;
    }
    if (etag != null) {
      $result.etag = etag;
    }
    if (reconciling != null) {
      $result.reconciling = reconciling;
    }
    if (expireTime != null) {
      $result.expireTime = expireTime;
    }
    if (kmsKeyName != null) {
      $result.kmsKeyName = kmsKeyName;
    }
    if (kmsKeyVersionName != null) {
      $result.kmsKeyVersionName = kmsKeyVersionName;
    }
    if (languageCodes != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.languageCodes.addAll(languageCodes);
    }
    return $result;
  }
  Recognizer._() : super();
  factory Recognizer.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Recognizer.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Recognizer',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'uid')
    ..aOS(3, _omitFieldNames ? '' : 'displayName')
    ..aOS(4, _omitFieldNames ? '' : 'model')
    ..aOM<RecognitionConfig>(
        6, _omitFieldNames ? '' : 'defaultRecognitionConfig',
        subBuilder: RecognitionConfig.create)
    ..m<$core.String, $core.String>(7, _omitFieldNames ? '' : 'annotations',
        entryClassName: 'Recognizer.AnnotationsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('google.cloud.speech.v2'))
    ..e<Recognizer_State>(8, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE,
        defaultOrMaker: Recognizer_State.STATE_UNSPECIFIED,
        valueOf: Recognizer_State.valueOf,
        enumValues: Recognizer_State.values)
    ..aOM<$3.Timestamp>(9, _omitFieldNames ? '' : 'createTime',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(10, _omitFieldNames ? '' : 'updateTime',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(11, _omitFieldNames ? '' : 'deleteTime',
        subBuilder: $3.Timestamp.create)
    ..aOS(12, _omitFieldNames ? '' : 'etag')
    ..aOB(13, _omitFieldNames ? '' : 'reconciling')
    ..aOM<$3.Timestamp>(14, _omitFieldNames ? '' : 'expireTime',
        subBuilder: $3.Timestamp.create)
    ..aOS(15, _omitFieldNames ? '' : 'kmsKeyName')
    ..aOS(16, _omitFieldNames ? '' : 'kmsKeyVersionName')
    ..pPS(17, _omitFieldNames ? '' : 'languageCodes')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Recognizer clone() => Recognizer()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Recognizer copyWith(void Function(Recognizer) updates) =>
      super.copyWith((message) => updates(message as Recognizer)) as Recognizer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Recognizer create() => Recognizer._();
  Recognizer createEmptyInstance() => create();
  static $pb.PbList<Recognizer> createRepeated() => $pb.PbList<Recognizer>();
  @$core.pragma('dart2js:noInline')
  static Recognizer getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Recognizer>(create);
  static Recognizer? _defaultInstance;

  /// Output only. The resource name of the Recognizer.
  /// Format: `projects/{project}/locations/{location}/recognizers/{recognizer}`.
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

  /// Output only. System-assigned unique identifier for the Recognizer.
  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  /// User-settable, human-readable name for the Recognizer. Must be 63
  /// characters or less.
  @$pb.TagNumber(3)
  $core.String get displayName => $_getSZ(2);
  @$pb.TagNumber(3)
  set displayName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDisplayName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayName() => clearField(3);

  ///  Optional. Which model to use for recognition requests. Select the model
  ///  best suited to your domain to get best results.
  ///
  ///  Guidance for choosing which model to use can be found in the [Transcription
  ///  Models
  ///  Documentation](https://cloud.google.com/speech-to-text/v2/docs/transcription-model)
  ///  and the models supported in each region can be found in the [Table Of
  ///  Supported
  ///  Models](https://cloud.google.com/speech-to-text/v2/docs/speech-to-text-supported-languages).
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.String get model => $_getSZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set model($core.String v) {
    $_setString(3, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasModel() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearModel() => clearField(4);

  /// Default configuration to use for requests with this Recognizer.
  /// This can be overwritten by inline configuration in the
  /// [RecognizeRequest.config][google.cloud.speech.v2.RecognizeRequest.config]
  /// field.
  @$pb.TagNumber(6)
  RecognitionConfig get defaultRecognitionConfig => $_getN(4);
  @$pb.TagNumber(6)
  set defaultRecognitionConfig(RecognitionConfig v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDefaultRecognitionConfig() => $_has(4);
  @$pb.TagNumber(6)
  void clearDefaultRecognitionConfig() => clearField(6);
  @$pb.TagNumber(6)
  RecognitionConfig ensureDefaultRecognitionConfig() => $_ensure(4);

  /// Allows users to store small amounts of arbitrary data.
  /// Both the key and the value must be 63 characters or less each.
  /// At most 100 annotations.
  @$pb.TagNumber(7)
  $core.Map<$core.String, $core.String> get annotations => $_getMap(5);

  /// Output only. The Recognizer lifecycle state.
  @$pb.TagNumber(8)
  Recognizer_State get state => $_getN(6);
  @$pb.TagNumber(8)
  set state(Recognizer_State v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasState() => $_has(6);
  @$pb.TagNumber(8)
  void clearState() => clearField(8);

  /// Output only. Creation time.
  @$pb.TagNumber(9)
  $3.Timestamp get createTime => $_getN(7);
  @$pb.TagNumber(9)
  set createTime($3.Timestamp v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasCreateTime() => $_has(7);
  @$pb.TagNumber(9)
  void clearCreateTime() => clearField(9);
  @$pb.TagNumber(9)
  $3.Timestamp ensureCreateTime() => $_ensure(7);

  /// Output only. The most recent time this Recognizer was modified.
  @$pb.TagNumber(10)
  $3.Timestamp get updateTime => $_getN(8);
  @$pb.TagNumber(10)
  set updateTime($3.Timestamp v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasUpdateTime() => $_has(8);
  @$pb.TagNumber(10)
  void clearUpdateTime() => clearField(10);
  @$pb.TagNumber(10)
  $3.Timestamp ensureUpdateTime() => $_ensure(8);

  /// Output only. The time at which this Recognizer was requested for deletion.
  @$pb.TagNumber(11)
  $3.Timestamp get deleteTime => $_getN(9);
  @$pb.TagNumber(11)
  set deleteTime($3.Timestamp v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDeleteTime() => $_has(9);
  @$pb.TagNumber(11)
  void clearDeleteTime() => clearField(11);
  @$pb.TagNumber(11)
  $3.Timestamp ensureDeleteTime() => $_ensure(9);

  /// Output only. This checksum is computed by the server based on the value of
  /// other fields. This may be sent on update, undelete, and delete requests to
  /// ensure the client has an up-to-date value before proceeding.
  @$pb.TagNumber(12)
  $core.String get etag => $_getSZ(10);
  @$pb.TagNumber(12)
  set etag($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasEtag() => $_has(10);
  @$pb.TagNumber(12)
  void clearEtag() => clearField(12);

  /// Output only. Whether or not this Recognizer is in the process of being
  /// updated.
  @$pb.TagNumber(13)
  $core.bool get reconciling => $_getBF(11);
  @$pb.TagNumber(13)
  set reconciling($core.bool v) {
    $_setBool(11, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasReconciling() => $_has(11);
  @$pb.TagNumber(13)
  void clearReconciling() => clearField(13);

  /// Output only. The time at which this Recognizer will be purged.
  @$pb.TagNumber(14)
  $3.Timestamp get expireTime => $_getN(12);
  @$pb.TagNumber(14)
  set expireTime($3.Timestamp v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasExpireTime() => $_has(12);
  @$pb.TagNumber(14)
  void clearExpireTime() => clearField(14);
  @$pb.TagNumber(14)
  $3.Timestamp ensureExpireTime() => $_ensure(12);

  /// Output only. The [KMS key
  /// name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with which
  /// the Recognizer is encrypted. The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  @$pb.TagNumber(15)
  $core.String get kmsKeyName => $_getSZ(13);
  @$pb.TagNumber(15)
  set kmsKeyName($core.String v) {
    $_setString(13, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasKmsKeyName() => $_has(13);
  @$pb.TagNumber(15)
  void clearKmsKeyName() => clearField(15);

  /// Output only. The [KMS key version
  /// name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions)
  /// with which the Recognizer is encrypted. The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  @$pb.TagNumber(16)
  $core.String get kmsKeyVersionName => $_getSZ(14);
  @$pb.TagNumber(16)
  set kmsKeyVersionName($core.String v) {
    $_setString(14, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasKmsKeyVersionName() => $_has(14);
  @$pb.TagNumber(16)
  void clearKmsKeyVersionName() => clearField(16);

  ///  Optional. The language of the supplied audio as a
  ///  [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag.
  ///
  ///  Supported languages for each model are listed in the [Table of Supported
  ///  Models](https://cloud.google.com/speech-to-text/v2/docs/speech-to-text-supported-languages).
  ///
  ///  If additional languages are provided, recognition result will contain
  ///  recognition in the most likely language detected. The recognition result
  ///  will include the language tag of the language detected in the audio.
  ///  When you create or update a Recognizer, these values are
  ///  stored in normalized BCP-47 form. For example, "en-us" is stored as
  ///  "en-US".
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(17)
  $core.List<$core.String> get languageCodes => $_getList(15);
}

///  Automatically detected decoding parameters.
///  Supported for the following encodings:
///
///  * WAV_LINEAR16: 16-bit signed little-endian PCM samples in a WAV container.
///
///  * WAV_MULAW: 8-bit companded mulaw samples in a WAV container.
///
///  * WAV_ALAW: 8-bit companded alaw samples in a WAV container.
///
///  * RFC4867_5_AMR: AMR frames with an rfc4867.5 header.
///
///  * RFC4867_5_AMRWB: AMR-WB frames with an rfc4867.5 header.
///
///  * FLAC: FLAC frames in the "native FLAC" container format.
///
///  * MP3: MPEG audio frames with optional (ignored) ID3 metadata.
///
///  * OGG_OPUS: Opus audio frames in an Ogg container.
///
///  * WEBM_OPUS: Opus audio frames in a WebM container.
class AutoDetectDecodingConfig extends $pb.GeneratedMessage {
  factory AutoDetectDecodingConfig() => create();
  AutoDetectDecodingConfig._() : super();
  factory AutoDetectDecodingConfig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AutoDetectDecodingConfig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AutoDetectDecodingConfig',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AutoDetectDecodingConfig clone() =>
      AutoDetectDecodingConfig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AutoDetectDecodingConfig copyWith(
          void Function(AutoDetectDecodingConfig) updates) =>
      super.copyWith((message) => updates(message as AutoDetectDecodingConfig))
          as AutoDetectDecodingConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AutoDetectDecodingConfig create() => AutoDetectDecodingConfig._();
  AutoDetectDecodingConfig createEmptyInstance() => create();
  static $pb.PbList<AutoDetectDecodingConfig> createRepeated() =>
      $pb.PbList<AutoDetectDecodingConfig>();
  @$core.pragma('dart2js:noInline')
  static AutoDetectDecodingConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AutoDetectDecodingConfig>(create);
  static AutoDetectDecodingConfig? _defaultInstance;
}

/// Explicitly specified decoding parameters.
class ExplicitDecodingConfig extends $pb.GeneratedMessage {
  factory ExplicitDecodingConfig({
    ExplicitDecodingConfig_AudioEncoding? encoding,
    $core.int? sampleRateHertz,
    $core.int? audioChannelCount,
  }) {
    final $result = create();
    if (encoding != null) {
      $result.encoding = encoding;
    }
    if (sampleRateHertz != null) {
      $result.sampleRateHertz = sampleRateHertz;
    }
    if (audioChannelCount != null) {
      $result.audioChannelCount = audioChannelCount;
    }
    return $result;
  }
  ExplicitDecodingConfig._() : super();
  factory ExplicitDecodingConfig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExplicitDecodingConfig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExplicitDecodingConfig',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..e<ExplicitDecodingConfig_AudioEncoding>(
        1, _omitFieldNames ? '' : 'encoding', $pb.PbFieldType.OE,
        defaultOrMaker:
            ExplicitDecodingConfig_AudioEncoding.AUDIO_ENCODING_UNSPECIFIED,
        valueOf: ExplicitDecodingConfig_AudioEncoding.valueOf,
        enumValues: ExplicitDecodingConfig_AudioEncoding.values)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'sampleRateHertz', $pb.PbFieldType.O3)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'audioChannelCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExplicitDecodingConfig clone() =>
      ExplicitDecodingConfig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExplicitDecodingConfig copyWith(
          void Function(ExplicitDecodingConfig) updates) =>
      super.copyWith((message) => updates(message as ExplicitDecodingConfig))
          as ExplicitDecodingConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExplicitDecodingConfig create() => ExplicitDecodingConfig._();
  ExplicitDecodingConfig createEmptyInstance() => create();
  static $pb.PbList<ExplicitDecodingConfig> createRepeated() =>
      $pb.PbList<ExplicitDecodingConfig>();
  @$core.pragma('dart2js:noInline')
  static ExplicitDecodingConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExplicitDecodingConfig>(create);
  static ExplicitDecodingConfig? _defaultInstance;

  /// Required. Encoding of the audio data sent for recognition.
  @$pb.TagNumber(1)
  ExplicitDecodingConfig_AudioEncoding get encoding => $_getN(0);
  @$pb.TagNumber(1)
  set encoding(ExplicitDecodingConfig_AudioEncoding v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEncoding() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncoding() => clearField(1);

  ///  Sample rate in Hertz of the audio data sent for recognition. Valid
  ///  values are: 8000-48000. 16000 is optimal. For best results, set the
  ///  sampling rate of the audio source to 16000 Hz. If that's not possible, use
  ///  the native sample rate of the audio source (instead of re-sampling).
  ///  Supported for the following encodings:
  ///
  ///  * LINEAR16: Headerless 16-bit signed little-endian PCM samples.
  ///
  ///  * MULAW: Headerless 8-bit companded mulaw samples.
  ///
  ///  * ALAW: Headerless 8-bit companded alaw samples.
  @$pb.TagNumber(2)
  $core.int get sampleRateHertz => $_getIZ(1);
  @$pb.TagNumber(2)
  set sampleRateHertz($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSampleRateHertz() => $_has(1);
  @$pb.TagNumber(2)
  void clearSampleRateHertz() => clearField(2);

  ///  Number of channels present in the audio data sent for recognition.
  ///  Supported for the following encodings:
  ///
  ///  * LINEAR16: Headerless 16-bit signed little-endian PCM samples.
  ///
  ///  * MULAW: Headerless 8-bit companded mulaw samples.
  ///
  ///  * ALAW: Headerless 8-bit companded alaw samples.
  ///
  ///  The maximum allowed value is 8.
  @$pb.TagNumber(3)
  $core.int get audioChannelCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set audioChannelCount($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAudioChannelCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAudioChannelCount() => clearField(3);
}

/// Configuration to enable speaker diarization.
class SpeakerDiarizationConfig extends $pb.GeneratedMessage {
  factory SpeakerDiarizationConfig({
    $core.int? minSpeakerCount,
    $core.int? maxSpeakerCount,
  }) {
    final $result = create();
    if (minSpeakerCount != null) {
      $result.minSpeakerCount = minSpeakerCount;
    }
    if (maxSpeakerCount != null) {
      $result.maxSpeakerCount = maxSpeakerCount;
    }
    return $result;
  }
  SpeakerDiarizationConfig._() : super();
  factory SpeakerDiarizationConfig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpeakerDiarizationConfig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpeakerDiarizationConfig',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'minSpeakerCount', $pb.PbFieldType.O3)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'maxSpeakerCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpeakerDiarizationConfig clone() =>
      SpeakerDiarizationConfig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpeakerDiarizationConfig copyWith(
          void Function(SpeakerDiarizationConfig) updates) =>
      super.copyWith((message) => updates(message as SpeakerDiarizationConfig))
          as SpeakerDiarizationConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeakerDiarizationConfig create() => SpeakerDiarizationConfig._();
  SpeakerDiarizationConfig createEmptyInstance() => create();
  static $pb.PbList<SpeakerDiarizationConfig> createRepeated() =>
      $pb.PbList<SpeakerDiarizationConfig>();
  @$core.pragma('dart2js:noInline')
  static SpeakerDiarizationConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpeakerDiarizationConfig>(create);
  static SpeakerDiarizationConfig? _defaultInstance;

  ///  Required. Minimum number of speakers in the conversation. This range gives
  ///  you more flexibility by allowing the system to automatically determine the
  ///  correct number of speakers.
  ///
  ///  To fix the number of speakers detected in the audio, set
  ///  `min_speaker_count` = `max_speaker_count`.
  @$pb.TagNumber(2)
  $core.int get minSpeakerCount => $_getIZ(0);
  @$pb.TagNumber(2)
  set minSpeakerCount($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMinSpeakerCount() => $_has(0);
  @$pb.TagNumber(2)
  void clearMinSpeakerCount() => clearField(2);

  /// Required. Maximum number of speakers in the conversation. Valid values are:
  /// 1-6. Must be >= `min_speaker_count`. This range gives you more flexibility
  /// by allowing the system to automatically determine the correct number of
  /// speakers.
  @$pb.TagNumber(3)
  $core.int get maxSpeakerCount => $_getIZ(1);
  @$pb.TagNumber(3)
  set maxSpeakerCount($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMaxSpeakerCount() => $_has(1);
  @$pb.TagNumber(3)
  void clearMaxSpeakerCount() => clearField(3);
}

/// Available recognition features.
class RecognitionFeatures extends $pb.GeneratedMessage {
  factory RecognitionFeatures({
    $core.bool? profanityFilter,
    $core.bool? enableWordTimeOffsets,
    $core.bool? enableWordConfidence,
    $core.bool? enableAutomaticPunctuation,
    SpeakerDiarizationConfig? diarizationConfig,
    $core.bool? enableSpokenPunctuation,
    $core.bool? enableSpokenEmojis,
    $core.int? maxAlternatives,
    RecognitionFeatures_MultiChannelMode? multiChannelMode,
  }) {
    final $result = create();
    if (profanityFilter != null) {
      $result.profanityFilter = profanityFilter;
    }
    if (enableWordTimeOffsets != null) {
      $result.enableWordTimeOffsets = enableWordTimeOffsets;
    }
    if (enableWordConfidence != null) {
      $result.enableWordConfidence = enableWordConfidence;
    }
    if (enableAutomaticPunctuation != null) {
      $result.enableAutomaticPunctuation = enableAutomaticPunctuation;
    }
    if (diarizationConfig != null) {
      $result.diarizationConfig = diarizationConfig;
    }
    if (enableSpokenPunctuation != null) {
      $result.enableSpokenPunctuation = enableSpokenPunctuation;
    }
    if (enableSpokenEmojis != null) {
      $result.enableSpokenEmojis = enableSpokenEmojis;
    }
    if (maxAlternatives != null) {
      $result.maxAlternatives = maxAlternatives;
    }
    if (multiChannelMode != null) {
      $result.multiChannelMode = multiChannelMode;
    }
    return $result;
  }
  RecognitionFeatures._() : super();
  factory RecognitionFeatures.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RecognitionFeatures.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecognitionFeatures',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'profanityFilter')
    ..aOB(2, _omitFieldNames ? '' : 'enableWordTimeOffsets')
    ..aOB(3, _omitFieldNames ? '' : 'enableWordConfidence')
    ..aOB(4, _omitFieldNames ? '' : 'enableAutomaticPunctuation')
    ..aOM<SpeakerDiarizationConfig>(
        9, _omitFieldNames ? '' : 'diarizationConfig',
        subBuilder: SpeakerDiarizationConfig.create)
    ..aOB(14, _omitFieldNames ? '' : 'enableSpokenPunctuation')
    ..aOB(15, _omitFieldNames ? '' : 'enableSpokenEmojis')
    ..a<$core.int>(
        16, _omitFieldNames ? '' : 'maxAlternatives', $pb.PbFieldType.O3)
    ..e<RecognitionFeatures_MultiChannelMode>(
        17, _omitFieldNames ? '' : 'multiChannelMode', $pb.PbFieldType.OE,
        defaultOrMaker:
            RecognitionFeatures_MultiChannelMode.MULTI_CHANNEL_MODE_UNSPECIFIED,
        valueOf: RecognitionFeatures_MultiChannelMode.valueOf,
        enumValues: RecognitionFeatures_MultiChannelMode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RecognitionFeatures clone() => RecognitionFeatures()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RecognitionFeatures copyWith(void Function(RecognitionFeatures) updates) =>
      super.copyWith((message) => updates(message as RecognitionFeatures))
          as RecognitionFeatures;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecognitionFeatures create() => RecognitionFeatures._();
  RecognitionFeatures createEmptyInstance() => create();
  static $pb.PbList<RecognitionFeatures> createRepeated() =>
      $pb.PbList<RecognitionFeatures>();
  @$core.pragma('dart2js:noInline')
  static RecognitionFeatures getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecognitionFeatures>(create);
  static RecognitionFeatures? _defaultInstance;

  /// If set to `true`, the server will attempt to filter out profanities,
  /// replacing all but the initial character in each filtered word with
  /// asterisks, for instance, "f***". If set to `false` or omitted, profanities
  /// won't be filtered out.
  @$pb.TagNumber(1)
  $core.bool get profanityFilter => $_getBF(0);
  @$pb.TagNumber(1)
  set profanityFilter($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProfanityFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfanityFilter() => clearField(1);

  /// If `true`, the top result includes a list of words and the start and end
  /// time offsets (timestamps) for those words. If `false`, no word-level time
  /// offset information is returned. The default is `false`.
  @$pb.TagNumber(2)
  $core.bool get enableWordTimeOffsets => $_getBF(1);
  @$pb.TagNumber(2)
  set enableWordTimeOffsets($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEnableWordTimeOffsets() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnableWordTimeOffsets() => clearField(2);

  /// If `true`, the top result includes a list of words and the confidence for
  /// those words. If `false`, no word-level confidence information is returned.
  /// The default is `false`.
  @$pb.TagNumber(3)
  $core.bool get enableWordConfidence => $_getBF(2);
  @$pb.TagNumber(3)
  set enableWordConfidence($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEnableWordConfidence() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnableWordConfidence() => clearField(3);

  /// If `true`, adds punctuation to recognition result hypotheses. This feature
  /// is only available in select languages. The default `false` value does not
  /// add punctuation to result hypotheses.
  @$pb.TagNumber(4)
  $core.bool get enableAutomaticPunctuation => $_getBF(3);
  @$pb.TagNumber(4)
  set enableAutomaticPunctuation($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasEnableAutomaticPunctuation() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnableAutomaticPunctuation() => clearField(4);

  /// Configuration to enable speaker diarization and set additional
  /// parameters to make diarization better suited for your application.
  /// When this is enabled, we send all the words from the beginning of the
  /// audio for the top alternative in every consecutive STREAMING responses.
  /// This is done in order to improve our speaker tags as our models learn to
  /// identify the speakers in the conversation over time.
  /// For non-streaming requests, the diarization results will be provided only
  /// in the top alternative of the FINAL SpeechRecognitionResult.
  @$pb.TagNumber(9)
  SpeakerDiarizationConfig get diarizationConfig => $_getN(4);
  @$pb.TagNumber(9)
  set diarizationConfig(SpeakerDiarizationConfig v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasDiarizationConfig() => $_has(4);
  @$pb.TagNumber(9)
  void clearDiarizationConfig() => clearField(9);
  @$pb.TagNumber(9)
  SpeakerDiarizationConfig ensureDiarizationConfig() => $_ensure(4);

  /// The spoken punctuation behavior for the call. If `true`, replaces spoken
  /// punctuation with the corresponding symbols in the request. For example,
  /// "how are you question mark" becomes "how are you?". See
  /// https://cloud.google.com/speech-to-text/docs/spoken-punctuation for
  /// support. If `false`, spoken punctuation is not replaced.
  @$pb.TagNumber(14)
  $core.bool get enableSpokenPunctuation => $_getBF(5);
  @$pb.TagNumber(14)
  set enableSpokenPunctuation($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasEnableSpokenPunctuation() => $_has(5);
  @$pb.TagNumber(14)
  void clearEnableSpokenPunctuation() => clearField(14);

  /// The spoken emoji behavior for the call. If `true`, adds spoken emoji
  /// formatting for the request. This will replace spoken emojis with the
  /// corresponding Unicode symbols in the final transcript. If `false`, spoken
  /// emojis are not replaced.
  @$pb.TagNumber(15)
  $core.bool get enableSpokenEmojis => $_getBF(6);
  @$pb.TagNumber(15)
  set enableSpokenEmojis($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasEnableSpokenEmojis() => $_has(6);
  @$pb.TagNumber(15)
  void clearEnableSpokenEmojis() => clearField(15);

  /// Maximum number of recognition hypotheses to be returned.
  /// The server may return fewer than `max_alternatives`.
  /// Valid values are `0`-`30`. A value of `0` or `1` will return a maximum of
  /// one. If omitted, will return a maximum of one.
  @$pb.TagNumber(16)
  $core.int get maxAlternatives => $_getIZ(7);
  @$pb.TagNumber(16)
  set maxAlternatives($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasMaxAlternatives() => $_has(7);
  @$pb.TagNumber(16)
  void clearMaxAlternatives() => clearField(16);

  /// Mode for recognizing multi-channel audio.
  @$pb.TagNumber(17)
  RecognitionFeatures_MultiChannelMode get multiChannelMode => $_getN(8);
  @$pb.TagNumber(17)
  set multiChannelMode(RecognitionFeatures_MultiChannelMode v) {
    setField(17, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasMultiChannelMode() => $_has(8);
  @$pb.TagNumber(17)
  void clearMultiChannelMode() => clearField(17);
}

enum SpeechAdaptation_AdaptationPhraseSet_Value {
  phraseSet,
  inlinePhraseSet,
  notSet
}

/// A biasing PhraseSet, which can be either a string referencing the name of
/// an existing PhraseSets resource, or an inline definition of a PhraseSet.
class SpeechAdaptation_AdaptationPhraseSet extends $pb.GeneratedMessage {
  factory SpeechAdaptation_AdaptationPhraseSet({
    $core.String? phraseSet,
    PhraseSet? inlinePhraseSet,
  }) {
    final $result = create();
    if (phraseSet != null) {
      $result.phraseSet = phraseSet;
    }
    if (inlinePhraseSet != null) {
      $result.inlinePhraseSet = inlinePhraseSet;
    }
    return $result;
  }
  SpeechAdaptation_AdaptationPhraseSet._() : super();
  factory SpeechAdaptation_AdaptationPhraseSet.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpeechAdaptation_AdaptationPhraseSet.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SpeechAdaptation_AdaptationPhraseSet_Value>
      _SpeechAdaptation_AdaptationPhraseSet_ValueByTag = {
    1: SpeechAdaptation_AdaptationPhraseSet_Value.phraseSet,
    2: SpeechAdaptation_AdaptationPhraseSet_Value.inlinePhraseSet,
    0: SpeechAdaptation_AdaptationPhraseSet_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpeechAdaptation.AdaptationPhraseSet',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'phraseSet')
    ..aOM<PhraseSet>(2, _omitFieldNames ? '' : 'inlinePhraseSet',
        subBuilder: PhraseSet.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpeechAdaptation_AdaptationPhraseSet clone() =>
      SpeechAdaptation_AdaptationPhraseSet()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpeechAdaptation_AdaptationPhraseSet copyWith(
          void Function(SpeechAdaptation_AdaptationPhraseSet) updates) =>
      super.copyWith((message) =>
              updates(message as SpeechAdaptation_AdaptationPhraseSet))
          as SpeechAdaptation_AdaptationPhraseSet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeechAdaptation_AdaptationPhraseSet create() =>
      SpeechAdaptation_AdaptationPhraseSet._();
  SpeechAdaptation_AdaptationPhraseSet createEmptyInstance() => create();
  static $pb.PbList<SpeechAdaptation_AdaptationPhraseSet> createRepeated() =>
      $pb.PbList<SpeechAdaptation_AdaptationPhraseSet>();
  @$core.pragma('dart2js:noInline')
  static SpeechAdaptation_AdaptationPhraseSet getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SpeechAdaptation_AdaptationPhraseSet>(create);
  static SpeechAdaptation_AdaptationPhraseSet? _defaultInstance;

  SpeechAdaptation_AdaptationPhraseSet_Value whichValue() =>
      _SpeechAdaptation_AdaptationPhraseSet_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  /// The name of an existing PhraseSet resource. The user must have read
  /// access to the resource and it must not be deleted.
  @$pb.TagNumber(1)
  $core.String get phraseSet => $_getSZ(0);
  @$pb.TagNumber(1)
  set phraseSet($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPhraseSet() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhraseSet() => clearField(1);

  /// An inline defined PhraseSet.
  @$pb.TagNumber(2)
  PhraseSet get inlinePhraseSet => $_getN(1);
  @$pb.TagNumber(2)
  set inlinePhraseSet(PhraseSet v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInlinePhraseSet() => $_has(1);
  @$pb.TagNumber(2)
  void clearInlinePhraseSet() => clearField(2);
  @$pb.TagNumber(2)
  PhraseSet ensureInlinePhraseSet() => $_ensure(1);
}

/// Provides "hints" to the speech recognizer to favor specific words and phrases
/// in the results. PhraseSets can be specified as an inline resource, or a
/// reference to an existing PhraseSet resource.
class SpeechAdaptation extends $pb.GeneratedMessage {
  factory SpeechAdaptation({
    $core.Iterable<SpeechAdaptation_AdaptationPhraseSet>? phraseSets,
    $core.Iterable<CustomClass>? customClasses,
  }) {
    final $result = create();
    if (phraseSets != null) {
      $result.phraseSets.addAll(phraseSets);
    }
    if (customClasses != null) {
      $result.customClasses.addAll(customClasses);
    }
    return $result;
  }
  SpeechAdaptation._() : super();
  factory SpeechAdaptation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpeechAdaptation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpeechAdaptation',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..pc<SpeechAdaptation_AdaptationPhraseSet>(
        1, _omitFieldNames ? '' : 'phraseSets', $pb.PbFieldType.PM,
        subBuilder: SpeechAdaptation_AdaptationPhraseSet.create)
    ..pc<CustomClass>(
        2, _omitFieldNames ? '' : 'customClasses', $pb.PbFieldType.PM,
        subBuilder: CustomClass.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpeechAdaptation clone() => SpeechAdaptation()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpeechAdaptation copyWith(void Function(SpeechAdaptation) updates) =>
      super.copyWith((message) => updates(message as SpeechAdaptation))
          as SpeechAdaptation;

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

  /// A list of inline or referenced PhraseSets.
  @$pb.TagNumber(1)
  $core.List<SpeechAdaptation_AdaptationPhraseSet> get phraseSets =>
      $_getList(0);

  /// A list of inline CustomClasses. Existing CustomClass resources can be
  /// referenced directly in a PhraseSet.
  @$pb.TagNumber(2)
  $core.List<CustomClass> get customClasses => $_getList(1);
}

enum RecognitionConfig_DecodingConfig {
  autoDecodingConfig,
  explicitDecodingConfig,
  notSet
}

/// Provides information to the Recognizer that specifies how to process the
/// recognition request.
class RecognitionConfig extends $pb.GeneratedMessage {
  factory RecognitionConfig({
    RecognitionFeatures? features,
    SpeechAdaptation? adaptation,
    AutoDetectDecodingConfig? autoDecodingConfig,
    ExplicitDecodingConfig? explicitDecodingConfig,
    $core.String? model,
    $core.Iterable<$core.String>? languageCodes,
  }) {
    final $result = create();
    if (features != null) {
      $result.features = features;
    }
    if (adaptation != null) {
      $result.adaptation = adaptation;
    }
    if (autoDecodingConfig != null) {
      $result.autoDecodingConfig = autoDecodingConfig;
    }
    if (explicitDecodingConfig != null) {
      $result.explicitDecodingConfig = explicitDecodingConfig;
    }
    if (model != null) {
      $result.model = model;
    }
    if (languageCodes != null) {
      $result.languageCodes.addAll(languageCodes);
    }
    return $result;
  }
  RecognitionConfig._() : super();
  factory RecognitionConfig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RecognitionConfig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RecognitionConfig_DecodingConfig>
      _RecognitionConfig_DecodingConfigByTag = {
    7: RecognitionConfig_DecodingConfig.autoDecodingConfig,
    8: RecognitionConfig_DecodingConfig.explicitDecodingConfig,
    0: RecognitionConfig_DecodingConfig.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecognitionConfig',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..oo(0, [7, 8])
    ..aOM<RecognitionFeatures>(2, _omitFieldNames ? '' : 'features',
        subBuilder: RecognitionFeatures.create)
    ..aOM<SpeechAdaptation>(6, _omitFieldNames ? '' : 'adaptation',
        subBuilder: SpeechAdaptation.create)
    ..aOM<AutoDetectDecodingConfig>(
        7, _omitFieldNames ? '' : 'autoDecodingConfig',
        subBuilder: AutoDetectDecodingConfig.create)
    ..aOM<ExplicitDecodingConfig>(
        8, _omitFieldNames ? '' : 'explicitDecodingConfig',
        subBuilder: ExplicitDecodingConfig.create)
    ..aOS(9, _omitFieldNames ? '' : 'model')
    ..pPS(10, _omitFieldNames ? '' : 'languageCodes')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RecognitionConfig clone() => RecognitionConfig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RecognitionConfig copyWith(void Function(RecognitionConfig) updates) =>
      super.copyWith((message) => updates(message as RecognitionConfig))
          as RecognitionConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecognitionConfig create() => RecognitionConfig._();
  RecognitionConfig createEmptyInstance() => create();
  static $pb.PbList<RecognitionConfig> createRepeated() =>
      $pb.PbList<RecognitionConfig>();
  @$core.pragma('dart2js:noInline')
  static RecognitionConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecognitionConfig>(create);
  static RecognitionConfig? _defaultInstance;

  RecognitionConfig_DecodingConfig whichDecodingConfig() =>
      _RecognitionConfig_DecodingConfigByTag[$_whichOneof(0)]!;
  void clearDecodingConfig() => clearField($_whichOneof(0));

  /// Speech recognition features to enable.
  @$pb.TagNumber(2)
  RecognitionFeatures get features => $_getN(0);
  @$pb.TagNumber(2)
  set features(RecognitionFeatures v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFeatures() => $_has(0);
  @$pb.TagNumber(2)
  void clearFeatures() => clearField(2);
  @$pb.TagNumber(2)
  RecognitionFeatures ensureFeatures() => $_ensure(0);

  /// Speech adaptation context that weights recognizer predictions for specific
  /// words and phrases.
  @$pb.TagNumber(6)
  SpeechAdaptation get adaptation => $_getN(1);
  @$pb.TagNumber(6)
  set adaptation(SpeechAdaptation v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAdaptation() => $_has(1);
  @$pb.TagNumber(6)
  void clearAdaptation() => clearField(6);
  @$pb.TagNumber(6)
  SpeechAdaptation ensureAdaptation() => $_ensure(1);

  /// Automatically detect decoding parameters.
  /// Preferred for supported formats.
  @$pb.TagNumber(7)
  AutoDetectDecodingConfig get autoDecodingConfig => $_getN(2);
  @$pb.TagNumber(7)
  set autoDecodingConfig(AutoDetectDecodingConfig v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasAutoDecodingConfig() => $_has(2);
  @$pb.TagNumber(7)
  void clearAutoDecodingConfig() => clearField(7);
  @$pb.TagNumber(7)
  AutoDetectDecodingConfig ensureAutoDecodingConfig() => $_ensure(2);

  /// Explicitly specified decoding parameters.
  /// Required if using headerless PCM audio (linear16, mulaw, alaw).
  @$pb.TagNumber(8)
  ExplicitDecodingConfig get explicitDecodingConfig => $_getN(3);
  @$pb.TagNumber(8)
  set explicitDecodingConfig(ExplicitDecodingConfig v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasExplicitDecodingConfig() => $_has(3);
  @$pb.TagNumber(8)
  void clearExplicitDecodingConfig() => clearField(8);
  @$pb.TagNumber(8)
  ExplicitDecodingConfig ensureExplicitDecodingConfig() => $_ensure(3);

  ///  Optional. Which model to use for recognition requests. Select the model
  ///  best suited to your domain to get best results.
  ///
  ///  Guidance for choosing which model to use can be found in the [Transcription
  ///  Models
  ///  Documentation](https://cloud.google.com/speech-to-text/v2/docs/transcription-model)
  ///  and the models supported in each region can be found in the [Table Of
  ///  Supported
  ///  Models](https://cloud.google.com/speech-to-text/v2/docs/speech-to-text-supported-languages).
  @$pb.TagNumber(9)
  $core.String get model => $_getSZ(4);
  @$pb.TagNumber(9)
  set model($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasModel() => $_has(4);
  @$pb.TagNumber(9)
  void clearModel() => clearField(9);

  ///  Optional. The language of the supplied audio as a
  ///  [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag.
  ///  Language tags are normalized to BCP-47 before they are used eg "en-us"
  ///  becomes "en-US".
  ///
  ///  Supported languages for each model are listed in the [Table of Supported
  ///  Models](https://cloud.google.com/speech-to-text/v2/docs/speech-to-text-supported-languages).
  ///
  ///  If additional languages are provided, recognition result will contain
  ///  recognition in the most likely language detected. The recognition result
  ///  will include the language tag of the language detected in the audio.
  @$pb.TagNumber(10)
  $core.List<$core.String> get languageCodes => $_getList(5);
}

enum RecognizeRequest_AudioSource { content, uri, notSet }

/// Request message for the
/// [Recognize][google.cloud.speech.v2.Speech.Recognize] method. Either
/// `content` or `uri` must be supplied. Supplying both or neither returns
/// [INVALID_ARGUMENT][google.rpc.Code.INVALID_ARGUMENT]. See [content
/// limits](https://cloud.google.com/speech-to-text/quotas#content).
class RecognizeRequest extends $pb.GeneratedMessage {
  factory RecognizeRequest({
    RecognitionConfig? config,
    $core.String? recognizer,
    $core.List<$core.int>? content,
    $core.String? uri,
    $4.FieldMask? configMask,
  }) {
    final $result = create();
    if (config != null) {
      $result.config = config;
    }
    if (recognizer != null) {
      $result.recognizer = recognizer;
    }
    if (content != null) {
      $result.content = content;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    if (configMask != null) {
      $result.configMask = configMask;
    }
    return $result;
  }
  RecognizeRequest._() : super();
  factory RecognizeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RecognizeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RecognizeRequest_AudioSource>
      _RecognizeRequest_AudioSourceByTag = {
    5: RecognizeRequest_AudioSource.content,
    6: RecognizeRequest_AudioSource.uri,
    0: RecognizeRequest_AudioSource.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecognizeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..oo(0, [5, 6])
    ..aOM<RecognitionConfig>(1, _omitFieldNames ? '' : 'config',
        subBuilder: RecognitionConfig.create)
    ..aOS(3, _omitFieldNames ? '' : 'recognizer')
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..aOS(6, _omitFieldNames ? '' : 'uri')
    ..aOM<$4.FieldMask>(8, _omitFieldNames ? '' : 'configMask',
        subBuilder: $4.FieldMask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RecognizeRequest clone() => RecognizeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RecognizeRequest copyWith(void Function(RecognizeRequest) updates) =>
      super.copyWith((message) => updates(message as RecognizeRequest))
          as RecognizeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecognizeRequest create() => RecognizeRequest._();
  RecognizeRequest createEmptyInstance() => create();
  static $pb.PbList<RecognizeRequest> createRepeated() =>
      $pb.PbList<RecognizeRequest>();
  @$core.pragma('dart2js:noInline')
  static RecognizeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecognizeRequest>(create);
  static RecognizeRequest? _defaultInstance;

  RecognizeRequest_AudioSource whichAudioSource() =>
      _RecognizeRequest_AudioSourceByTag[$_whichOneof(0)]!;
  void clearAudioSource() => clearField($_whichOneof(0));

  /// Features and audio metadata to use for the Automatic Speech Recognition.
  /// This field in combination with the
  /// [config_mask][google.cloud.speech.v2.RecognizeRequest.config_mask] field
  /// can be used to override parts of the
  /// [default_recognition_config][google.cloud.speech.v2.Recognizer.default_recognition_config]
  /// of the Recognizer resource.
  @$pb.TagNumber(1)
  RecognitionConfig get config => $_getN(0);
  @$pb.TagNumber(1)
  set config(RecognitionConfig v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  RecognitionConfig ensureConfig() => $_ensure(0);

  /// Required. The name of the Recognizer to use during recognition. The
  /// expected format is
  /// `projects/{project}/locations/{location}/recognizers/{recognizer}`. The
  /// {recognizer} segment may be set to `_` to use an empty implicit Recognizer.
  @$pb.TagNumber(3)
  $core.String get recognizer => $_getSZ(1);
  @$pb.TagNumber(3)
  set recognizer($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRecognizer() => $_has(1);
  @$pb.TagNumber(3)
  void clearRecognizer() => clearField(3);

  /// The audio data bytes encoded as specified in
  /// [RecognitionConfig][google.cloud.speech.v2.RecognitionConfig]. As
  /// with all bytes fields, proto buffers use a pure binary representation,
  /// whereas JSON representations use base64.
  @$pb.TagNumber(5)
  $core.List<$core.int> get content => $_getN(2);
  @$pb.TagNumber(5)
  set content($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(5)
  void clearContent() => clearField(5);

  /// URI that points to a file that contains audio data bytes as specified in
  /// [RecognitionConfig][google.cloud.speech.v2.RecognitionConfig]. The file
  /// must not be compressed (for example, gzip). Currently, only Google Cloud
  /// Storage URIs are supported, which must be specified in the following
  /// format: `gs://bucket_name/object_name` (other URI formats return
  /// [INVALID_ARGUMENT][google.rpc.Code.INVALID_ARGUMENT]). For more
  /// information, see [Request
  /// URIs](https://cloud.google.com/storage/docs/reference-uris).
  @$pb.TagNumber(6)
  $core.String get uri => $_getSZ(3);
  @$pb.TagNumber(6)
  set uri($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUri() => $_has(3);
  @$pb.TagNumber(6)
  void clearUri() => clearField(6);

  /// The list of fields in
  /// [config][google.cloud.speech.v2.RecognizeRequest.config] that override the
  /// values in the
  /// [default_recognition_config][google.cloud.speech.v2.Recognizer.default_recognition_config]
  /// of the recognizer during this recognition request. If no mask is provided,
  /// all non-default valued fields in
  /// [config][google.cloud.speech.v2.RecognizeRequest.config] override the
  /// values in the recognizer for this recognition request. If a mask is
  /// provided, only the fields listed in the mask override the config in the
  /// recognizer for this recognition request. If a wildcard (`*`) is provided,
  /// [config][google.cloud.speech.v2.RecognizeRequest.config] completely
  /// overrides and replaces the config in the recognizer for this recognition
  /// request.
  @$pb.TagNumber(8)
  $4.FieldMask get configMask => $_getN(4);
  @$pb.TagNumber(8)
  set configMask($4.FieldMask v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasConfigMask() => $_has(4);
  @$pb.TagNumber(8)
  void clearConfigMask() => clearField(8);
  @$pb.TagNumber(8)
  $4.FieldMask ensureConfigMask() => $_ensure(4);
}

/// Metadata about the recognition request and response.
class RecognitionResponseMetadata extends $pb.GeneratedMessage {
  factory RecognitionResponseMetadata({
    $5.Duration? totalBilledDuration,
  }) {
    final $result = create();
    if (totalBilledDuration != null) {
      $result.totalBilledDuration = totalBilledDuration;
    }
    return $result;
  }
  RecognitionResponseMetadata._() : super();
  factory RecognitionResponseMetadata.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RecognitionResponseMetadata.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecognitionResponseMetadata',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOM<$5.Duration>(6, _omitFieldNames ? '' : 'totalBilledDuration',
        subBuilder: $5.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RecognitionResponseMetadata clone() =>
      RecognitionResponseMetadata()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RecognitionResponseMetadata copyWith(
          void Function(RecognitionResponseMetadata) updates) =>
      super.copyWith(
              (message) => updates(message as RecognitionResponseMetadata))
          as RecognitionResponseMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecognitionResponseMetadata create() =>
      RecognitionResponseMetadata._();
  RecognitionResponseMetadata createEmptyInstance() => create();
  static $pb.PbList<RecognitionResponseMetadata> createRepeated() =>
      $pb.PbList<RecognitionResponseMetadata>();
  @$core.pragma('dart2js:noInline')
  static RecognitionResponseMetadata getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecognitionResponseMetadata>(create);
  static RecognitionResponseMetadata? _defaultInstance;

  /// When available, billed audio seconds for the corresponding request.
  @$pb.TagNumber(6)
  $5.Duration get totalBilledDuration => $_getN(0);
  @$pb.TagNumber(6)
  set totalBilledDuration($5.Duration v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTotalBilledDuration() => $_has(0);
  @$pb.TagNumber(6)
  void clearTotalBilledDuration() => clearField(6);
  @$pb.TagNumber(6)
  $5.Duration ensureTotalBilledDuration() => $_ensure(0);
}

/// Alternative hypotheses (a.k.a. n-best list).
class SpeechRecognitionAlternative extends $pb.GeneratedMessage {
  factory SpeechRecognitionAlternative({
    $core.String? transcript,
    $core.double? confidence,
    $core.Iterable<WordInfo>? words,
  }) {
    final $result = create();
    if (transcript != null) {
      $result.transcript = transcript;
    }
    if (confidence != null) {
      $result.confidence = confidence;
    }
    if (words != null) {
      $result.words.addAll(words);
    }
    return $result;
  }
  SpeechRecognitionAlternative._() : super();
  factory SpeechRecognitionAlternative.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpeechRecognitionAlternative.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpeechRecognitionAlternative',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'transcript')
    ..a<$core.double>(
        2, _omitFieldNames ? '' : 'confidence', $pb.PbFieldType.OF)
    ..pc<WordInfo>(3, _omitFieldNames ? '' : 'words', $pb.PbFieldType.PM,
        subBuilder: WordInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpeechRecognitionAlternative clone() =>
      SpeechRecognitionAlternative()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpeechRecognitionAlternative copyWith(
          void Function(SpeechRecognitionAlternative) updates) =>
      super.copyWith(
              (message) => updates(message as SpeechRecognitionAlternative))
          as SpeechRecognitionAlternative;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeechRecognitionAlternative create() =>
      SpeechRecognitionAlternative._();
  SpeechRecognitionAlternative createEmptyInstance() => create();
  static $pb.PbList<SpeechRecognitionAlternative> createRepeated() =>
      $pb.PbList<SpeechRecognitionAlternative>();
  @$core.pragma('dart2js:noInline')
  static SpeechRecognitionAlternative getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpeechRecognitionAlternative>(create);
  static SpeechRecognitionAlternative? _defaultInstance;

  /// Transcript text representing the words that the user spoke.
  @$pb.TagNumber(1)
  $core.String get transcript => $_getSZ(0);
  @$pb.TagNumber(1)
  set transcript($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTranscript() => $_has(0);
  @$pb.TagNumber(1)
  void clearTranscript() => clearField(1);

  /// The confidence estimate between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. This field is set only for the top alternative of a non-streaming
  /// result or, of a streaming result where
  /// [is_final][google.cloud.speech.v2.StreamingRecognitionResult.is_final] is
  /// set to `true`. This field is not guaranteed to be accurate and users should
  /// not rely on it to be always provided. The default of 0.0 is a sentinel
  /// value indicating `confidence` was not set.
  @$pb.TagNumber(2)
  $core.double get confidence => $_getN(1);
  @$pb.TagNumber(2)
  set confidence($core.double v) {
    $_setFloat(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasConfidence() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfidence() => clearField(2);

  /// A list of word-specific information for each recognized word.
  /// When the
  /// [SpeakerDiarizationConfig][google.cloud.speech.v2.SpeakerDiarizationConfig]
  /// is set, you will see all the words from the beginning of the audio.
  @$pb.TagNumber(3)
  $core.List<WordInfo> get words => $_getList(2);
}

/// Word-specific information for recognized words.
class WordInfo extends $pb.GeneratedMessage {
  factory WordInfo({
    $5.Duration? startOffset,
    $5.Duration? endOffset,
    $core.String? word,
    $core.double? confidence,
    $core.String? speakerLabel,
  }) {
    final $result = create();
    if (startOffset != null) {
      $result.startOffset = startOffset;
    }
    if (endOffset != null) {
      $result.endOffset = endOffset;
    }
    if (word != null) {
      $result.word = word;
    }
    if (confidence != null) {
      $result.confidence = confidence;
    }
    if (speakerLabel != null) {
      $result.speakerLabel = speakerLabel;
    }
    return $result;
  }
  WordInfo._() : super();
  factory WordInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WordInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WordInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOM<$5.Duration>(1, _omitFieldNames ? '' : 'startOffset',
        subBuilder: $5.Duration.create)
    ..aOM<$5.Duration>(2, _omitFieldNames ? '' : 'endOffset',
        subBuilder: $5.Duration.create)
    ..aOS(3, _omitFieldNames ? '' : 'word')
    ..a<$core.double>(
        4, _omitFieldNames ? '' : 'confidence', $pb.PbFieldType.OF)
    ..aOS(6, _omitFieldNames ? '' : 'speakerLabel')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WordInfo clone() => WordInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WordInfo copyWith(void Function(WordInfo) updates) =>
      super.copyWith((message) => updates(message as WordInfo)) as WordInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WordInfo create() => WordInfo._();
  WordInfo createEmptyInstance() => create();
  static $pb.PbList<WordInfo> createRepeated() => $pb.PbList<WordInfo>();
  @$core.pragma('dart2js:noInline')
  static WordInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WordInfo>(create);
  static WordInfo? _defaultInstance;

  /// Time offset relative to the beginning of the audio,
  /// and corresponding to the start of the spoken word.
  /// This field is only set if
  /// [enable_word_time_offsets][google.cloud.speech.v2.RecognitionFeatures.enable_word_time_offsets]
  /// is `true` and only in the top hypothesis. This is an experimental feature
  /// and the accuracy of the time offset can vary.
  @$pb.TagNumber(1)
  $5.Duration get startOffset => $_getN(0);
  @$pb.TagNumber(1)
  set startOffset($5.Duration v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStartOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartOffset() => clearField(1);
  @$pb.TagNumber(1)
  $5.Duration ensureStartOffset() => $_ensure(0);

  /// Time offset relative to the beginning of the audio,
  /// and corresponding to the end of the spoken word.
  /// This field is only set if
  /// [enable_word_time_offsets][google.cloud.speech.v2.RecognitionFeatures.enable_word_time_offsets]
  /// is `true` and only in the top hypothesis. This is an experimental feature
  /// and the accuracy of the time offset can vary.
  @$pb.TagNumber(2)
  $5.Duration get endOffset => $_getN(1);
  @$pb.TagNumber(2)
  set endOffset($5.Duration v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEndOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndOffset() => clearField(2);
  @$pb.TagNumber(2)
  $5.Duration ensureEndOffset() => $_ensure(1);

  /// The word corresponding to this set of information.
  @$pb.TagNumber(3)
  $core.String get word => $_getSZ(2);
  @$pb.TagNumber(3)
  set word($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWord() => $_has(2);
  @$pb.TagNumber(3)
  void clearWord() => clearField(3);

  /// The confidence estimate between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. This field is set only for the top alternative of a non-streaming
  /// result or, of a streaming result where
  /// [is_final][google.cloud.speech.v2.StreamingRecognitionResult.is_final] is
  /// set to `true`. This field is not guaranteed to be accurate and users should
  /// not rely on it to be always provided. The default of 0.0 is a sentinel
  /// value indicating `confidence` was not set.
  @$pb.TagNumber(4)
  $core.double get confidence => $_getN(3);
  @$pb.TagNumber(4)
  set confidence($core.double v) {
    $_setFloat(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasConfidence() => $_has(3);
  @$pb.TagNumber(4)
  void clearConfidence() => clearField(4);

  /// A distinct label is assigned for every speaker within the audio. This field
  /// specifies which one of those speakers was detected to have spoken this
  /// word. `speaker_label` is set if
  /// [SpeakerDiarizationConfig][google.cloud.speech.v2.SpeakerDiarizationConfig]
  /// is given and only in the top alternative.
  @$pb.TagNumber(6)
  $core.String get speakerLabel => $_getSZ(4);
  @$pb.TagNumber(6)
  set speakerLabel($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasSpeakerLabel() => $_has(4);
  @$pb.TagNumber(6)
  void clearSpeakerLabel() => clearField(6);
}

/// A speech recognition result corresponding to a portion of the audio.
class SpeechRecognitionResult extends $pb.GeneratedMessage {
  factory SpeechRecognitionResult({
    $core.Iterable<SpeechRecognitionAlternative>? alternatives,
    $core.int? channelTag,
    $5.Duration? resultEndOffset,
    $core.String? languageCode,
  }) {
    final $result = create();
    if (alternatives != null) {
      $result.alternatives.addAll(alternatives);
    }
    if (channelTag != null) {
      $result.channelTag = channelTag;
    }
    if (resultEndOffset != null) {
      $result.resultEndOffset = resultEndOffset;
    }
    if (languageCode != null) {
      $result.languageCode = languageCode;
    }
    return $result;
  }
  SpeechRecognitionResult._() : super();
  factory SpeechRecognitionResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpeechRecognitionResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpeechRecognitionResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..pc<SpeechRecognitionAlternative>(
        1, _omitFieldNames ? '' : 'alternatives', $pb.PbFieldType.PM,
        subBuilder: SpeechRecognitionAlternative.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'channelTag', $pb.PbFieldType.O3)
    ..aOM<$5.Duration>(4, _omitFieldNames ? '' : 'resultEndOffset',
        subBuilder: $5.Duration.create)
    ..aOS(5, _omitFieldNames ? '' : 'languageCode')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpeechRecognitionResult clone() =>
      SpeechRecognitionResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpeechRecognitionResult copyWith(
          void Function(SpeechRecognitionResult) updates) =>
      super.copyWith((message) => updates(message as SpeechRecognitionResult))
          as SpeechRecognitionResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeechRecognitionResult create() => SpeechRecognitionResult._();
  SpeechRecognitionResult createEmptyInstance() => create();
  static $pb.PbList<SpeechRecognitionResult> createRepeated() =>
      $pb.PbList<SpeechRecognitionResult>();
  @$core.pragma('dart2js:noInline')
  static SpeechRecognitionResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpeechRecognitionResult>(create);
  static SpeechRecognitionResult? _defaultInstance;

  /// May contain one or more recognition hypotheses. These alternatives are
  /// ordered in terms of accuracy, with the top (first) alternative being the
  /// most probable, as ranked by the recognizer.
  @$pb.TagNumber(1)
  $core.List<SpeechRecognitionAlternative> get alternatives => $_getList(0);

  /// For multi-channel audio, this is the channel number corresponding to the
  /// recognized result for the audio from that channel.
  /// For `audio_channel_count` = `N`, its output values can range from `1` to
  /// `N`.
  @$pb.TagNumber(2)
  $core.int get channelTag => $_getIZ(1);
  @$pb.TagNumber(2)
  set channelTag($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasChannelTag() => $_has(1);
  @$pb.TagNumber(2)
  void clearChannelTag() => clearField(2);

  /// Time offset of the end of this result relative to the beginning of the
  /// audio.
  @$pb.TagNumber(4)
  $5.Duration get resultEndOffset => $_getN(2);
  @$pb.TagNumber(4)
  set resultEndOffset($5.Duration v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasResultEndOffset() => $_has(2);
  @$pb.TagNumber(4)
  void clearResultEndOffset() => clearField(4);
  @$pb.TagNumber(4)
  $5.Duration ensureResultEndOffset() => $_ensure(2);

  /// Output only. The [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt)
  /// language tag of the language in this result. This language code was
  /// detected to have the most likelihood of being spoken in the audio.
  @$pb.TagNumber(5)
  $core.String get languageCode => $_getSZ(3);
  @$pb.TagNumber(5)
  set languageCode($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLanguageCode() => $_has(3);
  @$pb.TagNumber(5)
  void clearLanguageCode() => clearField(5);
}

/// Response message for the
/// [Recognize][google.cloud.speech.v2.Speech.Recognize] method.
class RecognizeResponse extends $pb.GeneratedMessage {
  factory RecognizeResponse({
    RecognitionResponseMetadata? metadata,
    $core.Iterable<SpeechRecognitionResult>? results,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  RecognizeResponse._() : super();
  factory RecognizeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RecognizeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecognizeResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOM<RecognitionResponseMetadata>(2, _omitFieldNames ? '' : 'metadata',
        subBuilder: RecognitionResponseMetadata.create)
    ..pc<SpeechRecognitionResult>(
        3, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: SpeechRecognitionResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RecognizeResponse clone() => RecognizeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RecognizeResponse copyWith(void Function(RecognizeResponse) updates) =>
      super.copyWith((message) => updates(message as RecognizeResponse))
          as RecognizeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecognizeResponse create() => RecognizeResponse._();
  RecognizeResponse createEmptyInstance() => create();
  static $pb.PbList<RecognizeResponse> createRepeated() =>
      $pb.PbList<RecognizeResponse>();
  @$core.pragma('dart2js:noInline')
  static RecognizeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecognizeResponse>(create);
  static RecognizeResponse? _defaultInstance;

  /// Metadata about the recognition.
  @$pb.TagNumber(2)
  RecognitionResponseMetadata get metadata => $_getN(0);
  @$pb.TagNumber(2)
  set metadata(RecognitionResponseMetadata v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(2)
  void clearMetadata() => clearField(2);
  @$pb.TagNumber(2)
  RecognitionResponseMetadata ensureMetadata() => $_ensure(0);

  /// Sequential list of transcription results corresponding to sequential
  /// portions of audio.
  @$pb.TagNumber(3)
  $core.List<SpeechRecognitionResult> get results => $_getList(1);
}

/// Events that a timeout can be set on for voice activity.
class StreamingRecognitionFeatures_VoiceActivityTimeout
    extends $pb.GeneratedMessage {
  factory StreamingRecognitionFeatures_VoiceActivityTimeout({
    $5.Duration? speechStartTimeout,
    $5.Duration? speechEndTimeout,
  }) {
    final $result = create();
    if (speechStartTimeout != null) {
      $result.speechStartTimeout = speechStartTimeout;
    }
    if (speechEndTimeout != null) {
      $result.speechEndTimeout = speechEndTimeout;
    }
    return $result;
  }
  StreamingRecognitionFeatures_VoiceActivityTimeout._() : super();
  factory StreamingRecognitionFeatures_VoiceActivityTimeout.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StreamingRecognitionFeatures_VoiceActivityTimeout.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamingRecognitionFeatures.VoiceActivityTimeout',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOM<$5.Duration>(1, _omitFieldNames ? '' : 'speechStartTimeout',
        subBuilder: $5.Duration.create)
    ..aOM<$5.Duration>(2, _omitFieldNames ? '' : 'speechEndTimeout',
        subBuilder: $5.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StreamingRecognitionFeatures_VoiceActivityTimeout clone() =>
      StreamingRecognitionFeatures_VoiceActivityTimeout()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StreamingRecognitionFeatures_VoiceActivityTimeout copyWith(
          void Function(StreamingRecognitionFeatures_VoiceActivityTimeout)
              updates) =>
      super.copyWith((message) => updates(
              message as StreamingRecognitionFeatures_VoiceActivityTimeout))
          as StreamingRecognitionFeatures_VoiceActivityTimeout;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionFeatures_VoiceActivityTimeout create() =>
      StreamingRecognitionFeatures_VoiceActivityTimeout._();
  StreamingRecognitionFeatures_VoiceActivityTimeout createEmptyInstance() =>
      create();
  static $pb.PbList<StreamingRecognitionFeatures_VoiceActivityTimeout>
      createRepeated() =>
          $pb.PbList<StreamingRecognitionFeatures_VoiceActivityTimeout>();
  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionFeatures_VoiceActivityTimeout getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamingRecognitionFeatures_VoiceActivityTimeout>(create);
  static StreamingRecognitionFeatures_VoiceActivityTimeout? _defaultInstance;

  /// Duration to timeout the stream if no speech begins. If this is set and
  /// no speech is detected in this duration at the start of the stream, the
  /// server will close the stream.
  @$pb.TagNumber(1)
  $5.Duration get speechStartTimeout => $_getN(0);
  @$pb.TagNumber(1)
  set speechStartTimeout($5.Duration v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSpeechStartTimeout() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpeechStartTimeout() => clearField(1);
  @$pb.TagNumber(1)
  $5.Duration ensureSpeechStartTimeout() => $_ensure(0);

  /// Duration to timeout the stream after speech ends. If this is set and no
  /// speech is detected in this duration after speech was detected, the server
  /// will close the stream.
  @$pb.TagNumber(2)
  $5.Duration get speechEndTimeout => $_getN(1);
  @$pb.TagNumber(2)
  set speechEndTimeout($5.Duration v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSpeechEndTimeout() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpeechEndTimeout() => clearField(2);
  @$pb.TagNumber(2)
  $5.Duration ensureSpeechEndTimeout() => $_ensure(1);
}

/// Available recognition features specific to streaming recognition requests.
class StreamingRecognitionFeatures extends $pb.GeneratedMessage {
  factory StreamingRecognitionFeatures({
    $core.bool? enableVoiceActivityEvents,
    $core.bool? interimResults,
    StreamingRecognitionFeatures_VoiceActivityTimeout? voiceActivityTimeout,
  }) {
    final $result = create();
    if (enableVoiceActivityEvents != null) {
      $result.enableVoiceActivityEvents = enableVoiceActivityEvents;
    }
    if (interimResults != null) {
      $result.interimResults = interimResults;
    }
    if (voiceActivityTimeout != null) {
      $result.voiceActivityTimeout = voiceActivityTimeout;
    }
    return $result;
  }
  StreamingRecognitionFeatures._() : super();
  factory StreamingRecognitionFeatures.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StreamingRecognitionFeatures.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamingRecognitionFeatures',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enableVoiceActivityEvents')
    ..aOB(2, _omitFieldNames ? '' : 'interimResults')
    ..aOM<StreamingRecognitionFeatures_VoiceActivityTimeout>(
        3, _omitFieldNames ? '' : 'voiceActivityTimeout',
        subBuilder: StreamingRecognitionFeatures_VoiceActivityTimeout.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StreamingRecognitionFeatures clone() =>
      StreamingRecognitionFeatures()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StreamingRecognitionFeatures copyWith(
          void Function(StreamingRecognitionFeatures) updates) =>
      super.copyWith(
              (message) => updates(message as StreamingRecognitionFeatures))
          as StreamingRecognitionFeatures;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionFeatures create() =>
      StreamingRecognitionFeatures._();
  StreamingRecognitionFeatures createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognitionFeatures> createRepeated() =>
      $pb.PbList<StreamingRecognitionFeatures>();
  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionFeatures getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamingRecognitionFeatures>(create);
  static StreamingRecognitionFeatures? _defaultInstance;

  /// If `true`, responses with voice activity speech events will be returned as
  /// they are detected.
  @$pb.TagNumber(1)
  $core.bool get enableVoiceActivityEvents => $_getBF(0);
  @$pb.TagNumber(1)
  set enableVoiceActivityEvents($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEnableVoiceActivityEvents() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnableVoiceActivityEvents() => clearField(1);

  /// Whether or not to stream interim results to the client. If set to true,
  /// interim results will be streamed to the client. Otherwise, only the final
  /// response will be streamed back.
  @$pb.TagNumber(2)
  $core.bool get interimResults => $_getBF(1);
  @$pb.TagNumber(2)
  set interimResults($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInterimResults() => $_has(1);
  @$pb.TagNumber(2)
  void clearInterimResults() => clearField(2);

  /// If set, the server will automatically close the stream after the specified
  /// duration has elapsed after the last VOICE_ACTIVITY speech event has been
  /// sent. The field `voice_activity_events` must also be set to true.
  @$pb.TagNumber(3)
  StreamingRecognitionFeatures_VoiceActivityTimeout get voiceActivityTimeout =>
      $_getN(2);
  @$pb.TagNumber(3)
  set voiceActivityTimeout(
      StreamingRecognitionFeatures_VoiceActivityTimeout v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVoiceActivityTimeout() => $_has(2);
  @$pb.TagNumber(3)
  void clearVoiceActivityTimeout() => clearField(3);
  @$pb.TagNumber(3)
  StreamingRecognitionFeatures_VoiceActivityTimeout
      ensureVoiceActivityTimeout() => $_ensure(2);
}

/// Provides configuration information for the StreamingRecognize request.
class StreamingRecognitionConfig extends $pb.GeneratedMessage {
  factory StreamingRecognitionConfig({
    RecognitionConfig? config,
    StreamingRecognitionFeatures? streamingFeatures,
    $4.FieldMask? configMask,
  }) {
    final $result = create();
    if (config != null) {
      $result.config = config;
    }
    if (streamingFeatures != null) {
      $result.streamingFeatures = streamingFeatures;
    }
    if (configMask != null) {
      $result.configMask = configMask;
    }
    return $result;
  }
  StreamingRecognitionConfig._() : super();
  factory StreamingRecognitionConfig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StreamingRecognitionConfig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamingRecognitionConfig',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOM<RecognitionConfig>(1, _omitFieldNames ? '' : 'config',
        subBuilder: RecognitionConfig.create)
    ..aOM<StreamingRecognitionFeatures>(
        2, _omitFieldNames ? '' : 'streamingFeatures',
        subBuilder: StreamingRecognitionFeatures.create)
    ..aOM<$4.FieldMask>(3, _omitFieldNames ? '' : 'configMask',
        subBuilder: $4.FieldMask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StreamingRecognitionConfig clone() =>
      StreamingRecognitionConfig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StreamingRecognitionConfig copyWith(
          void Function(StreamingRecognitionConfig) updates) =>
      super.copyWith(
              (message) => updates(message as StreamingRecognitionConfig))
          as StreamingRecognitionConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionConfig create() => StreamingRecognitionConfig._();
  StreamingRecognitionConfig createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognitionConfig> createRepeated() =>
      $pb.PbList<StreamingRecognitionConfig>();
  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamingRecognitionConfig>(create);
  static StreamingRecognitionConfig? _defaultInstance;

  /// Required. Features and audio metadata to use for the Automatic Speech
  /// Recognition. This field in combination with the
  /// [config_mask][google.cloud.speech.v2.StreamingRecognitionConfig.config_mask]
  /// field can be used to override parts of the
  /// [default_recognition_config][google.cloud.speech.v2.Recognizer.default_recognition_config]
  /// of the Recognizer resource.
  @$pb.TagNumber(1)
  RecognitionConfig get config => $_getN(0);
  @$pb.TagNumber(1)
  set config(RecognitionConfig v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  RecognitionConfig ensureConfig() => $_ensure(0);

  /// Speech recognition features to enable specific to streaming audio
  /// recognition requests.
  @$pb.TagNumber(2)
  StreamingRecognitionFeatures get streamingFeatures => $_getN(1);
  @$pb.TagNumber(2)
  set streamingFeatures(StreamingRecognitionFeatures v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStreamingFeatures() => $_has(1);
  @$pb.TagNumber(2)
  void clearStreamingFeatures() => clearField(2);
  @$pb.TagNumber(2)
  StreamingRecognitionFeatures ensureStreamingFeatures() => $_ensure(1);

  /// The list of fields in
  /// [config][google.cloud.speech.v2.StreamingRecognitionConfig.config] that
  /// override the values in the
  /// [default_recognition_config][google.cloud.speech.v2.Recognizer.default_recognition_config]
  /// of the recognizer during this recognition request. If no mask is provided,
  /// all non-default valued fields in
  /// [config][google.cloud.speech.v2.StreamingRecognitionConfig.config] override
  /// the values in the Recognizer for this recognition request. If a mask is
  /// provided, only the fields listed in the mask override the config in the
  /// Recognizer for this recognition request. If a wildcard (`*`) is provided,
  /// [config][google.cloud.speech.v2.StreamingRecognitionConfig.config]
  /// completely overrides and replaces the config in the recognizer for this
  /// recognition request.
  @$pb.TagNumber(3)
  $4.FieldMask get configMask => $_getN(2);
  @$pb.TagNumber(3)
  set configMask($4.FieldMask v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasConfigMask() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfigMask() => clearField(3);
  @$pb.TagNumber(3)
  $4.FieldMask ensureConfigMask() => $_ensure(2);
}

enum StreamingRecognizeRequest_StreamingRequest {
  audio,
  streamingConfig,
  notSet
}

///  Request message for the
///  [StreamingRecognize][google.cloud.speech.v2.Speech.StreamingRecognize]
///  method. Multiple
///  [StreamingRecognizeRequest][google.cloud.speech.v2.StreamingRecognizeRequest]
///  messages are sent in one call.
///
///  If the [Recognizer][google.cloud.speech.v2.Recognizer] referenced by
///  [recognizer][google.cloud.speech.v2.StreamingRecognizeRequest.recognizer]
///  contains a fully specified request configuration then the stream may only
///  contain messages with only
///  [audio][google.cloud.speech.v2.StreamingRecognizeRequest.audio] set.
///
///  Otherwise the first message must contain a
///  [recognizer][google.cloud.speech.v2.StreamingRecognizeRequest.recognizer] and
///  a
///  [streaming_config][google.cloud.speech.v2.StreamingRecognizeRequest.streaming_config]
///  message that together fully specify the request configuration and must not
///  contain [audio][google.cloud.speech.v2.StreamingRecognizeRequest.audio]. All
///  subsequent messages must only have
///  [audio][google.cloud.speech.v2.StreamingRecognizeRequest.audio] set.
class StreamingRecognizeRequest extends $pb.GeneratedMessage {
  factory StreamingRecognizeRequest({
    $core.String? recognizer,
    $core.List<$core.int>? audio,
    StreamingRecognitionConfig? streamingConfig,
  }) {
    final $result = create();
    if (recognizer != null) {
      $result.recognizer = recognizer;
    }
    if (audio != null) {
      $result.audio = audio;
    }
    if (streamingConfig != null) {
      $result.streamingConfig = streamingConfig;
    }
    return $result;
  }
  StreamingRecognizeRequest._() : super();
  factory StreamingRecognizeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StreamingRecognizeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, StreamingRecognizeRequest_StreamingRequest>
      _StreamingRecognizeRequest_StreamingRequestByTag = {
    5: StreamingRecognizeRequest_StreamingRequest.audio,
    6: StreamingRecognizeRequest_StreamingRequest.streamingConfig,
    0: StreamingRecognizeRequest_StreamingRequest.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamingRecognizeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..oo(0, [5, 6])
    ..aOS(3, _omitFieldNames ? '' : 'recognizer')
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'audio', $pb.PbFieldType.OY)
    ..aOM<StreamingRecognitionConfig>(
        6, _omitFieldNames ? '' : 'streamingConfig',
        subBuilder: StreamingRecognitionConfig.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StreamingRecognizeRequest clone() =>
      StreamingRecognizeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StreamingRecognizeRequest copyWith(
          void Function(StreamingRecognizeRequest) updates) =>
      super.copyWith((message) => updates(message as StreamingRecognizeRequest))
          as StreamingRecognizeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamingRecognizeRequest create() => StreamingRecognizeRequest._();
  StreamingRecognizeRequest createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognizeRequest> createRepeated() =>
      $pb.PbList<StreamingRecognizeRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamingRecognizeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamingRecognizeRequest>(create);
  static StreamingRecognizeRequest? _defaultInstance;

  StreamingRecognizeRequest_StreamingRequest whichStreamingRequest() =>
      _StreamingRecognizeRequest_StreamingRequestByTag[$_whichOneof(0)]!;
  void clearStreamingRequest() => clearField($_whichOneof(0));

  /// Required. The name of the Recognizer to use during recognition. The
  /// expected format is
  /// `projects/{project}/locations/{location}/recognizers/{recognizer}`. The
  /// {recognizer} segment may be set to `_` to use an empty implicit Recognizer.
  @$pb.TagNumber(3)
  $core.String get recognizer => $_getSZ(0);
  @$pb.TagNumber(3)
  set recognizer($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRecognizer() => $_has(0);
  @$pb.TagNumber(3)
  void clearRecognizer() => clearField(3);

  /// Inline audio bytes to be Recognized.
  /// Maximum size for this field is 15 KB per request.
  @$pb.TagNumber(5)
  $core.List<$core.int> get audio => $_getN(1);
  @$pb.TagNumber(5)
  set audio($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAudio() => $_has(1);
  @$pb.TagNumber(5)
  void clearAudio() => clearField(5);

  /// StreamingRecognitionConfig to be used in this recognition attempt.
  /// If provided, it will override the default RecognitionConfig stored in the
  /// Recognizer.
  @$pb.TagNumber(6)
  StreamingRecognitionConfig get streamingConfig => $_getN(2);
  @$pb.TagNumber(6)
  set streamingConfig(StreamingRecognitionConfig v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasStreamingConfig() => $_has(2);
  @$pb.TagNumber(6)
  void clearStreamingConfig() => clearField(6);
  @$pb.TagNumber(6)
  StreamingRecognitionConfig ensureStreamingConfig() => $_ensure(2);
}

/// Request message for the
/// [BatchRecognize][google.cloud.speech.v2.Speech.BatchRecognize]
/// method.
class BatchRecognizeRequest extends $pb.GeneratedMessage {
  factory BatchRecognizeRequest({
    $core.String? recognizer,
    $core.Iterable<BatchRecognizeFileMetadata>? files,
    RecognitionConfig? config,
    $4.FieldMask? configMask,
    RecognitionOutputConfig? recognitionOutputConfig,
    BatchRecognizeRequest_ProcessingStrategy? processingStrategy,
  }) {
    final $result = create();
    if (recognizer != null) {
      $result.recognizer = recognizer;
    }
    if (files != null) {
      $result.files.addAll(files);
    }
    if (config != null) {
      $result.config = config;
    }
    if (configMask != null) {
      $result.configMask = configMask;
    }
    if (recognitionOutputConfig != null) {
      $result.recognitionOutputConfig = recognitionOutputConfig;
    }
    if (processingStrategy != null) {
      $result.processingStrategy = processingStrategy;
    }
    return $result;
  }
  BatchRecognizeRequest._() : super();
  factory BatchRecognizeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchRecognizeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchRecognizeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'recognizer')
    ..pc<BatchRecognizeFileMetadata>(
        3, _omitFieldNames ? '' : 'files', $pb.PbFieldType.PM,
        subBuilder: BatchRecognizeFileMetadata.create)
    ..aOM<RecognitionConfig>(4, _omitFieldNames ? '' : 'config',
        subBuilder: RecognitionConfig.create)
    ..aOM<$4.FieldMask>(5, _omitFieldNames ? '' : 'configMask',
        subBuilder: $4.FieldMask.create)
    ..aOM<RecognitionOutputConfig>(
        6, _omitFieldNames ? '' : 'recognitionOutputConfig',
        subBuilder: RecognitionOutputConfig.create)
    ..e<BatchRecognizeRequest_ProcessingStrategy>(
        7, _omitFieldNames ? '' : 'processingStrategy', $pb.PbFieldType.OE,
        defaultOrMaker: BatchRecognizeRequest_ProcessingStrategy
            .PROCESSING_STRATEGY_UNSPECIFIED,
        valueOf: BatchRecognizeRequest_ProcessingStrategy.valueOf,
        enumValues: BatchRecognizeRequest_ProcessingStrategy.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchRecognizeRequest clone() =>
      BatchRecognizeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchRecognizeRequest copyWith(
          void Function(BatchRecognizeRequest) updates) =>
      super.copyWith((message) => updates(message as BatchRecognizeRequest))
          as BatchRecognizeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchRecognizeRequest create() => BatchRecognizeRequest._();
  BatchRecognizeRequest createEmptyInstance() => create();
  static $pb.PbList<BatchRecognizeRequest> createRepeated() =>
      $pb.PbList<BatchRecognizeRequest>();
  @$core.pragma('dart2js:noInline')
  static BatchRecognizeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchRecognizeRequest>(create);
  static BatchRecognizeRequest? _defaultInstance;

  /// Required. The name of the Recognizer to use during recognition. The
  /// expected format is
  /// `projects/{project}/locations/{location}/recognizers/{recognizer}`. The
  /// {recognizer} segment may be set to `_` to use an empty implicit Recognizer.
  @$pb.TagNumber(1)
  $core.String get recognizer => $_getSZ(0);
  @$pb.TagNumber(1)
  set recognizer($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRecognizer() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecognizer() => clearField(1);

  /// Audio files with file metadata for ASR.
  /// The maximum number of files allowed to be specified is 5.
  @$pb.TagNumber(3)
  $core.List<BatchRecognizeFileMetadata> get files => $_getList(1);

  /// Features and audio metadata to use for the Automatic Speech Recognition.
  /// This field in combination with the
  /// [config_mask][google.cloud.speech.v2.BatchRecognizeRequest.config_mask]
  /// field can be used to override parts of the
  /// [default_recognition_config][google.cloud.speech.v2.Recognizer.default_recognition_config]
  /// of the Recognizer resource.
  @$pb.TagNumber(4)
  RecognitionConfig get config => $_getN(2);
  @$pb.TagNumber(4)
  set config(RecognitionConfig v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasConfig() => $_has(2);
  @$pb.TagNumber(4)
  void clearConfig() => clearField(4);
  @$pb.TagNumber(4)
  RecognitionConfig ensureConfig() => $_ensure(2);

  /// The list of fields in
  /// [config][google.cloud.speech.v2.BatchRecognizeRequest.config] that override
  /// the values in the
  /// [default_recognition_config][google.cloud.speech.v2.Recognizer.default_recognition_config]
  /// of the recognizer during this recognition request. If no mask is provided,
  /// all given fields in
  /// [config][google.cloud.speech.v2.BatchRecognizeRequest.config] override the
  /// values in the recognizer for this recognition request. If a mask is
  /// provided, only the fields listed in the mask override the config in the
  /// recognizer for this recognition request. If a wildcard (`*`) is provided,
  /// [config][google.cloud.speech.v2.BatchRecognizeRequest.config] completely
  /// overrides and replaces the config in the recognizer for this recognition
  /// request.
  @$pb.TagNumber(5)
  $4.FieldMask get configMask => $_getN(3);
  @$pb.TagNumber(5)
  set configMask($4.FieldMask v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasConfigMask() => $_has(3);
  @$pb.TagNumber(5)
  void clearConfigMask() => clearField(5);
  @$pb.TagNumber(5)
  $4.FieldMask ensureConfigMask() => $_ensure(3);

  /// Configuration options for where to output the transcripts of each file.
  @$pb.TagNumber(6)
  RecognitionOutputConfig get recognitionOutputConfig => $_getN(4);
  @$pb.TagNumber(6)
  set recognitionOutputConfig(RecognitionOutputConfig v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasRecognitionOutputConfig() => $_has(4);
  @$pb.TagNumber(6)
  void clearRecognitionOutputConfig() => clearField(6);
  @$pb.TagNumber(6)
  RecognitionOutputConfig ensureRecognitionOutputConfig() => $_ensure(4);

  /// Processing strategy to use for this request.
  @$pb.TagNumber(7)
  BatchRecognizeRequest_ProcessingStrategy get processingStrategy => $_getN(5);
  @$pb.TagNumber(7)
  set processingStrategy(BatchRecognizeRequest_ProcessingStrategy v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasProcessingStrategy() => $_has(5);
  @$pb.TagNumber(7)
  void clearProcessingStrategy() => clearField(7);
}

/// Output configurations for Cloud Storage.
class GcsOutputConfig extends $pb.GeneratedMessage {
  factory GcsOutputConfig({
    $core.String? uri,
  }) {
    final $result = create();
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  GcsOutputConfig._() : super();
  factory GcsOutputConfig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GcsOutputConfig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GcsOutputConfig',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GcsOutputConfig clone() => GcsOutputConfig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GcsOutputConfig copyWith(void Function(GcsOutputConfig) updates) =>
      super.copyWith((message) => updates(message as GcsOutputConfig))
          as GcsOutputConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GcsOutputConfig create() => GcsOutputConfig._();
  GcsOutputConfig createEmptyInstance() => create();
  static $pb.PbList<GcsOutputConfig> createRepeated() =>
      $pb.PbList<GcsOutputConfig>();
  @$core.pragma('dart2js:noInline')
  static GcsOutputConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GcsOutputConfig>(create);
  static GcsOutputConfig? _defaultInstance;

  /// The Cloud Storage URI prefix with which recognition results will be
  /// written.
  @$pb.TagNumber(1)
  $core.String get uri => $_getSZ(0);
  @$pb.TagNumber(1)
  set uri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearUri() => clearField(1);
}

/// Output configurations for inline response.
class InlineOutputConfig extends $pb.GeneratedMessage {
  factory InlineOutputConfig() => create();
  InlineOutputConfig._() : super();
  factory InlineOutputConfig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InlineOutputConfig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InlineOutputConfig',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InlineOutputConfig clone() => InlineOutputConfig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InlineOutputConfig copyWith(void Function(InlineOutputConfig) updates) =>
      super.copyWith((message) => updates(message as InlineOutputConfig))
          as InlineOutputConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InlineOutputConfig create() => InlineOutputConfig._();
  InlineOutputConfig createEmptyInstance() => create();
  static $pb.PbList<InlineOutputConfig> createRepeated() =>
      $pb.PbList<InlineOutputConfig>();
  @$core.pragma('dart2js:noInline')
  static InlineOutputConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InlineOutputConfig>(create);
  static InlineOutputConfig? _defaultInstance;
}

enum RecognitionOutputConfig_Output {
  gcsOutputConfig,
  inlineResponseConfig,
  notSet
}

/// Configuration options for the output(s) of recognition.
class RecognitionOutputConfig extends $pb.GeneratedMessage {
  factory RecognitionOutputConfig({
    GcsOutputConfig? gcsOutputConfig,
    InlineOutputConfig? inlineResponseConfig,
  }) {
    final $result = create();
    if (gcsOutputConfig != null) {
      $result.gcsOutputConfig = gcsOutputConfig;
    }
    if (inlineResponseConfig != null) {
      $result.inlineResponseConfig = inlineResponseConfig;
    }
    return $result;
  }
  RecognitionOutputConfig._() : super();
  factory RecognitionOutputConfig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RecognitionOutputConfig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RecognitionOutputConfig_Output>
      _RecognitionOutputConfig_OutputByTag = {
    1: RecognitionOutputConfig_Output.gcsOutputConfig,
    2: RecognitionOutputConfig_Output.inlineResponseConfig,
    0: RecognitionOutputConfig_Output.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecognitionOutputConfig',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<GcsOutputConfig>(1, _omitFieldNames ? '' : 'gcsOutputConfig',
        subBuilder: GcsOutputConfig.create)
    ..aOM<InlineOutputConfig>(2, _omitFieldNames ? '' : 'inlineResponseConfig',
        subBuilder: InlineOutputConfig.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RecognitionOutputConfig clone() =>
      RecognitionOutputConfig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RecognitionOutputConfig copyWith(
          void Function(RecognitionOutputConfig) updates) =>
      super.copyWith((message) => updates(message as RecognitionOutputConfig))
          as RecognitionOutputConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecognitionOutputConfig create() => RecognitionOutputConfig._();
  RecognitionOutputConfig createEmptyInstance() => create();
  static $pb.PbList<RecognitionOutputConfig> createRepeated() =>
      $pb.PbList<RecognitionOutputConfig>();
  @$core.pragma('dart2js:noInline')
  static RecognitionOutputConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecognitionOutputConfig>(create);
  static RecognitionOutputConfig? _defaultInstance;

  RecognitionOutputConfig_Output whichOutput() =>
      _RecognitionOutputConfig_OutputByTag[$_whichOneof(0)]!;
  void clearOutput() => clearField($_whichOneof(0));

  /// If this message is populated, recognition results are written to the
  /// provided Google Cloud Storage URI.
  @$pb.TagNumber(1)
  GcsOutputConfig get gcsOutputConfig => $_getN(0);
  @$pb.TagNumber(1)
  set gcsOutputConfig(GcsOutputConfig v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGcsOutputConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearGcsOutputConfig() => clearField(1);
  @$pb.TagNumber(1)
  GcsOutputConfig ensureGcsOutputConfig() => $_ensure(0);

  /// If this message is populated, recognition results are provided in the
  /// [BatchRecognizeResponse][google.cloud.speech.v2.BatchRecognizeResponse]
  /// message of the Operation when completed. This is only supported when
  /// calling [BatchRecognize][google.cloud.speech.v2.Speech.BatchRecognize]
  /// with just one audio file.
  @$pb.TagNumber(2)
  InlineOutputConfig get inlineResponseConfig => $_getN(1);
  @$pb.TagNumber(2)
  set inlineResponseConfig(InlineOutputConfig v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInlineResponseConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearInlineResponseConfig() => clearField(2);
  @$pb.TagNumber(2)
  InlineOutputConfig ensureInlineResponseConfig() => $_ensure(1);
}

/// Response message for
/// [BatchRecognize][google.cloud.speech.v2.Speech.BatchRecognize] that is
/// packaged into a longrunning [Operation][google.longrunning.Operation].
class BatchRecognizeResponse extends $pb.GeneratedMessage {
  factory BatchRecognizeResponse({
    $core.Map<$core.String, BatchRecognizeFileResult>? results,
    $5.Duration? totalBilledDuration,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    if (totalBilledDuration != null) {
      $result.totalBilledDuration = totalBilledDuration;
    }
    return $result;
  }
  BatchRecognizeResponse._() : super();
  factory BatchRecognizeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchRecognizeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchRecognizeResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..m<$core.String, BatchRecognizeFileResult>(
        1, _omitFieldNames ? '' : 'results',
        entryClassName: 'BatchRecognizeResponse.ResultsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: BatchRecognizeFileResult.create,
        valueDefaultOrMaker: BatchRecognizeFileResult.getDefault,
        packageName: const $pb.PackageName('google.cloud.speech.v2'))
    ..aOM<$5.Duration>(2, _omitFieldNames ? '' : 'totalBilledDuration',
        subBuilder: $5.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchRecognizeResponse clone() =>
      BatchRecognizeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchRecognizeResponse copyWith(
          void Function(BatchRecognizeResponse) updates) =>
      super.copyWith((message) => updates(message as BatchRecognizeResponse))
          as BatchRecognizeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchRecognizeResponse create() => BatchRecognizeResponse._();
  BatchRecognizeResponse createEmptyInstance() => create();
  static $pb.PbList<BatchRecognizeResponse> createRepeated() =>
      $pb.PbList<BatchRecognizeResponse>();
  @$core.pragma('dart2js:noInline')
  static BatchRecognizeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchRecognizeResponse>(create);
  static BatchRecognizeResponse? _defaultInstance;

  /// Map from filename to the final result for that file.
  @$pb.TagNumber(1)
  $core.Map<$core.String, BatchRecognizeFileResult> get results => $_getMap(0);

  /// When available, billed audio seconds for the corresponding request.
  @$pb.TagNumber(2)
  $5.Duration get totalBilledDuration => $_getN(1);
  @$pb.TagNumber(2)
  set totalBilledDuration($5.Duration v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTotalBilledDuration() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalBilledDuration() => clearField(2);
  @$pb.TagNumber(2)
  $5.Duration ensureTotalBilledDuration() => $_ensure(1);
}

/// Output type for Cloud Storage of BatchRecognize transcripts. Though this
/// proto isn't returned in this API anywhere, the Cloud Storage transcripts will
/// be this proto serialized and should be parsed as such.
class BatchRecognizeResults extends $pb.GeneratedMessage {
  factory BatchRecognizeResults({
    $core.Iterable<SpeechRecognitionResult>? results,
    RecognitionResponseMetadata? metadata,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    if (metadata != null) {
      $result.metadata = metadata;
    }
    return $result;
  }
  BatchRecognizeResults._() : super();
  factory BatchRecognizeResults.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchRecognizeResults.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchRecognizeResults',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..pc<SpeechRecognitionResult>(
        1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: SpeechRecognitionResult.create)
    ..aOM<RecognitionResponseMetadata>(2, _omitFieldNames ? '' : 'metadata',
        subBuilder: RecognitionResponseMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchRecognizeResults clone() =>
      BatchRecognizeResults()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchRecognizeResults copyWith(
          void Function(BatchRecognizeResults) updates) =>
      super.copyWith((message) => updates(message as BatchRecognizeResults))
          as BatchRecognizeResults;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchRecognizeResults create() => BatchRecognizeResults._();
  BatchRecognizeResults createEmptyInstance() => create();
  static $pb.PbList<BatchRecognizeResults> createRepeated() =>
      $pb.PbList<BatchRecognizeResults>();
  @$core.pragma('dart2js:noInline')
  static BatchRecognizeResults getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchRecognizeResults>(create);
  static BatchRecognizeResults? _defaultInstance;

  /// Sequential list of transcription results corresponding to sequential
  /// portions of audio.
  @$pb.TagNumber(1)
  $core.List<SpeechRecognitionResult> get results => $_getList(0);

  /// Metadata about the recognition.
  @$pb.TagNumber(2)
  RecognitionResponseMetadata get metadata => $_getN(1);
  @$pb.TagNumber(2)
  set metadata(RecognitionResponseMetadata v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMetadata() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetadata() => clearField(2);
  @$pb.TagNumber(2)
  RecognitionResponseMetadata ensureMetadata() => $_ensure(1);
}

/// Final results for a single file.
class BatchRecognizeFileResult extends $pb.GeneratedMessage {
  factory BatchRecognizeFileResult({
    $core.String? uri,
    $6.Status? error,
    RecognitionResponseMetadata? metadata,
    BatchRecognizeResults? transcript,
  }) {
    final $result = create();
    if (uri != null) {
      $result.uri = uri;
    }
    if (error != null) {
      $result.error = error;
    }
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (transcript != null) {
      $result.transcript = transcript;
    }
    return $result;
  }
  BatchRecognizeFileResult._() : super();
  factory BatchRecognizeFileResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchRecognizeFileResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchRecognizeFileResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uri')
    ..aOM<$6.Status>(2, _omitFieldNames ? '' : 'error',
        subBuilder: $6.Status.create)
    ..aOM<RecognitionResponseMetadata>(3, _omitFieldNames ? '' : 'metadata',
        subBuilder: RecognitionResponseMetadata.create)
    ..aOM<BatchRecognizeResults>(4, _omitFieldNames ? '' : 'transcript',
        subBuilder: BatchRecognizeResults.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchRecognizeFileResult clone() =>
      BatchRecognizeFileResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchRecognizeFileResult copyWith(
          void Function(BatchRecognizeFileResult) updates) =>
      super.copyWith((message) => updates(message as BatchRecognizeFileResult))
          as BatchRecognizeFileResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchRecognizeFileResult create() => BatchRecognizeFileResult._();
  BatchRecognizeFileResult createEmptyInstance() => create();
  static $pb.PbList<BatchRecognizeFileResult> createRepeated() =>
      $pb.PbList<BatchRecognizeFileResult>();
  @$core.pragma('dart2js:noInline')
  static BatchRecognizeFileResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchRecognizeFileResult>(create);
  static BatchRecognizeFileResult? _defaultInstance;

  /// The Cloud Storage URI to which recognition results were written.
  @$pb.TagNumber(1)
  $core.String get uri => $_getSZ(0);
  @$pb.TagNumber(1)
  set uri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearUri() => clearField(1);

  /// Error if one was encountered.
  @$pb.TagNumber(2)
  $6.Status get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($6.Status v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $6.Status ensureError() => $_ensure(1);

  @$pb.TagNumber(3)
  RecognitionResponseMetadata get metadata => $_getN(2);
  @$pb.TagNumber(3)
  set metadata(RecognitionResponseMetadata v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMetadata() => $_has(2);
  @$pb.TagNumber(3)
  void clearMetadata() => clearField(3);
  @$pb.TagNumber(3)
  RecognitionResponseMetadata ensureMetadata() => $_ensure(2);

  /// The transcript for the audio file. This is populated only when
  /// [InlineOutputConfig][google.cloud.speech.v2.InlineOutputConfig] is set in
  /// the
  /// [RecognitionOutputConfig][[google.cloud.speech.v2.RecognitionOutputConfig].
  @$pb.TagNumber(4)
  BatchRecognizeResults get transcript => $_getN(3);
  @$pb.TagNumber(4)
  set transcript(BatchRecognizeResults v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTranscript() => $_has(3);
  @$pb.TagNumber(4)
  void clearTranscript() => clearField(4);
  @$pb.TagNumber(4)
  BatchRecognizeResults ensureTranscript() => $_ensure(3);
}

/// Metadata about transcription for a single file (for example, progress
/// percent).
class BatchRecognizeTranscriptionMetadata extends $pb.GeneratedMessage {
  factory BatchRecognizeTranscriptionMetadata({
    $core.int? progressPercent,
    $6.Status? error,
    $core.String? uri,
  }) {
    final $result = create();
    if (progressPercent != null) {
      $result.progressPercent = progressPercent;
    }
    if (error != null) {
      $result.error = error;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  BatchRecognizeTranscriptionMetadata._() : super();
  factory BatchRecognizeTranscriptionMetadata.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchRecognizeTranscriptionMetadata.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchRecognizeTranscriptionMetadata',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'progressPercent', $pb.PbFieldType.O3)
    ..aOM<$6.Status>(2, _omitFieldNames ? '' : 'error',
        subBuilder: $6.Status.create)
    ..aOS(3, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchRecognizeTranscriptionMetadata clone() =>
      BatchRecognizeTranscriptionMetadata()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchRecognizeTranscriptionMetadata copyWith(
          void Function(BatchRecognizeTranscriptionMetadata) updates) =>
      super.copyWith((message) =>
              updates(message as BatchRecognizeTranscriptionMetadata))
          as BatchRecognizeTranscriptionMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchRecognizeTranscriptionMetadata create() =>
      BatchRecognizeTranscriptionMetadata._();
  BatchRecognizeTranscriptionMetadata createEmptyInstance() => create();
  static $pb.PbList<BatchRecognizeTranscriptionMetadata> createRepeated() =>
      $pb.PbList<BatchRecognizeTranscriptionMetadata>();
  @$core.pragma('dart2js:noInline')
  static BatchRecognizeTranscriptionMetadata getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          BatchRecognizeTranscriptionMetadata>(create);
  static BatchRecognizeTranscriptionMetadata? _defaultInstance;

  /// How much of the file has been transcribed so far.
  @$pb.TagNumber(1)
  $core.int get progressPercent => $_getIZ(0);
  @$pb.TagNumber(1)
  set progressPercent($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProgressPercent() => $_has(0);
  @$pb.TagNumber(1)
  void clearProgressPercent() => clearField(1);

  /// Error if one was encountered.
  @$pb.TagNumber(2)
  $6.Status get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($6.Status v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $6.Status ensureError() => $_ensure(1);

  /// The Cloud Storage URI to which recognition results will be written.
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);
}

/// Operation metadata for
/// [BatchRecognize][google.cloud.speech.v2.Speech.BatchRecognize].
class BatchRecognizeMetadata extends $pb.GeneratedMessage {
  factory BatchRecognizeMetadata({
    $core.Map<$core.String, BatchRecognizeTranscriptionMetadata>?
        transcriptionMetadata,
  }) {
    final $result = create();
    if (transcriptionMetadata != null) {
      $result.transcriptionMetadata.addAll(transcriptionMetadata);
    }
    return $result;
  }
  BatchRecognizeMetadata._() : super();
  factory BatchRecognizeMetadata.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchRecognizeMetadata.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchRecognizeMetadata',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..m<$core.String, BatchRecognizeTranscriptionMetadata>(
        1, _omitFieldNames ? '' : 'transcriptionMetadata',
        entryClassName: 'BatchRecognizeMetadata.TranscriptionMetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: BatchRecognizeTranscriptionMetadata.create,
        valueDefaultOrMaker: BatchRecognizeTranscriptionMetadata.getDefault,
        packageName: const $pb.PackageName('google.cloud.speech.v2'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchRecognizeMetadata clone() =>
      BatchRecognizeMetadata()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchRecognizeMetadata copyWith(
          void Function(BatchRecognizeMetadata) updates) =>
      super.copyWith((message) => updates(message as BatchRecognizeMetadata))
          as BatchRecognizeMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchRecognizeMetadata create() => BatchRecognizeMetadata._();
  BatchRecognizeMetadata createEmptyInstance() => create();
  static $pb.PbList<BatchRecognizeMetadata> createRepeated() =>
      $pb.PbList<BatchRecognizeMetadata>();
  @$core.pragma('dart2js:noInline')
  static BatchRecognizeMetadata getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchRecognizeMetadata>(create);
  static BatchRecognizeMetadata? _defaultInstance;

  /// Map from provided filename to the transcription metadata for that file.
  @$pb.TagNumber(1)
  $core.Map<$core.String, BatchRecognizeTranscriptionMetadata>
      get transcriptionMetadata => $_getMap(0);
}

enum BatchRecognizeFileMetadata_AudioSource { uri, notSet }

/// Metadata about a single file in a batch for BatchRecognize.
class BatchRecognizeFileMetadata extends $pb.GeneratedMessage {
  factory BatchRecognizeFileMetadata({
    $core.String? uri,
    RecognitionConfig? config,
    $4.FieldMask? configMask,
  }) {
    final $result = create();
    if (uri != null) {
      $result.uri = uri;
    }
    if (config != null) {
      $result.config = config;
    }
    if (configMask != null) {
      $result.configMask = configMask;
    }
    return $result;
  }
  BatchRecognizeFileMetadata._() : super();
  factory BatchRecognizeFileMetadata.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchRecognizeFileMetadata.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, BatchRecognizeFileMetadata_AudioSource>
      _BatchRecognizeFileMetadata_AudioSourceByTag = {
    1: BatchRecognizeFileMetadata_AudioSource.uri,
    0: BatchRecognizeFileMetadata_AudioSource.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchRecognizeFileMetadata',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'uri')
    ..aOM<RecognitionConfig>(4, _omitFieldNames ? '' : 'config',
        subBuilder: RecognitionConfig.create)
    ..aOM<$4.FieldMask>(5, _omitFieldNames ? '' : 'configMask',
        subBuilder: $4.FieldMask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchRecognizeFileMetadata clone() =>
      BatchRecognizeFileMetadata()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchRecognizeFileMetadata copyWith(
          void Function(BatchRecognizeFileMetadata) updates) =>
      super.copyWith(
              (message) => updates(message as BatchRecognizeFileMetadata))
          as BatchRecognizeFileMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchRecognizeFileMetadata create() => BatchRecognizeFileMetadata._();
  BatchRecognizeFileMetadata createEmptyInstance() => create();
  static $pb.PbList<BatchRecognizeFileMetadata> createRepeated() =>
      $pb.PbList<BatchRecognizeFileMetadata>();
  @$core.pragma('dart2js:noInline')
  static BatchRecognizeFileMetadata getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchRecognizeFileMetadata>(create);
  static BatchRecognizeFileMetadata? _defaultInstance;

  BatchRecognizeFileMetadata_AudioSource whichAudioSource() =>
      _BatchRecognizeFileMetadata_AudioSourceByTag[$_whichOneof(0)]!;
  void clearAudioSource() => clearField($_whichOneof(0));

  /// Cloud Storage URI for the audio file.
  @$pb.TagNumber(1)
  $core.String get uri => $_getSZ(0);
  @$pb.TagNumber(1)
  set uri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearUri() => clearField(1);

  /// Features and audio metadata to use for the Automatic Speech Recognition.
  /// This field in combination with the
  /// [config_mask][google.cloud.speech.v2.BatchRecognizeFileMetadata.config_mask]
  /// field can be used to override parts of the
  /// [default_recognition_config][google.cloud.speech.v2.Recognizer.default_recognition_config]
  /// of the Recognizer resource as well as the
  /// [config][google.cloud.speech.v2.BatchRecognizeRequest.config] at the
  /// request level.
  @$pb.TagNumber(4)
  RecognitionConfig get config => $_getN(1);
  @$pb.TagNumber(4)
  set config(RecognitionConfig v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasConfig() => $_has(1);
  @$pb.TagNumber(4)
  void clearConfig() => clearField(4);
  @$pb.TagNumber(4)
  RecognitionConfig ensureConfig() => $_ensure(1);

  /// The list of fields in
  /// [config][google.cloud.speech.v2.BatchRecognizeFileMetadata.config] that
  /// override the values in the
  /// [default_recognition_config][google.cloud.speech.v2.Recognizer.default_recognition_config]
  /// of the recognizer during this recognition request. If no mask is provided,
  /// all non-default valued fields in
  /// [config][google.cloud.speech.v2.BatchRecognizeFileMetadata.config] override
  /// the values in the recognizer for this recognition request. If a mask is
  /// provided, only the fields listed in the mask override the config in the
  /// recognizer for this recognition request. If a wildcard (`*`) is provided,
  /// [config][google.cloud.speech.v2.BatchRecognizeFileMetadata.config]
  /// completely overrides and replaces the config in the recognizer for this
  /// recognition request.
  @$pb.TagNumber(5)
  $4.FieldMask get configMask => $_getN(2);
  @$pb.TagNumber(5)
  set configMask($4.FieldMask v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasConfigMask() => $_has(2);
  @$pb.TagNumber(5)
  void clearConfigMask() => clearField(5);
  @$pb.TagNumber(5)
  $4.FieldMask ensureConfigMask() => $_ensure(2);
}

/// A streaming speech recognition result corresponding to a portion of the audio
/// that is currently being processed.
class StreamingRecognitionResult extends $pb.GeneratedMessage {
  factory StreamingRecognitionResult({
    $core.Iterable<SpeechRecognitionAlternative>? alternatives,
    $core.bool? isFinal,
    $core.double? stability,
    $5.Duration? resultEndOffset,
    $core.int? channelTag,
    $core.String? languageCode,
  }) {
    final $result = create();
    if (alternatives != null) {
      $result.alternatives.addAll(alternatives);
    }
    if (isFinal != null) {
      $result.isFinal = isFinal;
    }
    if (stability != null) {
      $result.stability = stability;
    }
    if (resultEndOffset != null) {
      $result.resultEndOffset = resultEndOffset;
    }
    if (channelTag != null) {
      $result.channelTag = channelTag;
    }
    if (languageCode != null) {
      $result.languageCode = languageCode;
    }
    return $result;
  }
  StreamingRecognitionResult._() : super();
  factory StreamingRecognitionResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StreamingRecognitionResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamingRecognitionResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..pc<SpeechRecognitionAlternative>(
        1, _omitFieldNames ? '' : 'alternatives', $pb.PbFieldType.PM,
        subBuilder: SpeechRecognitionAlternative.create)
    ..aOB(2, _omitFieldNames ? '' : 'isFinal')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'stability', $pb.PbFieldType.OF)
    ..aOM<$5.Duration>(4, _omitFieldNames ? '' : 'resultEndOffset',
        subBuilder: $5.Duration.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'channelTag', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'languageCode')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StreamingRecognitionResult clone() =>
      StreamingRecognitionResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StreamingRecognitionResult copyWith(
          void Function(StreamingRecognitionResult) updates) =>
      super.copyWith(
              (message) => updates(message as StreamingRecognitionResult))
          as StreamingRecognitionResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionResult create() => StreamingRecognitionResult._();
  StreamingRecognitionResult createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognitionResult> createRepeated() =>
      $pb.PbList<StreamingRecognitionResult>();
  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamingRecognitionResult>(create);
  static StreamingRecognitionResult? _defaultInstance;

  /// May contain one or more recognition hypotheses. These alternatives are
  /// ordered in terms of accuracy, with the top (first) alternative being the
  /// most probable, as ranked by the recognizer.
  @$pb.TagNumber(1)
  $core.List<SpeechRecognitionAlternative> get alternatives => $_getList(0);

  /// If `false`, this
  /// [StreamingRecognitionResult][google.cloud.speech.v2.StreamingRecognitionResult]
  /// represents an interim result that may change. If `true`, this is the final
  /// time the speech service will return this particular
  /// [StreamingRecognitionResult][google.cloud.speech.v2.StreamingRecognitionResult],
  /// the recognizer will not return any further hypotheses for this portion of
  /// the transcript and corresponding audio.
  @$pb.TagNumber(2)
  $core.bool get isFinal => $_getBF(1);
  @$pb.TagNumber(2)
  set isFinal($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIsFinal() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsFinal() => clearField(2);

  /// An estimate of the likelihood that the recognizer will not change its guess
  /// about this interim result. Values range from 0.0 (completely unstable)
  /// to 1.0 (completely stable). This field is only provided for interim results
  /// ([is_final][google.cloud.speech.v2.StreamingRecognitionResult.is_final]=`false`).
  /// The default of 0.0 is a sentinel value indicating `stability` was not set.
  @$pb.TagNumber(3)
  $core.double get stability => $_getN(2);
  @$pb.TagNumber(3)
  set stability($core.double v) {
    $_setFloat(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStability() => $_has(2);
  @$pb.TagNumber(3)
  void clearStability() => clearField(3);

  /// Time offset of the end of this result relative to the beginning of the
  /// audio.
  @$pb.TagNumber(4)
  $5.Duration get resultEndOffset => $_getN(3);
  @$pb.TagNumber(4)
  set resultEndOffset($5.Duration v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasResultEndOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearResultEndOffset() => clearField(4);
  @$pb.TagNumber(4)
  $5.Duration ensureResultEndOffset() => $_ensure(3);

  /// For multi-channel audio, this is the channel number corresponding to the
  /// recognized result for the audio from that channel.
  /// For
  /// `audio_channel_count` = `N`, its output values can range from `1` to `N`.
  @$pb.TagNumber(5)
  $core.int get channelTag => $_getIZ(4);
  @$pb.TagNumber(5)
  set channelTag($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasChannelTag() => $_has(4);
  @$pb.TagNumber(5)
  void clearChannelTag() => clearField(5);

  /// Output only. The [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt)
  /// language tag of the language in this result. This language code was
  /// detected to have the most likelihood of being spoken in the audio.
  @$pb.TagNumber(6)
  $core.String get languageCode => $_getSZ(5);
  @$pb.TagNumber(6)
  set languageCode($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasLanguageCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearLanguageCode() => clearField(6);
}

///  `StreamingRecognizeResponse` is the only message returned to the client by
///  `StreamingRecognize`. A series of zero or more `StreamingRecognizeResponse`
///  messages are streamed back to the client. If there is no recognizable
///  audio then no messages are streamed back to the client.
///
///  Here are some examples of `StreamingRecognizeResponse`s that might
///  be returned while processing audio:
///
///  1. results { alternatives { transcript: "tube" } stability: 0.01 }
///
///  2. results { alternatives { transcript: "to be a" } stability: 0.01 }
///
///  3. results { alternatives { transcript: "to be" } stability: 0.9 }
///     results { alternatives { transcript: " or not to be" } stability: 0.01 }
///
///  4. results { alternatives { transcript: "to be or not to be"
///                              confidence: 0.92 }
///               alternatives { transcript: "to bee or not to bee" }
///               is_final: true }
///
///  5. results { alternatives { transcript: " that's" } stability: 0.01 }
///
///  6. results { alternatives { transcript: " that is" } stability: 0.9 }
///     results { alternatives { transcript: " the question" } stability: 0.01 }
///
///  7. results { alternatives { transcript: " that is the question"
///                              confidence: 0.98 }
///               alternatives { transcript: " that was the question" }
///               is_final: true }
///
///  Notes:
///
///  - Only two of the above responses #4 and #7 contain final results; they are
///    indicated by `is_final: true`. Concatenating these together generates the
///    full transcript: "to be or not to be that is the question".
///
///  - The others contain interim `results`. #3 and #6 contain two interim
///    `results`: the first portion has a high stability and is less likely to
///    change; the second portion has a low stability and is very likely to
///    change. A UI designer might choose to show only high stability `results`.
///
///  - The specific `stability` and `confidence` values shown above are only for
///    illustrative purposes. Actual values may vary.
///
///  - In each response, only one of these fields will be set:
///      `error`,
///      `speech_event_type`, or
///      one or more (repeated) `results`.
class StreamingRecognizeResponse extends $pb.GeneratedMessage {
  factory StreamingRecognizeResponse({
    StreamingRecognizeResponse_SpeechEventType? speechEventType,
    RecognitionResponseMetadata? metadata,
    $core.Iterable<StreamingRecognitionResult>? results,
    $5.Duration? speechEventOffset,
  }) {
    final $result = create();
    if (speechEventType != null) {
      $result.speechEventType = speechEventType;
    }
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (results != null) {
      $result.results.addAll(results);
    }
    if (speechEventOffset != null) {
      $result.speechEventOffset = speechEventOffset;
    }
    return $result;
  }
  StreamingRecognizeResponse._() : super();
  factory StreamingRecognizeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StreamingRecognizeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamingRecognizeResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..e<StreamingRecognizeResponse_SpeechEventType>(
        3, _omitFieldNames ? '' : 'speechEventType', $pb.PbFieldType.OE,
        defaultOrMaker: StreamingRecognizeResponse_SpeechEventType
            .SPEECH_EVENT_TYPE_UNSPECIFIED,
        valueOf: StreamingRecognizeResponse_SpeechEventType.valueOf,
        enumValues: StreamingRecognizeResponse_SpeechEventType.values)
    ..aOM<RecognitionResponseMetadata>(5, _omitFieldNames ? '' : 'metadata',
        subBuilder: RecognitionResponseMetadata.create)
    ..pc<StreamingRecognitionResult>(
        6, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: StreamingRecognitionResult.create)
    ..aOM<$5.Duration>(7, _omitFieldNames ? '' : 'speechEventOffset',
        subBuilder: $5.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StreamingRecognizeResponse clone() =>
      StreamingRecognizeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StreamingRecognizeResponse copyWith(
          void Function(StreamingRecognizeResponse) updates) =>
      super.copyWith(
              (message) => updates(message as StreamingRecognizeResponse))
          as StreamingRecognizeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamingRecognizeResponse create() => StreamingRecognizeResponse._();
  StreamingRecognizeResponse createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognizeResponse> createRepeated() =>
      $pb.PbList<StreamingRecognizeResponse>();
  @$core.pragma('dart2js:noInline')
  static StreamingRecognizeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamingRecognizeResponse>(create);
  static StreamingRecognizeResponse? _defaultInstance;

  /// Indicates the type of speech event.
  @$pb.TagNumber(3)
  StreamingRecognizeResponse_SpeechEventType get speechEventType => $_getN(0);
  @$pb.TagNumber(3)
  set speechEventType(StreamingRecognizeResponse_SpeechEventType v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSpeechEventType() => $_has(0);
  @$pb.TagNumber(3)
  void clearSpeechEventType() => clearField(3);

  /// Metadata about the recognition.
  @$pb.TagNumber(5)
  RecognitionResponseMetadata get metadata => $_getN(1);
  @$pb.TagNumber(5)
  set metadata(RecognitionResponseMetadata v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasMetadata() => $_has(1);
  @$pb.TagNumber(5)
  void clearMetadata() => clearField(5);
  @$pb.TagNumber(5)
  RecognitionResponseMetadata ensureMetadata() => $_ensure(1);

  /// This repeated list contains zero or more results that
  /// correspond to consecutive portions of the audio currently being processed.
  /// It contains zero or one
  /// [is_final][google.cloud.speech.v2.StreamingRecognitionResult.is_final]=`true`
  /// result (the newly settled portion), followed by zero or more
  /// [is_final][google.cloud.speech.v2.StreamingRecognitionResult.is_final]=`false`
  /// results (the interim results).
  @$pb.TagNumber(6)
  $core.List<StreamingRecognitionResult> get results => $_getList(2);

  /// Time offset between the beginning of the audio and event emission.
  @$pb.TagNumber(7)
  $5.Duration get speechEventOffset => $_getN(3);
  @$pb.TagNumber(7)
  set speechEventOffset($5.Duration v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasSpeechEventOffset() => $_has(3);
  @$pb.TagNumber(7)
  void clearSpeechEventOffset() => clearField(7);
  @$pb.TagNumber(7)
  $5.Duration ensureSpeechEventOffset() => $_ensure(3);
}

/// Message representing the config for the Speech-to-Text API. This includes an
/// optional [KMS key](https://cloud.google.com/kms/docs/resource-hierarchy#keys)
/// with which incoming data will be encrypted.
class Config extends $pb.GeneratedMessage {
  factory Config({
    $core.String? name,
    $core.String? kmsKeyName,
    $3.Timestamp? updateTime,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (kmsKeyName != null) {
      $result.kmsKeyName = kmsKeyName;
    }
    if (updateTime != null) {
      $result.updateTime = updateTime;
    }
    return $result;
  }
  Config._() : super();
  factory Config.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Config.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Config',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'kmsKeyName')
    ..aOM<$3.Timestamp>(3, _omitFieldNames ? '' : 'updateTime',
        subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Config clone() => Config()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Config copyWith(void Function(Config) updates) =>
      super.copyWith((message) => updates(message as Config)) as Config;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Config create() => Config._();
  Config createEmptyInstance() => create();
  static $pb.PbList<Config> createRepeated() => $pb.PbList<Config>();
  @$core.pragma('dart2js:noInline')
  static Config getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Config>(create);
  static Config? _defaultInstance;

  /// Output only. The name of the config resource. There is exactly one config
  /// resource per project per location. The expected format is
  /// `projects/{project}/locations/{location}/config`.
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

  /// Optional. An optional [KMS key
  /// name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) that if
  /// present, will be used to encrypt Speech-to-Text resources at-rest. Updating
  /// this key will not encrypt existing resources using this key; only new
  /// resources will be encrypted using this key. The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  @$pb.TagNumber(2)
  $core.String get kmsKeyName => $_getSZ(1);
  @$pb.TagNumber(2)
  set kmsKeyName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKmsKeyName() => $_has(1);
  @$pb.TagNumber(2)
  void clearKmsKeyName() => clearField(2);

  /// Output only. The most recent time this resource was modified.
  @$pb.TagNumber(3)
  $3.Timestamp get updateTime => $_getN(2);
  @$pb.TagNumber(3)
  set updateTime($3.Timestamp v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUpdateTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdateTime() => clearField(3);
  @$pb.TagNumber(3)
  $3.Timestamp ensureUpdateTime() => $_ensure(2);
}

/// Request message for the
/// [GetConfig][google.cloud.speech.v2.Speech.GetConfig] method.
class GetConfigRequest extends $pb.GeneratedMessage {
  factory GetConfigRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetConfigRequest._() : super();
  factory GetConfigRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetConfigRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetConfigRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetConfigRequest clone() => GetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetConfigRequest copyWith(void Function(GetConfigRequest) updates) =>
      super.copyWith((message) => updates(message as GetConfigRequest))
          as GetConfigRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConfigRequest create() => GetConfigRequest._();
  GetConfigRequest createEmptyInstance() => create();
  static $pb.PbList<GetConfigRequest> createRepeated() =>
      $pb.PbList<GetConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static GetConfigRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetConfigRequest>(create);
  static GetConfigRequest? _defaultInstance;

  /// Required. The name of the config to retrieve. There is exactly one config
  /// resource per project per location. The expected format is
  /// `projects/{project}/locations/{location}/config`.
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
}

/// Request message for the
/// [UpdateConfig][google.cloud.speech.v2.Speech.UpdateConfig] method.
class UpdateConfigRequest extends $pb.GeneratedMessage {
  factory UpdateConfigRequest({
    Config? config,
    $4.FieldMask? updateMask,
  }) {
    final $result = create();
    if (config != null) {
      $result.config = config;
    }
    if (updateMask != null) {
      $result.updateMask = updateMask;
    }
    return $result;
  }
  UpdateConfigRequest._() : super();
  factory UpdateConfigRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateConfigRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateConfigRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOM<Config>(1, _omitFieldNames ? '' : 'config', subBuilder: Config.create)
    ..aOM<$4.FieldMask>(2, _omitFieldNames ? '' : 'updateMask',
        subBuilder: $4.FieldMask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateConfigRequest clone() => UpdateConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateConfigRequest copyWith(void Function(UpdateConfigRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateConfigRequest))
          as UpdateConfigRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateConfigRequest create() => UpdateConfigRequest._();
  UpdateConfigRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateConfigRequest> createRepeated() =>
      $pb.PbList<UpdateConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateConfigRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateConfigRequest>(create);
  static UpdateConfigRequest? _defaultInstance;

  ///  Required. The config to update.
  ///
  ///  The config's `name` field is used to identify the config to be updated.
  ///  The expected format is `projects/{project}/locations/{location}/config`.
  @$pb.TagNumber(1)
  Config get config => $_getN(0);
  @$pb.TagNumber(1)
  set config(Config v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  Config ensureConfig() => $_ensure(0);

  /// The list of fields to be updated.
  @$pb.TagNumber(2)
  $4.FieldMask get updateMask => $_getN(1);
  @$pb.TagNumber(2)
  set updateMask($4.FieldMask v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdateMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateMask() => clearField(2);
  @$pb.TagNumber(2)
  $4.FieldMask ensureUpdateMask() => $_ensure(1);
}

/// An item of the class.
class CustomClass_ClassItem extends $pb.GeneratedMessage {
  factory CustomClass_ClassItem({
    $core.String? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  CustomClass_ClassItem._() : super();
  factory CustomClass_ClassItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CustomClass_ClassItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CustomClass.ClassItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CustomClass_ClassItem clone() =>
      CustomClass_ClassItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CustomClass_ClassItem copyWith(
          void Function(CustomClass_ClassItem) updates) =>
      super.copyWith((message) => updates(message as CustomClass_ClassItem))
          as CustomClass_ClassItem;

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

  /// The class item's value.
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

/// CustomClass for biasing in speech recognition. Used to define a set of words
/// or phrases that represents a common concept or theme likely to appear in your
/// audio, for example a list of passenger ship names.
class CustomClass extends $pb.GeneratedMessage {
  factory CustomClass({
    $core.String? name,
    $core.String? uid,
    $core.String? displayName,
    $core.Iterable<CustomClass_ClassItem>? items,
    $3.Timestamp? createTime,
    $3.Timestamp? updateTime,
    $3.Timestamp? deleteTime,
    $3.Timestamp? expireTime,
    $core.Map<$core.String, $core.String>? annotations,
    $core.String? etag,
    $core.bool? reconciling,
    $core.String? kmsKeyName,
    $core.String? kmsKeyVersionName,
    CustomClass_State? state,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (displayName != null) {
      $result.displayName = displayName;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    if (createTime != null) {
      $result.createTime = createTime;
    }
    if (updateTime != null) {
      $result.updateTime = updateTime;
    }
    if (deleteTime != null) {
      $result.deleteTime = deleteTime;
    }
    if (expireTime != null) {
      $result.expireTime = expireTime;
    }
    if (annotations != null) {
      $result.annotations.addAll(annotations);
    }
    if (etag != null) {
      $result.etag = etag;
    }
    if (reconciling != null) {
      $result.reconciling = reconciling;
    }
    if (kmsKeyName != null) {
      $result.kmsKeyName = kmsKeyName;
    }
    if (kmsKeyVersionName != null) {
      $result.kmsKeyVersionName = kmsKeyVersionName;
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  CustomClass._() : super();
  factory CustomClass.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CustomClass.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CustomClass',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'uid')
    ..aOS(4, _omitFieldNames ? '' : 'displayName')
    ..pc<CustomClass_ClassItem>(
        5, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM,
        subBuilder: CustomClass_ClassItem.create)
    ..aOM<$3.Timestamp>(6, _omitFieldNames ? '' : 'createTime',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(7, _omitFieldNames ? '' : 'updateTime',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(8, _omitFieldNames ? '' : 'deleteTime',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(9, _omitFieldNames ? '' : 'expireTime',
        subBuilder: $3.Timestamp.create)
    ..m<$core.String, $core.String>(10, _omitFieldNames ? '' : 'annotations',
        entryClassName: 'CustomClass.AnnotationsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('google.cloud.speech.v2'))
    ..aOS(11, _omitFieldNames ? '' : 'etag')
    ..aOB(12, _omitFieldNames ? '' : 'reconciling')
    ..aOS(13, _omitFieldNames ? '' : 'kmsKeyName')
    ..aOS(14, _omitFieldNames ? '' : 'kmsKeyVersionName')
    ..e<CustomClass_State>(
        15, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE,
        defaultOrMaker: CustomClass_State.STATE_UNSPECIFIED,
        valueOf: CustomClass_State.valueOf,
        enumValues: CustomClass_State.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CustomClass clone() => CustomClass()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CustomClass copyWith(void Function(CustomClass) updates) =>
      super.copyWith((message) => updates(message as CustomClass))
          as CustomClass;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomClass create() => CustomClass._();
  CustomClass createEmptyInstance() => create();
  static $pb.PbList<CustomClass> createRepeated() => $pb.PbList<CustomClass>();
  @$core.pragma('dart2js:noInline')
  static CustomClass getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CustomClass>(create);
  static CustomClass? _defaultInstance;

  /// Output only. The resource name of the CustomClass.
  /// Format:
  /// `projects/{project}/locations/{location}/customClasses/{custom_class}`.
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

  /// Output only. System-assigned unique identifier for the CustomClass.
  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  /// User-settable, human-readable name for the CustomClass. Must be 63
  /// characters or less.
  @$pb.TagNumber(4)
  $core.String get displayName => $_getSZ(2);
  @$pb.TagNumber(4)
  set displayName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDisplayName() => $_has(2);
  @$pb.TagNumber(4)
  void clearDisplayName() => clearField(4);

  /// A collection of class items.
  @$pb.TagNumber(5)
  $core.List<CustomClass_ClassItem> get items => $_getList(3);

  /// Output only. Creation time.
  @$pb.TagNumber(6)
  $3.Timestamp get createTime => $_getN(4);
  @$pb.TagNumber(6)
  set createTime($3.Timestamp v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCreateTime() => $_has(4);
  @$pb.TagNumber(6)
  void clearCreateTime() => clearField(6);
  @$pb.TagNumber(6)
  $3.Timestamp ensureCreateTime() => $_ensure(4);

  /// Output only. The most recent time this resource was modified.
  @$pb.TagNumber(7)
  $3.Timestamp get updateTime => $_getN(5);
  @$pb.TagNumber(7)
  set updateTime($3.Timestamp v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasUpdateTime() => $_has(5);
  @$pb.TagNumber(7)
  void clearUpdateTime() => clearField(7);
  @$pb.TagNumber(7)
  $3.Timestamp ensureUpdateTime() => $_ensure(5);

  /// Output only. The time at which this resource was requested for deletion.
  @$pb.TagNumber(8)
  $3.Timestamp get deleteTime => $_getN(6);
  @$pb.TagNumber(8)
  set deleteTime($3.Timestamp v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasDeleteTime() => $_has(6);
  @$pb.TagNumber(8)
  void clearDeleteTime() => clearField(8);
  @$pb.TagNumber(8)
  $3.Timestamp ensureDeleteTime() => $_ensure(6);

  /// Output only. The time at which this resource will be purged.
  @$pb.TagNumber(9)
  $3.Timestamp get expireTime => $_getN(7);
  @$pb.TagNumber(9)
  set expireTime($3.Timestamp v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasExpireTime() => $_has(7);
  @$pb.TagNumber(9)
  void clearExpireTime() => clearField(9);
  @$pb.TagNumber(9)
  $3.Timestamp ensureExpireTime() => $_ensure(7);

  /// Allows users to store small amounts of arbitrary data.
  /// Both the key and the value must be 63 characters or less each.
  /// At most 100 annotations.
  @$pb.TagNumber(10)
  $core.Map<$core.String, $core.String> get annotations => $_getMap(8);

  /// Output only. This checksum is computed by the server based on the value of
  /// other fields. This may be sent on update, undelete, and delete requests to
  /// ensure the client has an up-to-date value before proceeding.
  @$pb.TagNumber(11)
  $core.String get etag => $_getSZ(9);
  @$pb.TagNumber(11)
  set etag($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasEtag() => $_has(9);
  @$pb.TagNumber(11)
  void clearEtag() => clearField(11);

  /// Output only. Whether or not this CustomClass is in the process of being
  /// updated.
  @$pb.TagNumber(12)
  $core.bool get reconciling => $_getBF(10);
  @$pb.TagNumber(12)
  set reconciling($core.bool v) {
    $_setBool(10, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasReconciling() => $_has(10);
  @$pb.TagNumber(12)
  void clearReconciling() => clearField(12);

  /// Output only. The [KMS key
  /// name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with which
  /// the CustomClass is encrypted. The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  @$pb.TagNumber(13)
  $core.String get kmsKeyName => $_getSZ(11);
  @$pb.TagNumber(13)
  set kmsKeyName($core.String v) {
    $_setString(11, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasKmsKeyName() => $_has(11);
  @$pb.TagNumber(13)
  void clearKmsKeyName() => clearField(13);

  /// Output only. The [KMS key version
  /// name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions)
  /// with which the CustomClass is encrypted. The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  @$pb.TagNumber(14)
  $core.String get kmsKeyVersionName => $_getSZ(12);
  @$pb.TagNumber(14)
  set kmsKeyVersionName($core.String v) {
    $_setString(12, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasKmsKeyVersionName() => $_has(12);
  @$pb.TagNumber(14)
  void clearKmsKeyVersionName() => clearField(14);

  /// Output only. The CustomClass lifecycle state.
  @$pb.TagNumber(15)
  CustomClass_State get state => $_getN(13);
  @$pb.TagNumber(15)
  set state(CustomClass_State v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasState() => $_has(13);
  @$pb.TagNumber(15)
  void clearState() => clearField(15);
}

///  A Phrase contains words and phrase "hints" so that the speech recognition
///  is more likely to recognize them. This can be used to improve the accuracy
///  for specific words and phrases, for example, if specific commands are
///  typically spoken by the user. This can also be used to add additional words
///  to the vocabulary of the recognizer.
///
///  List items can also include CustomClass references containing groups of
///  words that represent common concepts that occur in natural language.
class PhraseSet_Phrase extends $pb.GeneratedMessage {
  factory PhraseSet_Phrase({
    $core.String? value,
    $core.double? boost,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    if (boost != null) {
      $result.boost = boost;
    }
    return $result;
  }
  PhraseSet_Phrase._() : super();
  factory PhraseSet_Phrase.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PhraseSet_Phrase.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhraseSet.Phrase',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'boost', $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PhraseSet_Phrase clone() => PhraseSet_Phrase()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PhraseSet_Phrase copyWith(void Function(PhraseSet_Phrase) updates) =>
      super.copyWith((message) => updates(message as PhraseSet_Phrase))
          as PhraseSet_Phrase;

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

  /// The phrase itself.
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

  /// Hint Boost. Overrides the boost set at the phrase set level.
  /// Positive value will increase the probability that a specific phrase will
  /// be recognized over other similar sounding phrases. The higher the boost,
  /// the higher the chance of false positive recognition as well. Negative
  /// boost values would correspond to anti-biasing. Anti-biasing is not
  /// enabled, so negative boost values will return an error. Boost values must
  /// be between 0 and 20. Any values outside that range will return an error.
  /// We recommend using a binary search approach to finding the optimal value
  /// for your use case as well as adding phrases both with and without boost
  /// to your requests.
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

/// PhraseSet for biasing in speech recognition. A PhraseSet is used to provide
/// "hints" to the speech recognizer to favor specific words and phrases in the
/// results.
class PhraseSet extends $pb.GeneratedMessage {
  factory PhraseSet({
    $core.String? name,
    $core.String? uid,
    $core.Iterable<PhraseSet_Phrase>? phrases,
    $core.double? boost,
    $core.String? displayName,
    $3.Timestamp? createTime,
    $3.Timestamp? updateTime,
    $3.Timestamp? deleteTime,
    $3.Timestamp? expireTime,
    $core.Map<$core.String, $core.String>? annotations,
    $core.String? etag,
    $core.bool? reconciling,
    $core.String? kmsKeyName,
    $core.String? kmsKeyVersionName,
    PhraseSet_State? state,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (phrases != null) {
      $result.phrases.addAll(phrases);
    }
    if (boost != null) {
      $result.boost = boost;
    }
    if (displayName != null) {
      $result.displayName = displayName;
    }
    if (createTime != null) {
      $result.createTime = createTime;
    }
    if (updateTime != null) {
      $result.updateTime = updateTime;
    }
    if (deleteTime != null) {
      $result.deleteTime = deleteTime;
    }
    if (expireTime != null) {
      $result.expireTime = expireTime;
    }
    if (annotations != null) {
      $result.annotations.addAll(annotations);
    }
    if (etag != null) {
      $result.etag = etag;
    }
    if (reconciling != null) {
      $result.reconciling = reconciling;
    }
    if (kmsKeyName != null) {
      $result.kmsKeyName = kmsKeyName;
    }
    if (kmsKeyVersionName != null) {
      $result.kmsKeyVersionName = kmsKeyVersionName;
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  PhraseSet._() : super();
  factory PhraseSet.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PhraseSet.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhraseSet',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'uid')
    ..pc<PhraseSet_Phrase>(
        3, _omitFieldNames ? '' : 'phrases', $pb.PbFieldType.PM,
        subBuilder: PhraseSet_Phrase.create)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'boost', $pb.PbFieldType.OF)
    ..aOS(5, _omitFieldNames ? '' : 'displayName')
    ..aOM<$3.Timestamp>(6, _omitFieldNames ? '' : 'createTime',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(7, _omitFieldNames ? '' : 'updateTime',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(8, _omitFieldNames ? '' : 'deleteTime',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(9, _omitFieldNames ? '' : 'expireTime',
        subBuilder: $3.Timestamp.create)
    ..m<$core.String, $core.String>(10, _omitFieldNames ? '' : 'annotations',
        entryClassName: 'PhraseSet.AnnotationsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('google.cloud.speech.v2'))
    ..aOS(11, _omitFieldNames ? '' : 'etag')
    ..aOB(12, _omitFieldNames ? '' : 'reconciling')
    ..aOS(13, _omitFieldNames ? '' : 'kmsKeyName')
    ..aOS(14, _omitFieldNames ? '' : 'kmsKeyVersionName')
    ..e<PhraseSet_State>(15, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE,
        defaultOrMaker: PhraseSet_State.STATE_UNSPECIFIED,
        valueOf: PhraseSet_State.valueOf,
        enumValues: PhraseSet_State.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PhraseSet clone() => PhraseSet()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
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

  /// Output only. The resource name of the PhraseSet.
  /// Format: `projects/{project}/locations/{location}/phraseSets/{phrase_set}`.
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

  /// Output only. System-assigned unique identifier for the PhraseSet.
  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  /// A list of word and phrases.
  @$pb.TagNumber(3)
  $core.List<PhraseSet_Phrase> get phrases => $_getList(2);

  /// Hint Boost. Positive value will increase the probability that a specific
  /// phrase will be recognized over other similar sounding phrases. The higher
  /// the boost, the higher the chance of false positive recognition as well.
  /// Valid `boost` values are between 0 (exclusive) and 20. We recommend using a
  /// binary search approach to finding the optimal value for your use case as
  /// well as adding phrases both with and without boost to your requests.
  @$pb.TagNumber(4)
  $core.double get boost => $_getN(3);
  @$pb.TagNumber(4)
  set boost($core.double v) {
    $_setFloat(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBoost() => $_has(3);
  @$pb.TagNumber(4)
  void clearBoost() => clearField(4);

  /// User-settable, human-readable name for the PhraseSet. Must be 63
  /// characters or less.
  @$pb.TagNumber(5)
  $core.String get displayName => $_getSZ(4);
  @$pb.TagNumber(5)
  set displayName($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDisplayName() => $_has(4);
  @$pb.TagNumber(5)
  void clearDisplayName() => clearField(5);

  /// Output only. Creation time.
  @$pb.TagNumber(6)
  $3.Timestamp get createTime => $_getN(5);
  @$pb.TagNumber(6)
  set createTime($3.Timestamp v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCreateTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreateTime() => clearField(6);
  @$pb.TagNumber(6)
  $3.Timestamp ensureCreateTime() => $_ensure(5);

  /// Output only. The most recent time this resource was modified.
  @$pb.TagNumber(7)
  $3.Timestamp get updateTime => $_getN(6);
  @$pb.TagNumber(7)
  set updateTime($3.Timestamp v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasUpdateTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdateTime() => clearField(7);
  @$pb.TagNumber(7)
  $3.Timestamp ensureUpdateTime() => $_ensure(6);

  /// Output only. The time at which this resource was requested for deletion.
  @$pb.TagNumber(8)
  $3.Timestamp get deleteTime => $_getN(7);
  @$pb.TagNumber(8)
  set deleteTime($3.Timestamp v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasDeleteTime() => $_has(7);
  @$pb.TagNumber(8)
  void clearDeleteTime() => clearField(8);
  @$pb.TagNumber(8)
  $3.Timestamp ensureDeleteTime() => $_ensure(7);

  /// Output only. The time at which this resource will be purged.
  @$pb.TagNumber(9)
  $3.Timestamp get expireTime => $_getN(8);
  @$pb.TagNumber(9)
  set expireTime($3.Timestamp v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasExpireTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearExpireTime() => clearField(9);
  @$pb.TagNumber(9)
  $3.Timestamp ensureExpireTime() => $_ensure(8);

  /// Allows users to store small amounts of arbitrary data.
  /// Both the key and the value must be 63 characters or less each.
  /// At most 100 annotations.
  @$pb.TagNumber(10)
  $core.Map<$core.String, $core.String> get annotations => $_getMap(9);

  /// Output only. This checksum is computed by the server based on the value of
  /// other fields. This may be sent on update, undelete, and delete requests to
  /// ensure the client has an up-to-date value before proceeding.
  @$pb.TagNumber(11)
  $core.String get etag => $_getSZ(10);
  @$pb.TagNumber(11)
  set etag($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasEtag() => $_has(10);
  @$pb.TagNumber(11)
  void clearEtag() => clearField(11);

  /// Output only. Whether or not this PhraseSet is in the process of being
  /// updated.
  @$pb.TagNumber(12)
  $core.bool get reconciling => $_getBF(11);
  @$pb.TagNumber(12)
  set reconciling($core.bool v) {
    $_setBool(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasReconciling() => $_has(11);
  @$pb.TagNumber(12)
  void clearReconciling() => clearField(12);

  /// Output only. The [KMS key
  /// name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with which
  /// the PhraseSet is encrypted. The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  @$pb.TagNumber(13)
  $core.String get kmsKeyName => $_getSZ(12);
  @$pb.TagNumber(13)
  set kmsKeyName($core.String v) {
    $_setString(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasKmsKeyName() => $_has(12);
  @$pb.TagNumber(13)
  void clearKmsKeyName() => clearField(13);

  /// Output only. The [KMS key version
  /// name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions)
  /// with which the PhraseSet is encrypted. The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  @$pb.TagNumber(14)
  $core.String get kmsKeyVersionName => $_getSZ(13);
  @$pb.TagNumber(14)
  set kmsKeyVersionName($core.String v) {
    $_setString(13, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasKmsKeyVersionName() => $_has(13);
  @$pb.TagNumber(14)
  void clearKmsKeyVersionName() => clearField(14);

  /// Output only. The PhraseSet lifecycle state.
  @$pb.TagNumber(15)
  PhraseSet_State get state => $_getN(14);
  @$pb.TagNumber(15)
  set state(PhraseSet_State v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasState() => $_has(14);
  @$pb.TagNumber(15)
  void clearState() => clearField(15);
}

/// Request message for the
/// [CreateCustomClass][google.cloud.speech.v2.Speech.CreateCustomClass] method.
class CreateCustomClassRequest extends $pb.GeneratedMessage {
  factory CreateCustomClassRequest({
    CustomClass? customClass,
    $core.bool? validateOnly,
    $core.String? customClassId,
    $core.String? parent,
  }) {
    final $result = create();
    if (customClass != null) {
      $result.customClass = customClass;
    }
    if (validateOnly != null) {
      $result.validateOnly = validateOnly;
    }
    if (customClassId != null) {
      $result.customClassId = customClassId;
    }
    if (parent != null) {
      $result.parent = parent;
    }
    return $result;
  }
  CreateCustomClassRequest._() : super();
  factory CreateCustomClassRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateCustomClassRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateCustomClassRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOM<CustomClass>(1, _omitFieldNames ? '' : 'customClass',
        subBuilder: CustomClass.create)
    ..aOB(2, _omitFieldNames ? '' : 'validateOnly')
    ..aOS(3, _omitFieldNames ? '' : 'customClassId')
    ..aOS(4, _omitFieldNames ? '' : 'parent')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateCustomClassRequest clone() =>
      CreateCustomClassRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateCustomClassRequest copyWith(
          void Function(CreateCustomClassRequest) updates) =>
      super.copyWith((message) => updates(message as CreateCustomClassRequest))
          as CreateCustomClassRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateCustomClassRequest create() => CreateCustomClassRequest._();
  CreateCustomClassRequest createEmptyInstance() => create();
  static $pb.PbList<CreateCustomClassRequest> createRepeated() =>
      $pb.PbList<CreateCustomClassRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateCustomClassRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateCustomClassRequest>(create);
  static CreateCustomClassRequest? _defaultInstance;

  /// Required. The CustomClass to create.
  @$pb.TagNumber(1)
  CustomClass get customClass => $_getN(0);
  @$pb.TagNumber(1)
  set customClass(CustomClass v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCustomClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearCustomClass() => clearField(1);
  @$pb.TagNumber(1)
  CustomClass ensureCustomClass() => $_ensure(0);

  /// If set, validate the request and preview the CustomClass, but do not
  /// actually create it.
  @$pb.TagNumber(2)
  $core.bool get validateOnly => $_getBF(1);
  @$pb.TagNumber(2)
  set validateOnly($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValidateOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidateOnly() => clearField(2);

  ///  The ID to use for the CustomClass, which will become the final component of
  ///  the CustomClass's resource name.
  ///
  ///  This value should be 4-63 characters, and valid characters
  ///  are /[a-z][0-9]-/.
  @$pb.TagNumber(3)
  $core.String get customClassId => $_getSZ(2);
  @$pb.TagNumber(3)
  set customClassId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCustomClassId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCustomClassId() => clearField(3);

  /// Required. The project and location where this CustomClass will be created.
  /// The expected format is `projects/{project}/locations/{location}`.
  @$pb.TagNumber(4)
  $core.String get parent => $_getSZ(3);
  @$pb.TagNumber(4)
  set parent($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasParent() => $_has(3);
  @$pb.TagNumber(4)
  void clearParent() => clearField(4);
}

/// Request message for the
/// [ListCustomClasses][google.cloud.speech.v2.Speech.ListCustomClasses] method.
class ListCustomClassesRequest extends $pb.GeneratedMessage {
  factory ListCustomClassesRequest({
    $core.String? parent,
    $core.int? pageSize,
    $core.String? pageToken,
    $core.bool? showDeleted,
  }) {
    final $result = create();
    if (parent != null) {
      $result.parent = parent;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    if (showDeleted != null) {
      $result.showDeleted = showDeleted;
    }
    return $result;
  }
  ListCustomClassesRequest._() : super();
  factory ListCustomClassesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListCustomClassesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListCustomClassesRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'parent')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'pageToken')
    ..aOB(4, _omitFieldNames ? '' : 'showDeleted')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListCustomClassesRequest clone() =>
      ListCustomClassesRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListCustomClassesRequest copyWith(
          void Function(ListCustomClassesRequest) updates) =>
      super.copyWith((message) => updates(message as ListCustomClassesRequest))
          as ListCustomClassesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCustomClassesRequest create() => ListCustomClassesRequest._();
  ListCustomClassesRequest createEmptyInstance() => create();
  static $pb.PbList<ListCustomClassesRequest> createRepeated() =>
      $pb.PbList<ListCustomClassesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListCustomClassesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListCustomClassesRequest>(create);
  static ListCustomClassesRequest? _defaultInstance;

  /// Required. The project and location of CustomClass resources to list. The
  /// expected format is `projects/{project}/locations/{location}`.
  @$pb.TagNumber(1)
  $core.String get parent => $_getSZ(0);
  @$pb.TagNumber(1)
  set parent($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);

  /// Number of results per requests. A valid page_size ranges from 0 to 100
  /// inclusive. If the page_size is zero or unspecified, a page size of 5 will
  /// be chosen. If the page size exceeds 100, it will be coerced down to 100.
  /// Note that a call might return fewer results than the requested page size.
  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  ///  A page token, received from a previous
  ///  [ListCustomClasses][google.cloud.speech.v2.Speech.ListCustomClasses] call.
  ///  Provide this to retrieve the subsequent page.
  ///
  ///  When paginating, all other parameters provided to
  ///  [ListCustomClasses][google.cloud.speech.v2.Speech.ListCustomClasses] must
  ///  match the call that provided the page token.
  @$pb.TagNumber(3)
  $core.String get pageToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set pageToken($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPageToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageToken() => clearField(3);

  /// Whether, or not, to show resources that have been deleted.
  @$pb.TagNumber(4)
  $core.bool get showDeleted => $_getBF(3);
  @$pb.TagNumber(4)
  set showDeleted($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasShowDeleted() => $_has(3);
  @$pb.TagNumber(4)
  void clearShowDeleted() => clearField(4);
}

/// Response message for the
/// [ListCustomClasses][google.cloud.speech.v2.Speech.ListCustomClasses] method.
class ListCustomClassesResponse extends $pb.GeneratedMessage {
  factory ListCustomClassesResponse({
    $core.Iterable<CustomClass>? customClasses,
    $core.String? nextPageToken,
  }) {
    final $result = create();
    if (customClasses != null) {
      $result.customClasses.addAll(customClasses);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    return $result;
  }
  ListCustomClassesResponse._() : super();
  factory ListCustomClassesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListCustomClassesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListCustomClassesResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..pc<CustomClass>(
        1, _omitFieldNames ? '' : 'customClasses', $pb.PbFieldType.PM,
        subBuilder: CustomClass.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListCustomClassesResponse clone() =>
      ListCustomClassesResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListCustomClassesResponse copyWith(
          void Function(ListCustomClassesResponse) updates) =>
      super.copyWith((message) => updates(message as ListCustomClassesResponse))
          as ListCustomClassesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCustomClassesResponse create() => ListCustomClassesResponse._();
  ListCustomClassesResponse createEmptyInstance() => create();
  static $pb.PbList<ListCustomClassesResponse> createRepeated() =>
      $pb.PbList<ListCustomClassesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListCustomClassesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListCustomClassesResponse>(create);
  static ListCustomClassesResponse? _defaultInstance;

  /// The list of requested CustomClasses.
  @$pb.TagNumber(1)
  $core.List<CustomClass> get customClasses => $_getList(0);

  /// A token, which can be sent as
  /// [page_token][google.cloud.speech.v2.ListCustomClassesRequest.page_token] to
  /// retrieve the next page. If this field is omitted, there are no subsequent
  /// pages. This token expires after 72 hours.
  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);
}

/// Request message for the
/// [GetCustomClass][google.cloud.speech.v2.Speech.GetCustomClass] method.
class GetCustomClassRequest extends $pb.GeneratedMessage {
  factory GetCustomClassRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetCustomClassRequest._() : super();
  factory GetCustomClassRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetCustomClassRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetCustomClassRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetCustomClassRequest clone() =>
      GetCustomClassRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetCustomClassRequest copyWith(
          void Function(GetCustomClassRequest) updates) =>
      super.copyWith((message) => updates(message as GetCustomClassRequest))
          as GetCustomClassRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCustomClassRequest create() => GetCustomClassRequest._();
  GetCustomClassRequest createEmptyInstance() => create();
  static $pb.PbList<GetCustomClassRequest> createRepeated() =>
      $pb.PbList<GetCustomClassRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCustomClassRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetCustomClassRequest>(create);
  static GetCustomClassRequest? _defaultInstance;

  /// Required. The name of the CustomClass to retrieve. The expected format is
  /// `projects/{project}/locations/{location}/customClasses/{custom_class}`.
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
}

/// Request message for the
/// [UpdateCustomClass][google.cloud.speech.v2.Speech.UpdateCustomClass] method.
class UpdateCustomClassRequest extends $pb.GeneratedMessage {
  factory UpdateCustomClassRequest({
    CustomClass? customClass,
    $4.FieldMask? updateMask,
    $core.bool? validateOnly,
  }) {
    final $result = create();
    if (customClass != null) {
      $result.customClass = customClass;
    }
    if (updateMask != null) {
      $result.updateMask = updateMask;
    }
    if (validateOnly != null) {
      $result.validateOnly = validateOnly;
    }
    return $result;
  }
  UpdateCustomClassRequest._() : super();
  factory UpdateCustomClassRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateCustomClassRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateCustomClassRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOM<CustomClass>(1, _omitFieldNames ? '' : 'customClass',
        subBuilder: CustomClass.create)
    ..aOM<$4.FieldMask>(2, _omitFieldNames ? '' : 'updateMask',
        subBuilder: $4.FieldMask.create)
    ..aOB(4, _omitFieldNames ? '' : 'validateOnly')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateCustomClassRequest clone() =>
      UpdateCustomClassRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateCustomClassRequest copyWith(
          void Function(UpdateCustomClassRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateCustomClassRequest))
          as UpdateCustomClassRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateCustomClassRequest create() => UpdateCustomClassRequest._();
  UpdateCustomClassRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateCustomClassRequest> createRepeated() =>
      $pb.PbList<UpdateCustomClassRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateCustomClassRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateCustomClassRequest>(create);
  static UpdateCustomClassRequest? _defaultInstance;

  ///  Required. The CustomClass to update.
  ///
  ///  The CustomClass's `name` field is used to identify the CustomClass to
  ///  update. Format:
  ///  `projects/{project}/locations/{location}/customClasses/{custom_class}`.
  @$pb.TagNumber(1)
  CustomClass get customClass => $_getN(0);
  @$pb.TagNumber(1)
  set customClass(CustomClass v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCustomClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearCustomClass() => clearField(1);
  @$pb.TagNumber(1)
  CustomClass ensureCustomClass() => $_ensure(0);

  /// The list of fields to be updated. If empty, all fields are considered for
  /// update.
  @$pb.TagNumber(2)
  $4.FieldMask get updateMask => $_getN(1);
  @$pb.TagNumber(2)
  set updateMask($4.FieldMask v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdateMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateMask() => clearField(2);
  @$pb.TagNumber(2)
  $4.FieldMask ensureUpdateMask() => $_ensure(1);

  /// If set, validate the request and preview the updated CustomClass, but do
  /// not actually update it.
  @$pb.TagNumber(4)
  $core.bool get validateOnly => $_getBF(2);
  @$pb.TagNumber(4)
  set validateOnly($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasValidateOnly() => $_has(2);
  @$pb.TagNumber(4)
  void clearValidateOnly() => clearField(4);
}

/// Request message for the
/// [DeleteCustomClass][google.cloud.speech.v2.Speech.DeleteCustomClass] method.
class DeleteCustomClassRequest extends $pb.GeneratedMessage {
  factory DeleteCustomClassRequest({
    $core.String? name,
    $core.bool? validateOnly,
    $core.String? etag,
    $core.bool? allowMissing,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (validateOnly != null) {
      $result.validateOnly = validateOnly;
    }
    if (etag != null) {
      $result.etag = etag;
    }
    if (allowMissing != null) {
      $result.allowMissing = allowMissing;
    }
    return $result;
  }
  DeleteCustomClassRequest._() : super();
  factory DeleteCustomClassRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteCustomClassRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteCustomClassRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'validateOnly')
    ..aOS(3, _omitFieldNames ? '' : 'etag')
    ..aOB(4, _omitFieldNames ? '' : 'allowMissing')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteCustomClassRequest clone() =>
      DeleteCustomClassRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteCustomClassRequest copyWith(
          void Function(DeleteCustomClassRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteCustomClassRequest))
          as DeleteCustomClassRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteCustomClassRequest create() => DeleteCustomClassRequest._();
  DeleteCustomClassRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteCustomClassRequest> createRepeated() =>
      $pb.PbList<DeleteCustomClassRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteCustomClassRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteCustomClassRequest>(create);
  static DeleteCustomClassRequest? _defaultInstance;

  /// Required. The name of the CustomClass to delete.
  /// Format:
  /// `projects/{project}/locations/{location}/customClasses/{custom_class}`
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

  /// If set, validate the request and preview the deleted CustomClass, but do
  /// not actually delete it.
  @$pb.TagNumber(2)
  $core.bool get validateOnly => $_getBF(1);
  @$pb.TagNumber(2)
  set validateOnly($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValidateOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidateOnly() => clearField(2);

  /// This checksum is computed by the server based on the value of other
  /// fields. This may be sent on update, undelete, and delete requests to ensure
  /// the client has an up-to-date value before proceeding.
  @$pb.TagNumber(3)
  $core.String get etag => $_getSZ(2);
  @$pb.TagNumber(3)
  set etag($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEtag() => $_has(2);
  @$pb.TagNumber(3)
  void clearEtag() => clearField(3);

  /// If set to true, and the CustomClass is not found, the request will succeed
  /// and  be a no-op (no Operation is recorded in this case).
  @$pb.TagNumber(4)
  $core.bool get allowMissing => $_getBF(3);
  @$pb.TagNumber(4)
  set allowMissing($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAllowMissing() => $_has(3);
  @$pb.TagNumber(4)
  void clearAllowMissing() => clearField(4);
}

/// Request message for the
/// [UndeleteCustomClass][google.cloud.speech.v2.Speech.UndeleteCustomClass]
/// method.
class UndeleteCustomClassRequest extends $pb.GeneratedMessage {
  factory UndeleteCustomClassRequest({
    $core.String? name,
    $core.bool? validateOnly,
    $core.String? etag,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (validateOnly != null) {
      $result.validateOnly = validateOnly;
    }
    if (etag != null) {
      $result.etag = etag;
    }
    return $result;
  }
  UndeleteCustomClassRequest._() : super();
  factory UndeleteCustomClassRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UndeleteCustomClassRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UndeleteCustomClassRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'validateOnly')
    ..aOS(4, _omitFieldNames ? '' : 'etag')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UndeleteCustomClassRequest clone() =>
      UndeleteCustomClassRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UndeleteCustomClassRequest copyWith(
          void Function(UndeleteCustomClassRequest) updates) =>
      super.copyWith(
              (message) => updates(message as UndeleteCustomClassRequest))
          as UndeleteCustomClassRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UndeleteCustomClassRequest create() => UndeleteCustomClassRequest._();
  UndeleteCustomClassRequest createEmptyInstance() => create();
  static $pb.PbList<UndeleteCustomClassRequest> createRepeated() =>
      $pb.PbList<UndeleteCustomClassRequest>();
  @$core.pragma('dart2js:noInline')
  static UndeleteCustomClassRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UndeleteCustomClassRequest>(create);
  static UndeleteCustomClassRequest? _defaultInstance;

  /// Required. The name of the CustomClass to undelete.
  /// Format:
  /// `projects/{project}/locations/{location}/customClasses/{custom_class}`
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

  /// If set, validate the request and preview the undeleted CustomClass, but do
  /// not actually undelete it.
  @$pb.TagNumber(3)
  $core.bool get validateOnly => $_getBF(1);
  @$pb.TagNumber(3)
  set validateOnly($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasValidateOnly() => $_has(1);
  @$pb.TagNumber(3)
  void clearValidateOnly() => clearField(3);

  /// This checksum is computed by the server based on the value of other
  /// fields. This may be sent on update, undelete, and delete requests to ensure
  /// the client has an up-to-date value before proceeding.
  @$pb.TagNumber(4)
  $core.String get etag => $_getSZ(2);
  @$pb.TagNumber(4)
  set etag($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasEtag() => $_has(2);
  @$pb.TagNumber(4)
  void clearEtag() => clearField(4);
}

/// Request message for the
/// [CreatePhraseSet][google.cloud.speech.v2.Speech.CreatePhraseSet] method.
class CreatePhraseSetRequest extends $pb.GeneratedMessage {
  factory CreatePhraseSetRequest({
    PhraseSet? phraseSet,
    $core.bool? validateOnly,
    $core.String? phraseSetId,
    $core.String? parent,
  }) {
    final $result = create();
    if (phraseSet != null) {
      $result.phraseSet = phraseSet;
    }
    if (validateOnly != null) {
      $result.validateOnly = validateOnly;
    }
    if (phraseSetId != null) {
      $result.phraseSetId = phraseSetId;
    }
    if (parent != null) {
      $result.parent = parent;
    }
    return $result;
  }
  CreatePhraseSetRequest._() : super();
  factory CreatePhraseSetRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreatePhraseSetRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreatePhraseSetRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOM<PhraseSet>(1, _omitFieldNames ? '' : 'phraseSet',
        subBuilder: PhraseSet.create)
    ..aOB(2, _omitFieldNames ? '' : 'validateOnly')
    ..aOS(3, _omitFieldNames ? '' : 'phraseSetId')
    ..aOS(4, _omitFieldNames ? '' : 'parent')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreatePhraseSetRequest clone() =>
      CreatePhraseSetRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreatePhraseSetRequest copyWith(
          void Function(CreatePhraseSetRequest) updates) =>
      super.copyWith((message) => updates(message as CreatePhraseSetRequest))
          as CreatePhraseSetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePhraseSetRequest create() => CreatePhraseSetRequest._();
  CreatePhraseSetRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePhraseSetRequest> createRepeated() =>
      $pb.PbList<CreatePhraseSetRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePhraseSetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreatePhraseSetRequest>(create);
  static CreatePhraseSetRequest? _defaultInstance;

  /// Required. The PhraseSet to create.
  @$pb.TagNumber(1)
  PhraseSet get phraseSet => $_getN(0);
  @$pb.TagNumber(1)
  set phraseSet(PhraseSet v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPhraseSet() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhraseSet() => clearField(1);
  @$pb.TagNumber(1)
  PhraseSet ensurePhraseSet() => $_ensure(0);

  /// If set, validate the request and preview the PhraseSet, but do not
  /// actually create it.
  @$pb.TagNumber(2)
  $core.bool get validateOnly => $_getBF(1);
  @$pb.TagNumber(2)
  set validateOnly($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValidateOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidateOnly() => clearField(2);

  ///  The ID to use for the PhraseSet, which will become the final component of
  ///  the PhraseSet's resource name.
  ///
  ///  This value should be 4-63 characters, and valid characters
  ///  are /[a-z][0-9]-/.
  @$pb.TagNumber(3)
  $core.String get phraseSetId => $_getSZ(2);
  @$pb.TagNumber(3)
  set phraseSetId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPhraseSetId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhraseSetId() => clearField(3);

  /// Required. The project and location where this PhraseSet will be created.
  /// The expected format is `projects/{project}/locations/{location}`.
  @$pb.TagNumber(4)
  $core.String get parent => $_getSZ(3);
  @$pb.TagNumber(4)
  set parent($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasParent() => $_has(3);
  @$pb.TagNumber(4)
  void clearParent() => clearField(4);
}

/// Request message for the
/// [ListPhraseSets][google.cloud.speech.v2.Speech.ListPhraseSets] method.
class ListPhraseSetsRequest extends $pb.GeneratedMessage {
  factory ListPhraseSetsRequest({
    $core.String? parent,
    $core.int? pageSize,
    $core.String? pageToken,
    $core.bool? showDeleted,
  }) {
    final $result = create();
    if (parent != null) {
      $result.parent = parent;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    if (showDeleted != null) {
      $result.showDeleted = showDeleted;
    }
    return $result;
  }
  ListPhraseSetsRequest._() : super();
  factory ListPhraseSetsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPhraseSetsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListPhraseSetsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'parent')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'pageToken')
    ..aOB(4, _omitFieldNames ? '' : 'showDeleted')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListPhraseSetsRequest clone() =>
      ListPhraseSetsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListPhraseSetsRequest copyWith(
          void Function(ListPhraseSetsRequest) updates) =>
      super.copyWith((message) => updates(message as ListPhraseSetsRequest))
          as ListPhraseSetsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPhraseSetsRequest create() => ListPhraseSetsRequest._();
  ListPhraseSetsRequest createEmptyInstance() => create();
  static $pb.PbList<ListPhraseSetsRequest> createRepeated() =>
      $pb.PbList<ListPhraseSetsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPhraseSetsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPhraseSetsRequest>(create);
  static ListPhraseSetsRequest? _defaultInstance;

  /// Required. The project and location of PhraseSet resources to list. The
  /// expected format is `projects/{project}/locations/{location}`.
  @$pb.TagNumber(1)
  $core.String get parent => $_getSZ(0);
  @$pb.TagNumber(1)
  set parent($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);

  /// The maximum number of PhraseSets to return. The service may return fewer
  /// than this value. If unspecified, at most 5 PhraseSets will be returned.
  /// The maximum value is 100; values above 100 will be coerced to 100.
  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  ///  A page token, received from a previous
  ///  [ListPhraseSets][google.cloud.speech.v2.Speech.ListPhraseSets] call.
  ///  Provide this to retrieve the subsequent page.
  ///
  ///  When paginating, all other parameters provided to
  ///  [ListPhraseSets][google.cloud.speech.v2.Speech.ListPhraseSets] must match
  ///  the call that provided the page token.
  @$pb.TagNumber(3)
  $core.String get pageToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set pageToken($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPageToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageToken() => clearField(3);

  /// Whether, or not, to show resources that have been deleted.
  @$pb.TagNumber(4)
  $core.bool get showDeleted => $_getBF(3);
  @$pb.TagNumber(4)
  set showDeleted($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasShowDeleted() => $_has(3);
  @$pb.TagNumber(4)
  void clearShowDeleted() => clearField(4);
}

/// Response message for the
/// [ListPhraseSets][google.cloud.speech.v2.Speech.ListPhraseSets] method.
class ListPhraseSetsResponse extends $pb.GeneratedMessage {
  factory ListPhraseSetsResponse({
    $core.Iterable<PhraseSet>? phraseSets,
    $core.String? nextPageToken,
  }) {
    final $result = create();
    if (phraseSets != null) {
      $result.phraseSets.addAll(phraseSets);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    return $result;
  }
  ListPhraseSetsResponse._() : super();
  factory ListPhraseSetsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPhraseSetsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListPhraseSetsResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..pc<PhraseSet>(1, _omitFieldNames ? '' : 'phraseSets', $pb.PbFieldType.PM,
        subBuilder: PhraseSet.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListPhraseSetsResponse clone() =>
      ListPhraseSetsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListPhraseSetsResponse copyWith(
          void Function(ListPhraseSetsResponse) updates) =>
      super.copyWith((message) => updates(message as ListPhraseSetsResponse))
          as ListPhraseSetsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPhraseSetsResponse create() => ListPhraseSetsResponse._();
  ListPhraseSetsResponse createEmptyInstance() => create();
  static $pb.PbList<ListPhraseSetsResponse> createRepeated() =>
      $pb.PbList<ListPhraseSetsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPhraseSetsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPhraseSetsResponse>(create);
  static ListPhraseSetsResponse? _defaultInstance;

  /// The list of requested PhraseSets.
  @$pb.TagNumber(1)
  $core.List<PhraseSet> get phraseSets => $_getList(0);

  /// A token, which can be sent as
  /// [page_token][google.cloud.speech.v2.ListPhraseSetsRequest.page_token] to
  /// retrieve the next page. If this field is omitted, there are no subsequent
  /// pages. This token expires after 72 hours.
  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);
}

/// Request message for the
/// [GetPhraseSet][google.cloud.speech.v2.Speech.GetPhraseSet] method.
class GetPhraseSetRequest extends $pb.GeneratedMessage {
  factory GetPhraseSetRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetPhraseSetRequest._() : super();
  factory GetPhraseSetRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetPhraseSetRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetPhraseSetRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetPhraseSetRequest clone() => GetPhraseSetRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetPhraseSetRequest copyWith(void Function(GetPhraseSetRequest) updates) =>
      super.copyWith((message) => updates(message as GetPhraseSetRequest))
          as GetPhraseSetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPhraseSetRequest create() => GetPhraseSetRequest._();
  GetPhraseSetRequest createEmptyInstance() => create();
  static $pb.PbList<GetPhraseSetRequest> createRepeated() =>
      $pb.PbList<GetPhraseSetRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPhraseSetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPhraseSetRequest>(create);
  static GetPhraseSetRequest? _defaultInstance;

  /// Required. The name of the PhraseSet to retrieve. The expected format is
  /// `projects/{project}/locations/{location}/phraseSets/{phrase_set}`.
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
}

/// Request message for the
/// [UpdatePhraseSet][google.cloud.speech.v2.Speech.UpdatePhraseSet] method.
class UpdatePhraseSetRequest extends $pb.GeneratedMessage {
  factory UpdatePhraseSetRequest({
    PhraseSet? phraseSet,
    $4.FieldMask? updateMask,
    $core.bool? validateOnly,
  }) {
    final $result = create();
    if (phraseSet != null) {
      $result.phraseSet = phraseSet;
    }
    if (updateMask != null) {
      $result.updateMask = updateMask;
    }
    if (validateOnly != null) {
      $result.validateOnly = validateOnly;
    }
    return $result;
  }
  UpdatePhraseSetRequest._() : super();
  factory UpdatePhraseSetRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdatePhraseSetRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdatePhraseSetRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOM<PhraseSet>(1, _omitFieldNames ? '' : 'phraseSet',
        subBuilder: PhraseSet.create)
    ..aOM<$4.FieldMask>(2, _omitFieldNames ? '' : 'updateMask',
        subBuilder: $4.FieldMask.create)
    ..aOB(4, _omitFieldNames ? '' : 'validateOnly')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdatePhraseSetRequest clone() =>
      UpdatePhraseSetRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdatePhraseSetRequest copyWith(
          void Function(UpdatePhraseSetRequest) updates) =>
      super.copyWith((message) => updates(message as UpdatePhraseSetRequest))
          as UpdatePhraseSetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePhraseSetRequest create() => UpdatePhraseSetRequest._();
  UpdatePhraseSetRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePhraseSetRequest> createRepeated() =>
      $pb.PbList<UpdatePhraseSetRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePhraseSetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdatePhraseSetRequest>(create);
  static UpdatePhraseSetRequest? _defaultInstance;

  ///  Required. The PhraseSet to update.
  ///
  ///  The PhraseSet's `name` field is used to identify the PhraseSet to update.
  ///  Format: `projects/{project}/locations/{location}/phraseSets/{phrase_set}`.
  @$pb.TagNumber(1)
  PhraseSet get phraseSet => $_getN(0);
  @$pb.TagNumber(1)
  set phraseSet(PhraseSet v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPhraseSet() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhraseSet() => clearField(1);
  @$pb.TagNumber(1)
  PhraseSet ensurePhraseSet() => $_ensure(0);

  /// The list of fields to update. If empty, all non-default valued fields are
  /// considered for update. Use `*` to update the entire PhraseSet resource.
  @$pb.TagNumber(2)
  $4.FieldMask get updateMask => $_getN(1);
  @$pb.TagNumber(2)
  set updateMask($4.FieldMask v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdateMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateMask() => clearField(2);
  @$pb.TagNumber(2)
  $4.FieldMask ensureUpdateMask() => $_ensure(1);

  /// If set, validate the request and preview the updated PhraseSet, but do not
  /// actually update it.
  @$pb.TagNumber(4)
  $core.bool get validateOnly => $_getBF(2);
  @$pb.TagNumber(4)
  set validateOnly($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasValidateOnly() => $_has(2);
  @$pb.TagNumber(4)
  void clearValidateOnly() => clearField(4);
}

/// Request message for the
/// [DeletePhraseSet][google.cloud.speech.v2.Speech.DeletePhraseSet] method.
class DeletePhraseSetRequest extends $pb.GeneratedMessage {
  factory DeletePhraseSetRequest({
    $core.String? name,
    $core.bool? validateOnly,
    $core.String? etag,
    $core.bool? allowMissing,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (validateOnly != null) {
      $result.validateOnly = validateOnly;
    }
    if (etag != null) {
      $result.etag = etag;
    }
    if (allowMissing != null) {
      $result.allowMissing = allowMissing;
    }
    return $result;
  }
  DeletePhraseSetRequest._() : super();
  factory DeletePhraseSetRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeletePhraseSetRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeletePhraseSetRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'validateOnly')
    ..aOS(3, _omitFieldNames ? '' : 'etag')
    ..aOB(4, _omitFieldNames ? '' : 'allowMissing')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeletePhraseSetRequest clone() =>
      DeletePhraseSetRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeletePhraseSetRequest copyWith(
          void Function(DeletePhraseSetRequest) updates) =>
      super.copyWith((message) => updates(message as DeletePhraseSetRequest))
          as DeletePhraseSetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePhraseSetRequest create() => DeletePhraseSetRequest._();
  DeletePhraseSetRequest createEmptyInstance() => create();
  static $pb.PbList<DeletePhraseSetRequest> createRepeated() =>
      $pb.PbList<DeletePhraseSetRequest>();
  @$core.pragma('dart2js:noInline')
  static DeletePhraseSetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeletePhraseSetRequest>(create);
  static DeletePhraseSetRequest? _defaultInstance;

  /// Required. The name of the PhraseSet to delete.
  /// Format: `projects/{project}/locations/{location}/phraseSets/{phrase_set}`
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

  /// If set, validate the request and preview the deleted PhraseSet, but do not
  /// actually delete it.
  @$pb.TagNumber(2)
  $core.bool get validateOnly => $_getBF(1);
  @$pb.TagNumber(2)
  set validateOnly($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValidateOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidateOnly() => clearField(2);

  /// This checksum is computed by the server based on the value of other
  /// fields. This may be sent on update, undelete, and delete requests to ensure
  /// the client has an up-to-date value before proceeding.
  @$pb.TagNumber(3)
  $core.String get etag => $_getSZ(2);
  @$pb.TagNumber(3)
  set etag($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEtag() => $_has(2);
  @$pb.TagNumber(3)
  void clearEtag() => clearField(3);

  /// If set to true, and the PhraseSet is not found, the request will succeed
  /// and  be a no-op (no Operation is recorded in this case).
  @$pb.TagNumber(4)
  $core.bool get allowMissing => $_getBF(3);
  @$pb.TagNumber(4)
  set allowMissing($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAllowMissing() => $_has(3);
  @$pb.TagNumber(4)
  void clearAllowMissing() => clearField(4);
}

/// Request message for the
/// [UndeletePhraseSet][google.cloud.speech.v2.Speech.UndeletePhraseSet]
/// method.
class UndeletePhraseSetRequest extends $pb.GeneratedMessage {
  factory UndeletePhraseSetRequest({
    $core.String? name,
    $core.bool? validateOnly,
    $core.String? etag,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (validateOnly != null) {
      $result.validateOnly = validateOnly;
    }
    if (etag != null) {
      $result.etag = etag;
    }
    return $result;
  }
  UndeletePhraseSetRequest._() : super();
  factory UndeletePhraseSetRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UndeletePhraseSetRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UndeletePhraseSetRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v2'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'validateOnly')
    ..aOS(4, _omitFieldNames ? '' : 'etag')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UndeletePhraseSetRequest clone() =>
      UndeletePhraseSetRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UndeletePhraseSetRequest copyWith(
          void Function(UndeletePhraseSetRequest) updates) =>
      super.copyWith((message) => updates(message as UndeletePhraseSetRequest))
          as UndeletePhraseSetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UndeletePhraseSetRequest create() => UndeletePhraseSetRequest._();
  UndeletePhraseSetRequest createEmptyInstance() => create();
  static $pb.PbList<UndeletePhraseSetRequest> createRepeated() =>
      $pb.PbList<UndeletePhraseSetRequest>();
  @$core.pragma('dart2js:noInline')
  static UndeletePhraseSetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UndeletePhraseSetRequest>(create);
  static UndeletePhraseSetRequest? _defaultInstance;

  /// Required. The name of the PhraseSet to undelete.
  /// Format: `projects/{project}/locations/{location}/phraseSets/{phrase_set}`
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

  /// If set, validate the request and preview the undeleted PhraseSet, but do
  /// not actually undelete it.
  @$pb.TagNumber(3)
  $core.bool get validateOnly => $_getBF(1);
  @$pb.TagNumber(3)
  set validateOnly($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasValidateOnly() => $_has(1);
  @$pb.TagNumber(3)
  void clearValidateOnly() => clearField(3);

  /// This checksum is computed by the server based on the value of other
  /// fields. This may be sent on update, undelete, and delete requests to ensure
  /// the client has an up-to-date value before proceeding.
  @$pb.TagNumber(4)
  $core.String get etag => $_getSZ(2);
  @$pb.TagNumber(4)
  set etag($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasEtag() => $_has(2);
  @$pb.TagNumber(4)
  void clearEtag() => clearField(4);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
