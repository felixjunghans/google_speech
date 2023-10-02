//
//  Generated code. Do not modify.
//  source: google/cloud/speech/v1/cloud_speech.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../protobuf/duration.pb.dart' as $3;
import '../../../protobuf/timestamp.pb.dart' as $7;
import '../../../protobuf/wrappers.pb.dart' as $5;
import '../../../rpc/status.pb.dart' as $6;
import 'cloud_speech.pbenum.dart';
import 'resource.pb.dart' as $4;

export 'cloud_speech.pbenum.dart';

/// The top-level message sent by the client for the `Recognize` method.
class RecognizeRequest extends $pb.GeneratedMessage {
  factory RecognizeRequest({
    RecognitionConfig? config,
    RecognitionAudio? audio,
  }) {
    final $result = create();
    if (config != null) {
      $result.config = config;
    }
    if (audio != null) {
      $result.audio = audio;
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecognizeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..aOM<RecognitionConfig>(1, _omitFieldNames ? '' : 'config',
        subBuilder: RecognitionConfig.create)
    ..aOM<RecognitionAudio>(2, _omitFieldNames ? '' : 'audio',
        subBuilder: RecognitionAudio.create)
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

  /// Required. Provides information to the recognizer that specifies how to
  /// process the request.
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

  /// Required. The audio data to be recognized.
  @$pb.TagNumber(2)
  RecognitionAudio get audio => $_getN(1);
  @$pb.TagNumber(2)
  set audio(RecognitionAudio v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAudio() => $_has(1);
  @$pb.TagNumber(2)
  void clearAudio() => clearField(2);
  @$pb.TagNumber(2)
  RecognitionAudio ensureAudio() => $_ensure(1);
}

/// The top-level message sent by the client for the `LongRunningRecognize`
/// method.
class LongRunningRecognizeRequest extends $pb.GeneratedMessage {
  factory LongRunningRecognizeRequest({
    RecognitionConfig? config,
    RecognitionAudio? audio,
    TranscriptOutputConfig? outputConfig,
  }) {
    final $result = create();
    if (config != null) {
      $result.config = config;
    }
    if (audio != null) {
      $result.audio = audio;
    }
    if (outputConfig != null) {
      $result.outputConfig = outputConfig;
    }
    return $result;
  }
  LongRunningRecognizeRequest._() : super();
  factory LongRunningRecognizeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LongRunningRecognizeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LongRunningRecognizeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..aOM<RecognitionConfig>(1, _omitFieldNames ? '' : 'config',
        subBuilder: RecognitionConfig.create)
    ..aOM<RecognitionAudio>(2, _omitFieldNames ? '' : 'audio',
        subBuilder: RecognitionAudio.create)
    ..aOM<TranscriptOutputConfig>(4, _omitFieldNames ? '' : 'outputConfig',
        subBuilder: TranscriptOutputConfig.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LongRunningRecognizeRequest clone() =>
      LongRunningRecognizeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LongRunningRecognizeRequest copyWith(
          void Function(LongRunningRecognizeRequest) updates) =>
      super.copyWith(
              (message) => updates(message as LongRunningRecognizeRequest))
          as LongRunningRecognizeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LongRunningRecognizeRequest create() =>
      LongRunningRecognizeRequest._();
  LongRunningRecognizeRequest createEmptyInstance() => create();
  static $pb.PbList<LongRunningRecognizeRequest> createRepeated() =>
      $pb.PbList<LongRunningRecognizeRequest>();
  @$core.pragma('dart2js:noInline')
  static LongRunningRecognizeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LongRunningRecognizeRequest>(create);
  static LongRunningRecognizeRequest? _defaultInstance;

  /// Required. Provides information to the recognizer that specifies how to
  /// process the request.
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

  /// Required. The audio data to be recognized.
  @$pb.TagNumber(2)
  RecognitionAudio get audio => $_getN(1);
  @$pb.TagNumber(2)
  set audio(RecognitionAudio v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAudio() => $_has(1);
  @$pb.TagNumber(2)
  void clearAudio() => clearField(2);
  @$pb.TagNumber(2)
  RecognitionAudio ensureAudio() => $_ensure(1);

  /// Optional. Specifies an optional destination for the recognition results.
  @$pb.TagNumber(4)
  TranscriptOutputConfig get outputConfig => $_getN(2);
  @$pb.TagNumber(4)
  set outputConfig(TranscriptOutputConfig v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOutputConfig() => $_has(2);
  @$pb.TagNumber(4)
  void clearOutputConfig() => clearField(4);
  @$pb.TagNumber(4)
  TranscriptOutputConfig ensureOutputConfig() => $_ensure(2);
}

enum TranscriptOutputConfig_OutputType { gcsUri, notSet }

/// Specifies an optional destination for the recognition results.
class TranscriptOutputConfig extends $pb.GeneratedMessage {
  factory TranscriptOutputConfig({
    $core.String? gcsUri,
  }) {
    final $result = create();
    if (gcsUri != null) {
      $result.gcsUri = gcsUri;
    }
    return $result;
  }
  TranscriptOutputConfig._() : super();
  factory TranscriptOutputConfig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TranscriptOutputConfig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TranscriptOutputConfig_OutputType>
      _TranscriptOutputConfig_OutputTypeByTag = {
    1: TranscriptOutputConfig_OutputType.gcsUri,
    0: TranscriptOutputConfig_OutputType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TranscriptOutputConfig',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'gcsUri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TranscriptOutputConfig clone() =>
      TranscriptOutputConfig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TranscriptOutputConfig copyWith(
          void Function(TranscriptOutputConfig) updates) =>
      super.copyWith((message) => updates(message as TranscriptOutputConfig))
          as TranscriptOutputConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TranscriptOutputConfig create() => TranscriptOutputConfig._();
  TranscriptOutputConfig createEmptyInstance() => create();
  static $pb.PbList<TranscriptOutputConfig> createRepeated() =>
      $pb.PbList<TranscriptOutputConfig>();
  @$core.pragma('dart2js:noInline')
  static TranscriptOutputConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TranscriptOutputConfig>(create);
  static TranscriptOutputConfig? _defaultInstance;

  TranscriptOutputConfig_OutputType whichOutputType() =>
      _TranscriptOutputConfig_OutputTypeByTag[$_whichOneof(0)]!;
  void clearOutputType() => clearField($_whichOneof(0));

  /// Specifies a Cloud Storage URI for the recognition results. Must be
  /// specified in the format: `gs://bucket_name/object_name`, and the bucket
  /// must already exist.
  @$pb.TagNumber(1)
  $core.String get gcsUri => $_getSZ(0);
  @$pb.TagNumber(1)
  set gcsUri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGcsUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearGcsUri() => clearField(1);
}

enum StreamingRecognizeRequest_StreamingRequest {
  streamingConfig,
  audioContent,
  notSet
}

/// The top-level message sent by the client for the `StreamingRecognize` method.
/// Multiple `StreamingRecognizeRequest` messages are sent. The first message
/// must contain a `streaming_config` message and must not contain
/// `audio_content`. All subsequent messages must contain `audio_content` and
/// must not contain a `streaming_config` message.
class StreamingRecognizeRequest extends $pb.GeneratedMessage {
  factory StreamingRecognizeRequest({
    StreamingRecognitionConfig? streamingConfig,
    $core.List<$core.int>? audioContent,
  }) {
    final $result = create();
    if (streamingConfig != null) {
      $result.streamingConfig = streamingConfig;
    }
    if (audioContent != null) {
      $result.audioContent = audioContent;
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
    1: StreamingRecognizeRequest_StreamingRequest.streamingConfig,
    2: StreamingRecognizeRequest_StreamingRequest.audioContent,
    0: StreamingRecognizeRequest_StreamingRequest.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamingRecognizeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<StreamingRecognitionConfig>(
        1, _omitFieldNames ? '' : 'streamingConfig',
        subBuilder: StreamingRecognitionConfig.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'audioContent', $pb.PbFieldType.OY)
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

  /// Provides information to the recognizer that specifies how to process the
  /// request. The first `StreamingRecognizeRequest` message must contain a
  /// `streaming_config`  message.
  @$pb.TagNumber(1)
  StreamingRecognitionConfig get streamingConfig => $_getN(0);
  @$pb.TagNumber(1)
  set streamingConfig(StreamingRecognitionConfig v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStreamingConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamingConfig() => clearField(1);
  @$pb.TagNumber(1)
  StreamingRecognitionConfig ensureStreamingConfig() => $_ensure(0);

  /// The audio data to be recognized. Sequential chunks of audio data are sent
  /// in sequential `StreamingRecognizeRequest` messages. The first
  /// `StreamingRecognizeRequest` message must not contain `audio_content` data
  /// and all subsequent `StreamingRecognizeRequest` messages must contain
  /// `audio_content` data. The audio bytes must be encoded as specified in
  /// `RecognitionConfig`. Note: as with all bytes fields, proto buffers use a
  /// pure binary representation (not base64). See
  /// [content limits](https://cloud.google.com/speech-to-text/quotas#content).
  @$pb.TagNumber(2)
  $core.List<$core.int> get audioContent => $_getN(1);
  @$pb.TagNumber(2)
  set audioContent($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAudioContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearAudioContent() => clearField(2);
}

/// Events that a timeout can be set on for voice activity.
class StreamingRecognitionConfig_VoiceActivityTimeout
    extends $pb.GeneratedMessage {
  factory StreamingRecognitionConfig_VoiceActivityTimeout({
    $3.Duration? speechStartTimeout,
    $3.Duration? speechEndTimeout,
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
  StreamingRecognitionConfig_VoiceActivityTimeout._() : super();
  factory StreamingRecognitionConfig_VoiceActivityTimeout.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StreamingRecognitionConfig_VoiceActivityTimeout.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'StreamingRecognitionConfig.VoiceActivityTimeout',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..aOM<$3.Duration>(1, _omitFieldNames ? '' : 'speechStartTimeout',
        subBuilder: $3.Duration.create)
    ..aOM<$3.Duration>(2, _omitFieldNames ? '' : 'speechEndTimeout',
        subBuilder: $3.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StreamingRecognitionConfig_VoiceActivityTimeout clone() =>
      StreamingRecognitionConfig_VoiceActivityTimeout()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StreamingRecognitionConfig_VoiceActivityTimeout copyWith(
          void Function(StreamingRecognitionConfig_VoiceActivityTimeout)
              updates) =>
      super.copyWith((message) => updates(
              message as StreamingRecognitionConfig_VoiceActivityTimeout))
          as StreamingRecognitionConfig_VoiceActivityTimeout;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionConfig_VoiceActivityTimeout create() =>
      StreamingRecognitionConfig_VoiceActivityTimeout._();
  StreamingRecognitionConfig_VoiceActivityTimeout createEmptyInstance() =>
      create();
  static $pb.PbList<StreamingRecognitionConfig_VoiceActivityTimeout>
      createRepeated() =>
          $pb.PbList<StreamingRecognitionConfig_VoiceActivityTimeout>();
  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionConfig_VoiceActivityTimeout getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StreamingRecognitionConfig_VoiceActivityTimeout>(create);
  static StreamingRecognitionConfig_VoiceActivityTimeout? _defaultInstance;

  /// Duration to timeout the stream if no speech begins.
  @$pb.TagNumber(1)
  $3.Duration get speechStartTimeout => $_getN(0);
  @$pb.TagNumber(1)
  set speechStartTimeout($3.Duration v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSpeechStartTimeout() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpeechStartTimeout() => clearField(1);
  @$pb.TagNumber(1)
  $3.Duration ensureSpeechStartTimeout() => $_ensure(0);

  /// Duration to timeout the stream after speech ends.
  @$pb.TagNumber(2)
  $3.Duration get speechEndTimeout => $_getN(1);
  @$pb.TagNumber(2)
  set speechEndTimeout($3.Duration v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSpeechEndTimeout() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpeechEndTimeout() => clearField(2);
  @$pb.TagNumber(2)
  $3.Duration ensureSpeechEndTimeout() => $_ensure(1);
}

/// Provides information to the recognizer that specifies how to process the
/// request.
class StreamingRecognitionConfig extends $pb.GeneratedMessage {
  factory StreamingRecognitionConfig({
    RecognitionConfig? config,
    $core.bool? singleUtterance,
    $core.bool? interimResults,
    $core.bool? enableVoiceActivityEvents,
    StreamingRecognitionConfig_VoiceActivityTimeout? voiceActivityTimeout,
  }) {
    final $result = create();
    if (config != null) {
      $result.config = config;
    }
    if (singleUtterance != null) {
      $result.singleUtterance = singleUtterance;
    }
    if (interimResults != null) {
      $result.interimResults = interimResults;
    }
    if (enableVoiceActivityEvents != null) {
      $result.enableVoiceActivityEvents = enableVoiceActivityEvents;
    }
    if (voiceActivityTimeout != null) {
      $result.voiceActivityTimeout = voiceActivityTimeout;
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
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..aOM<RecognitionConfig>(1, _omitFieldNames ? '' : 'config',
        subBuilder: RecognitionConfig.create)
    ..aOB(2, _omitFieldNames ? '' : 'singleUtterance')
    ..aOB(3, _omitFieldNames ? '' : 'interimResults')
    ..aOB(5, _omitFieldNames ? '' : 'enableVoiceActivityEvents')
    ..aOM<StreamingRecognitionConfig_VoiceActivityTimeout>(
        6, _omitFieldNames ? '' : 'voiceActivityTimeout',
        subBuilder: StreamingRecognitionConfig_VoiceActivityTimeout.create)
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

  /// Required. Provides information to the recognizer that specifies how to
  /// process the request.
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

  ///  If `false` or omitted, the recognizer will perform continuous
  ///  recognition (continuing to wait for and process audio even if the user
  ///  pauses speaking) until the client closes the input stream (gRPC API) or
  ///  until the maximum time limit has been reached. May return multiple
  ///  `StreamingRecognitionResult`s with the `is_final` flag set to `true`.
  ///
  ///  If `true`, the recognizer will detect a single spoken utterance. When it
  ///  detects that the user has paused or stopped speaking, it will return an
  ///  `END_OF_SINGLE_UTTERANCE` event and cease recognition. It will return no
  ///  more than one `StreamingRecognitionResult` with the `is_final` flag set to
  ///  `true`.
  ///
  ///  The `single_utterance` field can only be used with specified models,
  ///  otherwise an error is thrown. The `model` field in [`RecognitionConfig`][]
  ///  must be set to:
  ///
  ///  * `command_and_search`
  ///  * `phone_call` AND additional field `useEnhanced`=`true`
  ///  * The `model` field is left undefined. In this case the API auto-selects
  ///    a model based on any other parameters that you set in
  ///    `RecognitionConfig`.
  @$pb.TagNumber(2)
  $core.bool get singleUtterance => $_getBF(1);
  @$pb.TagNumber(2)
  set singleUtterance($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSingleUtterance() => $_has(1);
  @$pb.TagNumber(2)
  void clearSingleUtterance() => clearField(2);

  /// If `true`, interim results (tentative hypotheses) may be
  /// returned as they become available (these interim results are indicated with
  /// the `is_final=false` flag).
  /// If `false` or omitted, only `is_final=true` result(s) are returned.
  @$pb.TagNumber(3)
  $core.bool get interimResults => $_getBF(2);
  @$pb.TagNumber(3)
  set interimResults($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasInterimResults() => $_has(2);
  @$pb.TagNumber(3)
  void clearInterimResults() => clearField(3);

  /// If `true`, responses with voice activity speech events will be returned as
  /// they are detected.
  @$pb.TagNumber(5)
  $core.bool get enableVoiceActivityEvents => $_getBF(3);
  @$pb.TagNumber(5)
  set enableVoiceActivityEvents($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasEnableVoiceActivityEvents() => $_has(3);
  @$pb.TagNumber(5)
  void clearEnableVoiceActivityEvents() => clearField(5);

  /// If set, the server will automatically close the stream after the specified
  /// duration has elapsed after the last VOICE_ACTIVITY speech event has been
  /// sent. The field `voice_activity_events` must also be set to true.
  @$pb.TagNumber(6)
  StreamingRecognitionConfig_VoiceActivityTimeout get voiceActivityTimeout =>
      $_getN(4);
  @$pb.TagNumber(6)
  set voiceActivityTimeout(StreamingRecognitionConfig_VoiceActivityTimeout v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasVoiceActivityTimeout() => $_has(4);
  @$pb.TagNumber(6)
  void clearVoiceActivityTimeout() => clearField(6);
  @$pb.TagNumber(6)
  StreamingRecognitionConfig_VoiceActivityTimeout
      ensureVoiceActivityTimeout() => $_ensure(4);
}

/// Provides information to the recognizer that specifies how to process the
/// request.
class RecognitionConfig extends $pb.GeneratedMessage {
  factory RecognitionConfig({
    RecognitionConfig_AudioEncoding? encoding,
    $core.int? sampleRateHertz,
    $core.String? languageCode,
    $core.int? maxAlternatives,
    $core.bool? profanityFilter,
    $core.Iterable<SpeechContext>? speechContexts,
    $core.int? audioChannelCount,
    $core.bool? enableWordTimeOffsets,
    RecognitionMetadata? metadata,
    $core.bool? enableAutomaticPunctuation,
    $core.bool? enableSeparateRecognitionPerChannel,
    $core.String? model,
    $core.bool? useEnhanced,
    $core.bool? enableWordConfidence,
    $core.Iterable<$core.String>? alternativeLanguageCodes,
    SpeakerDiarizationConfig? diarizationConfig,
    $4.SpeechAdaptation? adaptation,
    $5.BoolValue? enableSpokenPunctuation,
    $5.BoolValue? enableSpokenEmojis,
  }) {
    final $result = create();
    if (encoding != null) {
      $result.encoding = encoding;
    }
    if (sampleRateHertz != null) {
      $result.sampleRateHertz = sampleRateHertz;
    }
    if (languageCode != null) {
      $result.languageCode = languageCode;
    }
    if (maxAlternatives != null) {
      $result.maxAlternatives = maxAlternatives;
    }
    if (profanityFilter != null) {
      $result.profanityFilter = profanityFilter;
    }
    if (speechContexts != null) {
      $result.speechContexts.addAll(speechContexts);
    }
    if (audioChannelCount != null) {
      $result.audioChannelCount = audioChannelCount;
    }
    if (enableWordTimeOffsets != null) {
      $result.enableWordTimeOffsets = enableWordTimeOffsets;
    }
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (enableAutomaticPunctuation != null) {
      $result.enableAutomaticPunctuation = enableAutomaticPunctuation;
    }
    if (enableSeparateRecognitionPerChannel != null) {
      $result.enableSeparateRecognitionPerChannel =
          enableSeparateRecognitionPerChannel;
    }
    if (model != null) {
      $result.model = model;
    }
    if (useEnhanced != null) {
      $result.useEnhanced = useEnhanced;
    }
    if (enableWordConfidence != null) {
      $result.enableWordConfidence = enableWordConfidence;
    }
    if (alternativeLanguageCodes != null) {
      $result.alternativeLanguageCodes.addAll(alternativeLanguageCodes);
    }
    if (diarizationConfig != null) {
      $result.diarizationConfig = diarizationConfig;
    }
    if (adaptation != null) {
      $result.adaptation = adaptation;
    }
    if (enableSpokenPunctuation != null) {
      $result.enableSpokenPunctuation = enableSpokenPunctuation;
    }
    if (enableSpokenEmojis != null) {
      $result.enableSpokenEmojis = enableSpokenEmojis;
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecognitionConfig',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..e<RecognitionConfig_AudioEncoding>(
        1, _omitFieldNames ? '' : 'encoding', $pb.PbFieldType.OE,
        defaultOrMaker: RecognitionConfig_AudioEncoding.ENCODING_UNSPECIFIED,
        valueOf: RecognitionConfig_AudioEncoding.valueOf,
        enumValues: RecognitionConfig_AudioEncoding.values)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'sampleRateHertz', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'languageCode')
    ..a<$core.int>(
        4, _omitFieldNames ? '' : 'maxAlternatives', $pb.PbFieldType.O3)
    ..aOB(5, _omitFieldNames ? '' : 'profanityFilter')
    ..pc<SpeechContext>(
        6, _omitFieldNames ? '' : 'speechContexts', $pb.PbFieldType.PM,
        subBuilder: SpeechContext.create)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'audioChannelCount', $pb.PbFieldType.O3)
    ..aOB(8, _omitFieldNames ? '' : 'enableWordTimeOffsets')
    ..aOM<RecognitionMetadata>(9, _omitFieldNames ? '' : 'metadata',
        subBuilder: RecognitionMetadata.create)
    ..aOB(11, _omitFieldNames ? '' : 'enableAutomaticPunctuation')
    ..aOB(12, _omitFieldNames ? '' : 'enableSeparateRecognitionPerChannel')
    ..aOS(13, _omitFieldNames ? '' : 'model')
    ..aOB(14, _omitFieldNames ? '' : 'useEnhanced')
    ..aOB(15, _omitFieldNames ? '' : 'enableWordConfidence')
    ..pPS(18, _omitFieldNames ? '' : 'alternativeLanguageCodes')
    ..aOM<SpeakerDiarizationConfig>(
        19, _omitFieldNames ? '' : 'diarizationConfig',
        subBuilder: SpeakerDiarizationConfig.create)
    ..aOM<$4.SpeechAdaptation>(20, _omitFieldNames ? '' : 'adaptation',
        subBuilder: $4.SpeechAdaptation.create)
    ..aOM<$5.BoolValue>(22, _omitFieldNames ? '' : 'enableSpokenPunctuation',
        subBuilder: $5.BoolValue.create)
    ..aOM<$5.BoolValue>(23, _omitFieldNames ? '' : 'enableSpokenEmojis',
        subBuilder: $5.BoolValue.create)
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

  /// Encoding of audio data sent in all `RecognitionAudio` messages.
  /// This field is optional for `FLAC` and `WAV` audio files and required
  /// for all other audio formats. For details, see
  /// [AudioEncoding][google.cloud.speech.v1.RecognitionConfig.AudioEncoding].
  @$pb.TagNumber(1)
  RecognitionConfig_AudioEncoding get encoding => $_getN(0);
  @$pb.TagNumber(1)
  set encoding(RecognitionConfig_AudioEncoding v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEncoding() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncoding() => clearField(1);

  /// Sample rate in Hertz of the audio data sent in all
  /// `RecognitionAudio` messages. Valid values are: 8000-48000.
  /// 16000 is optimal. For best results, set the sampling rate of the audio
  /// source to 16000 Hz. If that's not possible, use the native sample rate of
  /// the audio source (instead of re-sampling).
  /// This field is optional for FLAC and WAV audio files, but is
  /// required for all other audio formats. For details, see
  /// [AudioEncoding][google.cloud.speech.v1.RecognitionConfig.AudioEncoding].
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

  /// Required. The language of the supplied audio as a
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag.
  /// Example: "en-US".
  /// See [Language
  /// Support](https://cloud.google.com/speech-to-text/docs/languages) for a list
  /// of the currently supported language codes.
  @$pb.TagNumber(3)
  $core.String get languageCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set languageCode($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLanguageCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearLanguageCode() => clearField(3);

  /// Maximum number of recognition hypotheses to be returned.
  /// Specifically, the maximum number of `SpeechRecognitionAlternative` messages
  /// within each `SpeechRecognitionResult`.
  /// The server may return fewer than `max_alternatives`.
  /// Valid values are `0`-`30`. A value of `0` or `1` will return a maximum of
  /// one. If omitted, will return a maximum of one.
  @$pb.TagNumber(4)
  $core.int get maxAlternatives => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxAlternatives($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMaxAlternatives() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxAlternatives() => clearField(4);

  /// If set to `true`, the server will attempt to filter out
  /// profanities, replacing all but the initial character in each filtered word
  /// with asterisks, e.g. "f***". If set to `false` or omitted, profanities
  /// won't be filtered out.
  @$pb.TagNumber(5)
  $core.bool get profanityFilter => $_getBF(4);
  @$pb.TagNumber(5)
  set profanityFilter($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasProfanityFilter() => $_has(4);
  @$pb.TagNumber(5)
  void clearProfanityFilter() => clearField(5);

  /// Array of [SpeechContext][google.cloud.speech.v1.SpeechContext].
  /// A means to provide context to assist the speech recognition. For more
  /// information, see
  /// [speech
  /// adaptation](https://cloud.google.com/speech-to-text/docs/adaptation).
  @$pb.TagNumber(6)
  $core.List<SpeechContext> get speechContexts => $_getList(5);

  /// The number of channels in the input audio data.
  /// ONLY set this for MULTI-CHANNEL recognition.
  /// Valid values for LINEAR16, OGG_OPUS and FLAC are `1`-`8`.
  /// Valid value for MULAW, AMR, AMR_WB and SPEEX_WITH_HEADER_BYTE is only `1`.
  /// If `0` or omitted, defaults to one channel (mono).
  /// Note: We only recognize the first channel by default.
  /// To perform independent recognition on each channel set
  /// `enable_separate_recognition_per_channel` to 'true'.
  @$pb.TagNumber(7)
  $core.int get audioChannelCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set audioChannelCount($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasAudioChannelCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearAudioChannelCount() => clearField(7);

  /// If `true`, the top result includes a list of words and
  /// the start and end time offsets (timestamps) for those words. If
  /// `false`, no word-level time offset information is returned. The default is
  /// `false`.
  @$pb.TagNumber(8)
  $core.bool get enableWordTimeOffsets => $_getBF(7);
  @$pb.TagNumber(8)
  set enableWordTimeOffsets($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasEnableWordTimeOffsets() => $_has(7);
  @$pb.TagNumber(8)
  void clearEnableWordTimeOffsets() => clearField(8);

  /// Metadata regarding this request.
  @$pb.TagNumber(9)
  RecognitionMetadata get metadata => $_getN(8);
  @$pb.TagNumber(9)
  set metadata(RecognitionMetadata v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasMetadata() => $_has(8);
  @$pb.TagNumber(9)
  void clearMetadata() => clearField(9);
  @$pb.TagNumber(9)
  RecognitionMetadata ensureMetadata() => $_ensure(8);

  /// If 'true', adds punctuation to recognition result hypotheses.
  /// This feature is only available in select languages. Setting this for
  /// requests in other languages has no effect at all.
  /// The default 'false' value does not add punctuation to result hypotheses.
  @$pb.TagNumber(11)
  $core.bool get enableAutomaticPunctuation => $_getBF(9);
  @$pb.TagNumber(11)
  set enableAutomaticPunctuation($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasEnableAutomaticPunctuation() => $_has(9);
  @$pb.TagNumber(11)
  void clearEnableAutomaticPunctuation() => clearField(11);

  /// This needs to be set to `true` explicitly and `audio_channel_count` > 1
  /// to get each channel recognized separately. The recognition result will
  /// contain a `channel_tag` field to state which channel that result belongs
  /// to. If this is not true, we will only recognize the first channel. The
  /// request is billed cumulatively for all channels recognized:
  /// `audio_channel_count` multiplied by the length of the audio.
  @$pb.TagNumber(12)
  $core.bool get enableSeparateRecognitionPerChannel => $_getBF(10);
  @$pb.TagNumber(12)
  set enableSeparateRecognitionPerChannel($core.bool v) {
    $_setBool(10, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasEnableSeparateRecognitionPerChannel() => $_has(10);
  @$pb.TagNumber(12)
  void clearEnableSeparateRecognitionPerChannel() => clearField(12);

  /// Which model to select for the given request. Select the model
  /// best suited to your domain to get best results. If a model is not
  /// explicitly specified, then we auto-select a model based on the parameters
  /// in the RecognitionConfig.
  /// <table>
  ///   <tr>
  ///     <td><b>Model</b></td>
  ///     <td><b>Description</b></td>
  ///   </tr>
  ///   <tr>
  ///     <td><code>latest_long</code></td>
  ///     <td>Best for long form content like media or conversation.</td>
  ///   </tr>
  ///   <tr>
  ///     <td><code>latest_short</code></td>
  ///     <td>Best for short form content like commands or single shot directed
  ///     speech.</td>
  ///   </tr>
  ///   <tr>
  ///     <td><code>command_and_search</code></td>
  ///     <td>Best for short queries such as voice commands or voice search.</td>
  ///   </tr>
  ///   <tr>
  ///     <td><code>phone_call</code></td>
  ///     <td>Best for audio that originated from a phone call (typically
  ///     recorded at an 8khz sampling rate).</td>
  ///   </tr>
  ///   <tr>
  ///     <td><code>video</code></td>
  ///     <td>Best for audio that originated from video or includes multiple
  ///         speakers. Ideally the audio is recorded at a 16khz or greater
  ///         sampling rate. This is a premium model that costs more than the
  ///         standard rate.</td>
  ///   </tr>
  ///   <tr>
  ///     <td><code>default</code></td>
  ///     <td>Best for audio that is not one of the specific audio models.
  ///         For example, long-form audio. Ideally the audio is high-fidelity,
  ///         recorded at a 16khz or greater sampling rate.</td>
  ///   </tr>
  ///   <tr>
  ///     <td><code>medical_conversation</code></td>
  ///     <td>Best for audio that originated from a conversation between a
  ///         medical provider and patient.</td>
  ///   </tr>
  ///   <tr>
  ///     <td><code>medical_dictation</code></td>
  ///     <td>Best for audio that originated from dictation notes by a medical
  ///         provider.</td>
  ///   </tr>
  /// </table>
  @$pb.TagNumber(13)
  $core.String get model => $_getSZ(11);
  @$pb.TagNumber(13)
  set model($core.String v) {
    $_setString(11, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasModel() => $_has(11);
  @$pb.TagNumber(13)
  void clearModel() => clearField(13);

  ///  Set to true to use an enhanced model for speech recognition.
  ///  If `use_enhanced` is set to true and the `model` field is not set, then
  ///  an appropriate enhanced model is chosen if an enhanced model exists for
  ///  the audio.
  ///
  ///  If `use_enhanced` is true and an enhanced version of the specified model
  ///  does not exist, then the speech is recognized using the standard version
  ///  of the specified model.
  @$pb.TagNumber(14)
  $core.bool get useEnhanced => $_getBF(12);
  @$pb.TagNumber(14)
  set useEnhanced($core.bool v) {
    $_setBool(12, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasUseEnhanced() => $_has(12);
  @$pb.TagNumber(14)
  void clearUseEnhanced() => clearField(14);

  /// If `true`, the top result includes a list of words and the
  /// confidence for those words. If `false`, no word-level confidence
  /// information is returned. The default is `false`.
  @$pb.TagNumber(15)
  $core.bool get enableWordConfidence => $_getBF(13);
  @$pb.TagNumber(15)
  set enableWordConfidence($core.bool v) {
    $_setBool(13, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasEnableWordConfidence() => $_has(13);
  @$pb.TagNumber(15)
  void clearEnableWordConfidence() => clearField(15);

  /// A list of up to 3 additional
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tags,
  /// listing possible alternative languages of the supplied audio.
  /// See [Language
  /// Support](https://cloud.google.com/speech-to-text/docs/languages) for a list
  /// of the currently supported language codes. If alternative languages are
  /// listed, recognition result will contain recognition in the most likely
  /// language detected including the main language_code. The recognition result
  /// will include the language tag of the language detected in the audio. Note:
  /// This feature is only supported for Voice Command and Voice Search use cases
  /// and performance may vary for other use cases (e.g., phone call
  /// transcription).
  @$pb.TagNumber(18)
  $core.List<$core.String> get alternativeLanguageCodes => $_getList(14);

  /// Config to enable speaker diarization and set additional
  /// parameters to make diarization better suited for your application.
  /// Note: When this is enabled, we send all the words from the beginning of the
  /// audio for the top alternative in every consecutive STREAMING responses.
  /// This is done in order to improve our speaker tags as our models learn to
  /// identify the speakers in the conversation over time.
  /// For non-streaming requests, the diarization results will be provided only
  /// in the top alternative of the FINAL SpeechRecognitionResult.
  @$pb.TagNumber(19)
  SpeakerDiarizationConfig get diarizationConfig => $_getN(15);
  @$pb.TagNumber(19)
  set diarizationConfig(SpeakerDiarizationConfig v) {
    setField(19, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasDiarizationConfig() => $_has(15);
  @$pb.TagNumber(19)
  void clearDiarizationConfig() => clearField(19);
  @$pb.TagNumber(19)
  SpeakerDiarizationConfig ensureDiarizationConfig() => $_ensure(15);

  /// Speech adaptation configuration improves the accuracy of speech
  /// recognition. For more information, see the [speech
  /// adaptation](https://cloud.google.com/speech-to-text/docs/adaptation)
  /// documentation.
  /// When speech adaptation is set it supersedes the `speech_contexts` field.
  @$pb.TagNumber(20)
  $4.SpeechAdaptation get adaptation => $_getN(16);
  @$pb.TagNumber(20)
  set adaptation($4.SpeechAdaptation v) {
    setField(20, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasAdaptation() => $_has(16);
  @$pb.TagNumber(20)
  void clearAdaptation() => clearField(20);
  @$pb.TagNumber(20)
  $4.SpeechAdaptation ensureAdaptation() => $_ensure(16);

  /// The spoken punctuation behavior for the call
  /// If not set, uses default behavior based on model of choice
  /// e.g. command_and_search will enable spoken punctuation by default
  /// If 'true', replaces spoken punctuation with the corresponding symbols in
  /// the request. For example, "how are you question mark" becomes "how are
  /// you?". See https://cloud.google.com/speech-to-text/docs/spoken-punctuation
  /// for support. If 'false', spoken punctuation is not replaced.
  @$pb.TagNumber(22)
  $5.BoolValue get enableSpokenPunctuation => $_getN(17);
  @$pb.TagNumber(22)
  set enableSpokenPunctuation($5.BoolValue v) {
    setField(22, v);
  }

  @$pb.TagNumber(22)
  $core.bool hasEnableSpokenPunctuation() => $_has(17);
  @$pb.TagNumber(22)
  void clearEnableSpokenPunctuation() => clearField(22);
  @$pb.TagNumber(22)
  $5.BoolValue ensureEnableSpokenPunctuation() => $_ensure(17);

  /// The spoken emoji behavior for the call
  /// If not set, uses default behavior based on model of choice
  /// If 'true', adds spoken emoji formatting for the request. This will replace
  /// spoken emojis with the corresponding Unicode symbols in the final
  /// transcript. If 'false', spoken emojis are not replaced.
  @$pb.TagNumber(23)
  $5.BoolValue get enableSpokenEmojis => $_getN(18);
  @$pb.TagNumber(23)
  set enableSpokenEmojis($5.BoolValue v) {
    setField(23, v);
  }

  @$pb.TagNumber(23)
  $core.bool hasEnableSpokenEmojis() => $_has(18);
  @$pb.TagNumber(23)
  void clearEnableSpokenEmojis() => clearField(23);
  @$pb.TagNumber(23)
  $5.BoolValue ensureEnableSpokenEmojis() => $_ensure(18);
}

/// Config to enable speaker diarization.
class SpeakerDiarizationConfig extends $pb.GeneratedMessage {
  factory SpeakerDiarizationConfig({
    $core.bool? enableSpeakerDiarization,
    $core.int? minSpeakerCount,
    $core.int? maxSpeakerCount,
    @$core.Deprecated('This field is deprecated.') $core.int? speakerTag,
  }) {
    final $result = create();
    if (enableSpeakerDiarization != null) {
      $result.enableSpeakerDiarization = enableSpeakerDiarization;
    }
    if (minSpeakerCount != null) {
      $result.minSpeakerCount = minSpeakerCount;
    }
    if (maxSpeakerCount != null) {
      $result.maxSpeakerCount = maxSpeakerCount;
    }
    if (speakerTag != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.speakerTag = speakerTag;
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
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enableSpeakerDiarization')
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'minSpeakerCount', $pb.PbFieldType.O3)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'maxSpeakerCount', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'speakerTag', $pb.PbFieldType.O3)
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

  /// If 'true', enables speaker detection for each recognized word in
  /// the top alternative of the recognition result using a speaker_tag provided
  /// in the WordInfo.
  @$pb.TagNumber(1)
  $core.bool get enableSpeakerDiarization => $_getBF(0);
  @$pb.TagNumber(1)
  set enableSpeakerDiarization($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEnableSpeakerDiarization() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnableSpeakerDiarization() => clearField(1);

  /// Minimum number of speakers in the conversation. This range gives you more
  /// flexibility by allowing the system to automatically determine the correct
  /// number of speakers. If not set, the default value is 2.
  @$pb.TagNumber(2)
  $core.int get minSpeakerCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set minSpeakerCount($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMinSpeakerCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinSpeakerCount() => clearField(2);

  /// Maximum number of speakers in the conversation. This range gives you more
  /// flexibility by allowing the system to automatically determine the correct
  /// number of speakers. If not set, the default value is 6.
  @$pb.TagNumber(3)
  $core.int get maxSpeakerCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxSpeakerCount($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMaxSpeakerCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxSpeakerCount() => clearField(3);

  /// Output only. Unused.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.int get speakerTag => $_getIZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set speakerTag($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasSpeakerTag() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearSpeakerTag() => clearField(5);
}

/// Description of audio data to be recognized.
class RecognitionMetadata extends $pb.GeneratedMessage {
  factory RecognitionMetadata({
    RecognitionMetadata_InteractionType? interactionType,
    $core.int? industryNaicsCodeOfAudio,
    RecognitionMetadata_MicrophoneDistance? microphoneDistance,
    RecognitionMetadata_OriginalMediaType? originalMediaType,
    RecognitionMetadata_RecordingDeviceType? recordingDeviceType,
    $core.String? recordingDeviceName,
    $core.String? originalMimeType,
    $core.String? audioTopic,
  }) {
    final $result = create();
    if (interactionType != null) {
      $result.interactionType = interactionType;
    }
    if (industryNaicsCodeOfAudio != null) {
      $result.industryNaicsCodeOfAudio = industryNaicsCodeOfAudio;
    }
    if (microphoneDistance != null) {
      $result.microphoneDistance = microphoneDistance;
    }
    if (originalMediaType != null) {
      $result.originalMediaType = originalMediaType;
    }
    if (recordingDeviceType != null) {
      $result.recordingDeviceType = recordingDeviceType;
    }
    if (recordingDeviceName != null) {
      $result.recordingDeviceName = recordingDeviceName;
    }
    if (originalMimeType != null) {
      $result.originalMimeType = originalMimeType;
    }
    if (audioTopic != null) {
      $result.audioTopic = audioTopic;
    }
    return $result;
  }
  RecognitionMetadata._() : super();
  factory RecognitionMetadata.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RecognitionMetadata.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecognitionMetadata',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..e<RecognitionMetadata_InteractionType>(
        1, _omitFieldNames ? '' : 'interactionType', $pb.PbFieldType.OE,
        defaultOrMaker:
            RecognitionMetadata_InteractionType.INTERACTION_TYPE_UNSPECIFIED,
        valueOf: RecognitionMetadata_InteractionType.valueOf,
        enumValues: RecognitionMetadata_InteractionType.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'industryNaicsCodeOfAudio',
        $pb.PbFieldType.OU3)
    ..e<RecognitionMetadata_MicrophoneDistance>(
        4, _omitFieldNames ? '' : 'microphoneDistance', $pb.PbFieldType.OE,
        defaultOrMaker: RecognitionMetadata_MicrophoneDistance
            .MICROPHONE_DISTANCE_UNSPECIFIED,
        valueOf: RecognitionMetadata_MicrophoneDistance.valueOf,
        enumValues: RecognitionMetadata_MicrophoneDistance.values)
    ..e<RecognitionMetadata_OriginalMediaType>(
        5, _omitFieldNames ? '' : 'originalMediaType', $pb.PbFieldType.OE,
        defaultOrMaker: RecognitionMetadata_OriginalMediaType
            .ORIGINAL_MEDIA_TYPE_UNSPECIFIED,
        valueOf: RecognitionMetadata_OriginalMediaType.valueOf,
        enumValues: RecognitionMetadata_OriginalMediaType.values)
    ..e<RecognitionMetadata_RecordingDeviceType>(
        6, _omitFieldNames ? '' : 'recordingDeviceType', $pb.PbFieldType.OE,
        defaultOrMaker: RecognitionMetadata_RecordingDeviceType
            .RECORDING_DEVICE_TYPE_UNSPECIFIED,
        valueOf: RecognitionMetadata_RecordingDeviceType.valueOf,
        enumValues: RecognitionMetadata_RecordingDeviceType.values)
    ..aOS(7, _omitFieldNames ? '' : 'recordingDeviceName')
    ..aOS(8, _omitFieldNames ? '' : 'originalMimeType')
    ..aOS(10, _omitFieldNames ? '' : 'audioTopic')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RecognitionMetadata clone() => RecognitionMetadata()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RecognitionMetadata copyWith(void Function(RecognitionMetadata) updates) =>
      super.copyWith((message) => updates(message as RecognitionMetadata))
          as RecognitionMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecognitionMetadata create() => RecognitionMetadata._();
  RecognitionMetadata createEmptyInstance() => create();
  static $pb.PbList<RecognitionMetadata> createRepeated() =>
      $pb.PbList<RecognitionMetadata>();
  @$core.pragma('dart2js:noInline')
  static RecognitionMetadata getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecognitionMetadata>(create);
  static RecognitionMetadata? _defaultInstance;

  /// The use case most closely describing the audio content to be recognized.
  @$pb.TagNumber(1)
  RecognitionMetadata_InteractionType get interactionType => $_getN(0);
  @$pb.TagNumber(1)
  set interactionType(RecognitionMetadata_InteractionType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInteractionType() => $_has(0);
  @$pb.TagNumber(1)
  void clearInteractionType() => clearField(1);

  /// The industry vertical to which this speech recognition request most
  /// closely applies. This is most indicative of the topics contained
  /// in the audio.  Use the 6-digit NAICS code to identify the industry
  /// vertical - see https://www.naics.com/search/.
  @$pb.TagNumber(3)
  $core.int get industryNaicsCodeOfAudio => $_getIZ(1);
  @$pb.TagNumber(3)
  set industryNaicsCodeOfAudio($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIndustryNaicsCodeOfAudio() => $_has(1);
  @$pb.TagNumber(3)
  void clearIndustryNaicsCodeOfAudio() => clearField(3);

  /// The audio type that most closely describes the audio being recognized.
  @$pb.TagNumber(4)
  RecognitionMetadata_MicrophoneDistance get microphoneDistance => $_getN(2);
  @$pb.TagNumber(4)
  set microphoneDistance(RecognitionMetadata_MicrophoneDistance v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMicrophoneDistance() => $_has(2);
  @$pb.TagNumber(4)
  void clearMicrophoneDistance() => clearField(4);

  /// The original media the speech was recorded on.
  @$pb.TagNumber(5)
  RecognitionMetadata_OriginalMediaType get originalMediaType => $_getN(3);
  @$pb.TagNumber(5)
  set originalMediaType(RecognitionMetadata_OriginalMediaType v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOriginalMediaType() => $_has(3);
  @$pb.TagNumber(5)
  void clearOriginalMediaType() => clearField(5);

  /// The type of device the speech was recorded with.
  @$pb.TagNumber(6)
  RecognitionMetadata_RecordingDeviceType get recordingDeviceType => $_getN(4);
  @$pb.TagNumber(6)
  set recordingDeviceType(RecognitionMetadata_RecordingDeviceType v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasRecordingDeviceType() => $_has(4);
  @$pb.TagNumber(6)
  void clearRecordingDeviceType() => clearField(6);

  /// The device used to make the recording.  Examples 'Nexus 5X' or
  /// 'Polycom SoundStation IP 6000' or 'POTS' or 'VoIP' or
  /// 'Cardioid Microphone'.
  @$pb.TagNumber(7)
  $core.String get recordingDeviceName => $_getSZ(5);
  @$pb.TagNumber(7)
  set recordingDeviceName($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasRecordingDeviceName() => $_has(5);
  @$pb.TagNumber(7)
  void clearRecordingDeviceName() => clearField(7);

  /// Mime type of the original audio file.  For example `audio/m4a`,
  /// `audio/x-alaw-basic`, `audio/mp3`, `audio/3gpp`.
  /// A list of possible audio mime types is maintained at
  /// http://www.iana.org/assignments/media-types/media-types.xhtml#audio
  @$pb.TagNumber(8)
  $core.String get originalMimeType => $_getSZ(6);
  @$pb.TagNumber(8)
  set originalMimeType($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasOriginalMimeType() => $_has(6);
  @$pb.TagNumber(8)
  void clearOriginalMimeType() => clearField(8);

  /// Description of the content. Eg. "Recordings of federal supreme court
  /// hearings from 2012".
  @$pb.TagNumber(10)
  $core.String get audioTopic => $_getSZ(7);
  @$pb.TagNumber(10)
  set audioTopic($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasAudioTopic() => $_has(7);
  @$pb.TagNumber(10)
  void clearAudioTopic() => clearField(10);
}

/// Provides "hints" to the speech recognizer to favor specific words and phrases
/// in the results.
class SpeechContext extends $pb.GeneratedMessage {
  factory SpeechContext({
    $core.Iterable<$core.String>? phrases,
    $core.double? boost,
  }) {
    final $result = create();
    if (phrases != null) {
      $result.phrases.addAll(phrases);
    }
    if (boost != null) {
      $result.boost = boost;
    }
    return $result;
  }
  SpeechContext._() : super();
  factory SpeechContext.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpeechContext.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpeechContext',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'phrases')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'boost', $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpeechContext clone() => SpeechContext()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpeechContext copyWith(void Function(SpeechContext) updates) =>
      super.copyWith((message) => updates(message as SpeechContext))
          as SpeechContext;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeechContext create() => SpeechContext._();
  SpeechContext createEmptyInstance() => create();
  static $pb.PbList<SpeechContext> createRepeated() =>
      $pb.PbList<SpeechContext>();
  @$core.pragma('dart2js:noInline')
  static SpeechContext getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpeechContext>(create);
  static SpeechContext? _defaultInstance;

  ///  A list of strings containing words and phrases "hints" so that
  ///  the speech recognition is more likely to recognize them. This can be used
  ///  to improve the accuracy for specific words and phrases, for example, if
  ///  specific commands are typically spoken by the user. This can also be used
  ///  to add additional words to the vocabulary of the recognizer. See
  ///  [usage limits](https://cloud.google.com/speech-to-text/quotas#content).
  ///
  ///  List items can also be set to classes for groups of words that represent
  ///  common concepts that occur in natural language. For example, rather than
  ///  providing phrase hints for every month of the year, using the $MONTH class
  ///  improves the likelihood of correctly transcribing audio that includes
  ///  months.
  @$pb.TagNumber(1)
  $core.List<$core.String> get phrases => $_getList(0);

  /// Hint Boost. Positive value will increase the probability that a specific
  /// phrase will be recognized over other similar sounding phrases. The higher
  /// the boost, the higher the chance of false positive recognition as well.
  /// Negative boost values would correspond to anti-biasing. Anti-biasing is not
  /// enabled, so negative boost will simply be ignored. Though `boost` can
  /// accept a wide range of positive values, most use cases are best served with
  /// values between 0 and 20. We recommend using a binary search approach to
  /// finding the optimal value for your use case.
  @$pb.TagNumber(4)
  $core.double get boost => $_getN(1);
  @$pb.TagNumber(4)
  set boost($core.double v) {
    $_setFloat(1, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBoost() => $_has(1);
  @$pb.TagNumber(4)
  void clearBoost() => clearField(4);
}

enum RecognitionAudio_AudioSource { content, uri, notSet }

/// Contains audio data in the encoding specified in the `RecognitionConfig`.
/// Either `content` or `uri` must be supplied. Supplying both or neither
/// returns [google.rpc.Code.INVALID_ARGUMENT][google.rpc.Code.INVALID_ARGUMENT].
/// See [content limits](https://cloud.google.com/speech-to-text/quotas#content).
class RecognitionAudio extends $pb.GeneratedMessage {
  factory RecognitionAudio({
    $core.List<$core.int>? content,
    $core.String? uri,
  }) {
    final $result = create();
    if (content != null) {
      $result.content = content;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  RecognitionAudio._() : super();
  factory RecognitionAudio.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RecognitionAudio.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RecognitionAudio_AudioSource>
      _RecognitionAudio_AudioSourceByTag = {
    1: RecognitionAudio_AudioSource.content,
    2: RecognitionAudio_AudioSource.uri,
    0: RecognitionAudio_AudioSource.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecognitionAudio',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..aOS(2, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RecognitionAudio clone() => RecognitionAudio()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RecognitionAudio copyWith(void Function(RecognitionAudio) updates) =>
      super.copyWith((message) => updates(message as RecognitionAudio))
          as RecognitionAudio;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecognitionAudio create() => RecognitionAudio._();
  RecognitionAudio createEmptyInstance() => create();
  static $pb.PbList<RecognitionAudio> createRepeated() =>
      $pb.PbList<RecognitionAudio>();
  @$core.pragma('dart2js:noInline')
  static RecognitionAudio getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecognitionAudio>(create);
  static RecognitionAudio? _defaultInstance;

  RecognitionAudio_AudioSource whichAudioSource() =>
      _RecognitionAudio_AudioSourceByTag[$_whichOneof(0)]!;
  void clearAudioSource() => clearField($_whichOneof(0));

  /// The audio data bytes encoded as specified in
  /// `RecognitionConfig`. Note: as with all bytes fields, proto buffers use a
  /// pure binary representation, whereas JSON representations use base64.
  @$pb.TagNumber(1)
  $core.List<$core.int> get content => $_getN(0);
  @$pb.TagNumber(1)
  set content($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => clearField(1);

  /// URI that points to a file that contains audio data bytes as specified in
  /// `RecognitionConfig`. The file must not be compressed (for example, gzip).
  /// Currently, only Google Cloud Storage URIs are
  /// supported, which must be specified in the following format:
  /// `gs://bucket_name/object_name` (other URI formats return
  /// [google.rpc.Code.INVALID_ARGUMENT][google.rpc.Code.INVALID_ARGUMENT]).
  /// For more information, see [Request
  /// URIs](https://cloud.google.com/storage/docs/reference-uris).
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);
}

/// The only message returned to the client by the `Recognize` method. It
/// contains the result as zero or more sequential `SpeechRecognitionResult`
/// messages.
class RecognizeResponse extends $pb.GeneratedMessage {
  factory RecognizeResponse({
    $core.Iterable<SpeechRecognitionResult>? results,
    $3.Duration? totalBilledTime,
    SpeechAdaptationInfo? speechAdaptationInfo,
    $fixnum.Int64? requestId,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    if (totalBilledTime != null) {
      $result.totalBilledTime = totalBilledTime;
    }
    if (speechAdaptationInfo != null) {
      $result.speechAdaptationInfo = speechAdaptationInfo;
    }
    if (requestId != null) {
      $result.requestId = requestId;
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
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..pc<SpeechRecognitionResult>(
        2, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: SpeechRecognitionResult.create)
    ..aOM<$3.Duration>(3, _omitFieldNames ? '' : 'totalBilledTime',
        subBuilder: $3.Duration.create)
    ..aOM<SpeechAdaptationInfo>(
        7, _omitFieldNames ? '' : 'speechAdaptationInfo',
        subBuilder: SpeechAdaptationInfo.create)
    ..aInt64(8, _omitFieldNames ? '' : 'requestId')
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

  /// Sequential list of transcription results corresponding to
  /// sequential portions of audio.
  @$pb.TagNumber(2)
  $core.List<SpeechRecognitionResult> get results => $_getList(0);

  /// When available, billed audio seconds for the corresponding request.
  @$pb.TagNumber(3)
  $3.Duration get totalBilledTime => $_getN(1);
  @$pb.TagNumber(3)
  set totalBilledTime($3.Duration v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTotalBilledTime() => $_has(1);
  @$pb.TagNumber(3)
  void clearTotalBilledTime() => clearField(3);
  @$pb.TagNumber(3)
  $3.Duration ensureTotalBilledTime() => $_ensure(1);

  /// Provides information on adaptation behavior in response
  @$pb.TagNumber(7)
  SpeechAdaptationInfo get speechAdaptationInfo => $_getN(2);
  @$pb.TagNumber(7)
  set speechAdaptationInfo(SpeechAdaptationInfo v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasSpeechAdaptationInfo() => $_has(2);
  @$pb.TagNumber(7)
  void clearSpeechAdaptationInfo() => clearField(7);
  @$pb.TagNumber(7)
  SpeechAdaptationInfo ensureSpeechAdaptationInfo() => $_ensure(2);

  /// The ID associated with the request. This is a unique ID specific only to
  /// the given request.
  @$pb.TagNumber(8)
  $fixnum.Int64 get requestId => $_getI64(3);
  @$pb.TagNumber(8)
  set requestId($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasRequestId() => $_has(3);
  @$pb.TagNumber(8)
  void clearRequestId() => clearField(8);
}

/// The only message returned to the client by the `LongRunningRecognize` method.
/// It contains the result as zero or more sequential `SpeechRecognitionResult`
/// messages. It is included in the `result.response` field of the `Operation`
/// returned by the `GetOperation` call of the `google::longrunning::Operations`
/// service.
class LongRunningRecognizeResponse extends $pb.GeneratedMessage {
  factory LongRunningRecognizeResponse({
    $core.Iterable<SpeechRecognitionResult>? results,
    $3.Duration? totalBilledTime,
    TranscriptOutputConfig? outputConfig,
    $6.Status? outputError,
    SpeechAdaptationInfo? speechAdaptationInfo,
    $fixnum.Int64? requestId,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    if (totalBilledTime != null) {
      $result.totalBilledTime = totalBilledTime;
    }
    if (outputConfig != null) {
      $result.outputConfig = outputConfig;
    }
    if (outputError != null) {
      $result.outputError = outputError;
    }
    if (speechAdaptationInfo != null) {
      $result.speechAdaptationInfo = speechAdaptationInfo;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    return $result;
  }
  LongRunningRecognizeResponse._() : super();
  factory LongRunningRecognizeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LongRunningRecognizeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LongRunningRecognizeResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..pc<SpeechRecognitionResult>(
        2, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: SpeechRecognitionResult.create)
    ..aOM<$3.Duration>(3, _omitFieldNames ? '' : 'totalBilledTime',
        subBuilder: $3.Duration.create)
    ..aOM<TranscriptOutputConfig>(6, _omitFieldNames ? '' : 'outputConfig',
        subBuilder: TranscriptOutputConfig.create)
    ..aOM<$6.Status>(7, _omitFieldNames ? '' : 'outputError',
        subBuilder: $6.Status.create)
    ..aOM<SpeechAdaptationInfo>(
        8, _omitFieldNames ? '' : 'speechAdaptationInfo',
        subBuilder: SpeechAdaptationInfo.create)
    ..aInt64(9, _omitFieldNames ? '' : 'requestId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LongRunningRecognizeResponse clone() =>
      LongRunningRecognizeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LongRunningRecognizeResponse copyWith(
          void Function(LongRunningRecognizeResponse) updates) =>
      super.copyWith(
              (message) => updates(message as LongRunningRecognizeResponse))
          as LongRunningRecognizeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LongRunningRecognizeResponse create() =>
      LongRunningRecognizeResponse._();
  LongRunningRecognizeResponse createEmptyInstance() => create();
  static $pb.PbList<LongRunningRecognizeResponse> createRepeated() =>
      $pb.PbList<LongRunningRecognizeResponse>();
  @$core.pragma('dart2js:noInline')
  static LongRunningRecognizeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LongRunningRecognizeResponse>(create);
  static LongRunningRecognizeResponse? _defaultInstance;

  /// Sequential list of transcription results corresponding to
  /// sequential portions of audio.
  @$pb.TagNumber(2)
  $core.List<SpeechRecognitionResult> get results => $_getList(0);

  /// When available, billed audio seconds for the corresponding request.
  @$pb.TagNumber(3)
  $3.Duration get totalBilledTime => $_getN(1);
  @$pb.TagNumber(3)
  set totalBilledTime($3.Duration v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTotalBilledTime() => $_has(1);
  @$pb.TagNumber(3)
  void clearTotalBilledTime() => clearField(3);
  @$pb.TagNumber(3)
  $3.Duration ensureTotalBilledTime() => $_ensure(1);

  /// Original output config if present in the request.
  @$pb.TagNumber(6)
  TranscriptOutputConfig get outputConfig => $_getN(2);
  @$pb.TagNumber(6)
  set outputConfig(TranscriptOutputConfig v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasOutputConfig() => $_has(2);
  @$pb.TagNumber(6)
  void clearOutputConfig() => clearField(6);
  @$pb.TagNumber(6)
  TranscriptOutputConfig ensureOutputConfig() => $_ensure(2);

  /// If the transcript output fails this field contains the relevant error.
  @$pb.TagNumber(7)
  $6.Status get outputError => $_getN(3);
  @$pb.TagNumber(7)
  set outputError($6.Status v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasOutputError() => $_has(3);
  @$pb.TagNumber(7)
  void clearOutputError() => clearField(7);
  @$pb.TagNumber(7)
  $6.Status ensureOutputError() => $_ensure(3);

  /// Provides information on speech adaptation behavior in response
  @$pb.TagNumber(8)
  SpeechAdaptationInfo get speechAdaptationInfo => $_getN(4);
  @$pb.TagNumber(8)
  set speechAdaptationInfo(SpeechAdaptationInfo v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasSpeechAdaptationInfo() => $_has(4);
  @$pb.TagNumber(8)
  void clearSpeechAdaptationInfo() => clearField(8);
  @$pb.TagNumber(8)
  SpeechAdaptationInfo ensureSpeechAdaptationInfo() => $_ensure(4);

  /// The ID associated with the request. This is a unique ID specific only to
  /// the given request.
  @$pb.TagNumber(9)
  $fixnum.Int64 get requestId => $_getI64(5);
  @$pb.TagNumber(9)
  set requestId($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasRequestId() => $_has(5);
  @$pb.TagNumber(9)
  void clearRequestId() => clearField(9);
}

/// Describes the progress of a long-running `LongRunningRecognize` call. It is
/// included in the `metadata` field of the `Operation` returned by the
/// `GetOperation` call of the `google::longrunning::Operations` service.
class LongRunningRecognizeMetadata extends $pb.GeneratedMessage {
  factory LongRunningRecognizeMetadata({
    $core.int? progressPercent,
    $7.Timestamp? startTime,
    $7.Timestamp? lastUpdateTime,
    $core.String? uri,
  }) {
    final $result = create();
    if (progressPercent != null) {
      $result.progressPercent = progressPercent;
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (lastUpdateTime != null) {
      $result.lastUpdateTime = lastUpdateTime;
    }
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  LongRunningRecognizeMetadata._() : super();
  factory LongRunningRecognizeMetadata.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LongRunningRecognizeMetadata.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LongRunningRecognizeMetadata',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'progressPercent', $pb.PbFieldType.O3)
    ..aOM<$7.Timestamp>(2, _omitFieldNames ? '' : 'startTime',
        subBuilder: $7.Timestamp.create)
    ..aOM<$7.Timestamp>(3, _omitFieldNames ? '' : 'lastUpdateTime',
        subBuilder: $7.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LongRunningRecognizeMetadata clone() =>
      LongRunningRecognizeMetadata()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LongRunningRecognizeMetadata copyWith(
          void Function(LongRunningRecognizeMetadata) updates) =>
      super.copyWith(
              (message) => updates(message as LongRunningRecognizeMetadata))
          as LongRunningRecognizeMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LongRunningRecognizeMetadata create() =>
      LongRunningRecognizeMetadata._();
  LongRunningRecognizeMetadata createEmptyInstance() => create();
  static $pb.PbList<LongRunningRecognizeMetadata> createRepeated() =>
      $pb.PbList<LongRunningRecognizeMetadata>();
  @$core.pragma('dart2js:noInline')
  static LongRunningRecognizeMetadata getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LongRunningRecognizeMetadata>(create);
  static LongRunningRecognizeMetadata? _defaultInstance;

  /// Approximate percentage of audio processed thus far. Guaranteed to be 100
  /// when the audio is fully processed and the results are available.
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

  /// Time when the request was received.
  @$pb.TagNumber(2)
  $7.Timestamp get startTime => $_getN(1);
  @$pb.TagNumber(2)
  set startTime($7.Timestamp v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStartTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartTime() => clearField(2);
  @$pb.TagNumber(2)
  $7.Timestamp ensureStartTime() => $_ensure(1);

  /// Time of the most recent processing update.
  @$pb.TagNumber(3)
  $7.Timestamp get lastUpdateTime => $_getN(2);
  @$pb.TagNumber(3)
  set lastUpdateTime($7.Timestamp v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLastUpdateTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastUpdateTime() => clearField(3);
  @$pb.TagNumber(3)
  $7.Timestamp ensureLastUpdateTime() => $_ensure(2);

  /// Output only. The URI of the audio file being transcribed. Empty if the
  /// audio was sent as byte content.
  @$pb.TagNumber(4)
  $core.String get uri => $_getSZ(3);
  @$pb.TagNumber(4)
  set uri($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUri() => $_has(3);
  @$pb.TagNumber(4)
  void clearUri() => clearField(4);
}

///  `StreamingRecognizeResponse` is the only message returned to the client by
///  `StreamingRecognize`. A series of zero or more `StreamingRecognizeResponse`
///  messages are streamed back to the client. If there is no recognizable
///  audio, and `single_utterance` is set to false, then no messages are streamed
///  back to the client.
///
///  Here's an example of a series of `StreamingRecognizeResponse`s that might be
///  returned while processing audio:
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
    $6.Status? error,
    $core.Iterable<StreamingRecognitionResult>? results,
    StreamingRecognizeResponse_SpeechEventType? speechEventType,
    $3.Duration? totalBilledTime,
    $3.Duration? speechEventTime,
    SpeechAdaptationInfo? speechAdaptationInfo,
    $fixnum.Int64? requestId,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    if (results != null) {
      $result.results.addAll(results);
    }
    if (speechEventType != null) {
      $result.speechEventType = speechEventType;
    }
    if (totalBilledTime != null) {
      $result.totalBilledTime = totalBilledTime;
    }
    if (speechEventTime != null) {
      $result.speechEventTime = speechEventTime;
    }
    if (speechAdaptationInfo != null) {
      $result.speechAdaptationInfo = speechAdaptationInfo;
    }
    if (requestId != null) {
      $result.requestId = requestId;
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
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..aOM<$6.Status>(1, _omitFieldNames ? '' : 'error',
        subBuilder: $6.Status.create)
    ..pc<StreamingRecognitionResult>(
        2, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: StreamingRecognitionResult.create)
    ..e<StreamingRecognizeResponse_SpeechEventType>(
        4, _omitFieldNames ? '' : 'speechEventType', $pb.PbFieldType.OE,
        defaultOrMaker:
            StreamingRecognizeResponse_SpeechEventType.SPEECH_EVENT_UNSPECIFIED,
        valueOf: StreamingRecognizeResponse_SpeechEventType.valueOf,
        enumValues: StreamingRecognizeResponse_SpeechEventType.values)
    ..aOM<$3.Duration>(5, _omitFieldNames ? '' : 'totalBilledTime',
        subBuilder: $3.Duration.create)
    ..aOM<$3.Duration>(8, _omitFieldNames ? '' : 'speechEventTime',
        subBuilder: $3.Duration.create)
    ..aOM<SpeechAdaptationInfo>(
        9, _omitFieldNames ? '' : 'speechAdaptationInfo',
        subBuilder: SpeechAdaptationInfo.create)
    ..aInt64(10, _omitFieldNames ? '' : 'requestId')
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

  /// If set, returns a [google.rpc.Status][google.rpc.Status] message that
  /// specifies the error for the operation.
  @$pb.TagNumber(1)
  $6.Status get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($6.Status v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  $6.Status ensureError() => $_ensure(0);

  /// This repeated list contains zero or more results that
  /// correspond to consecutive portions of the audio currently being processed.
  /// It contains zero or one `is_final=true` result (the newly settled portion),
  /// followed by zero or more `is_final=false` results (the interim results).
  @$pb.TagNumber(2)
  $core.List<StreamingRecognitionResult> get results => $_getList(1);

  /// Indicates the type of speech event.
  @$pb.TagNumber(4)
  StreamingRecognizeResponse_SpeechEventType get speechEventType => $_getN(2);
  @$pb.TagNumber(4)
  set speechEventType(StreamingRecognizeResponse_SpeechEventType v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSpeechEventType() => $_has(2);
  @$pb.TagNumber(4)
  void clearSpeechEventType() => clearField(4);

  /// When available, billed audio seconds for the stream.
  /// Set only if this is the last response in the stream.
  @$pb.TagNumber(5)
  $3.Duration get totalBilledTime => $_getN(3);
  @$pb.TagNumber(5)
  set totalBilledTime($3.Duration v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTotalBilledTime() => $_has(3);
  @$pb.TagNumber(5)
  void clearTotalBilledTime() => clearField(5);
  @$pb.TagNumber(5)
  $3.Duration ensureTotalBilledTime() => $_ensure(3);

  /// Time offset between the beginning of the audio and event emission.
  @$pb.TagNumber(8)
  $3.Duration get speechEventTime => $_getN(4);
  @$pb.TagNumber(8)
  set speechEventTime($3.Duration v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasSpeechEventTime() => $_has(4);
  @$pb.TagNumber(8)
  void clearSpeechEventTime() => clearField(8);
  @$pb.TagNumber(8)
  $3.Duration ensureSpeechEventTime() => $_ensure(4);

  /// Provides information on adaptation behavior in response
  @$pb.TagNumber(9)
  SpeechAdaptationInfo get speechAdaptationInfo => $_getN(5);
  @$pb.TagNumber(9)
  set speechAdaptationInfo(SpeechAdaptationInfo v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasSpeechAdaptationInfo() => $_has(5);
  @$pb.TagNumber(9)
  void clearSpeechAdaptationInfo() => clearField(9);
  @$pb.TagNumber(9)
  SpeechAdaptationInfo ensureSpeechAdaptationInfo() => $_ensure(5);

  /// The ID associated with the request. This is a unique ID specific only to
  /// the given request.
  @$pb.TagNumber(10)
  $fixnum.Int64 get requestId => $_getI64(6);
  @$pb.TagNumber(10)
  set requestId($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasRequestId() => $_has(6);
  @$pb.TagNumber(10)
  void clearRequestId() => clearField(10);
}

/// A streaming speech recognition result corresponding to a portion of the audio
/// that is currently being processed.
class StreamingRecognitionResult extends $pb.GeneratedMessage {
  factory StreamingRecognitionResult({
    $core.Iterable<SpeechRecognitionAlternative>? alternatives,
    $core.bool? isFinal,
    $core.double? stability,
    $3.Duration? resultEndTime,
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
    if (resultEndTime != null) {
      $result.resultEndTime = resultEndTime;
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
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..pc<SpeechRecognitionAlternative>(
        1, _omitFieldNames ? '' : 'alternatives', $pb.PbFieldType.PM,
        subBuilder: SpeechRecognitionAlternative.create)
    ..aOB(2, _omitFieldNames ? '' : 'isFinal')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'stability', $pb.PbFieldType.OF)
    ..aOM<$3.Duration>(4, _omitFieldNames ? '' : 'resultEndTime',
        subBuilder: $3.Duration.create)
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

  /// May contain one or more recognition hypotheses (up to the
  /// maximum specified in `max_alternatives`).
  /// These alternatives are ordered in terms of accuracy, with the top (first)
  /// alternative being the most probable, as ranked by the recognizer.
  @$pb.TagNumber(1)
  $core.List<SpeechRecognitionAlternative> get alternatives => $_getList(0);

  /// If `false`, this `StreamingRecognitionResult` represents an
  /// interim result that may change. If `true`, this is the final time the
  /// speech service will return this particular `StreamingRecognitionResult`,
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

  /// An estimate of the likelihood that the recognizer will not
  /// change its guess about this interim result. Values range from 0.0
  /// (completely unstable) to 1.0 (completely stable).
  /// This field is only provided for interim results (`is_final=false`).
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

  /// Time offset of the end of this result relative to the
  /// beginning of the audio.
  @$pb.TagNumber(4)
  $3.Duration get resultEndTime => $_getN(3);
  @$pb.TagNumber(4)
  set resultEndTime($3.Duration v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasResultEndTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearResultEndTime() => clearField(4);
  @$pb.TagNumber(4)
  $3.Duration ensureResultEndTime() => $_ensure(3);

  /// For multi-channel audio, this is the channel number corresponding to the
  /// recognized result for the audio from that channel.
  /// For audio_channel_count = N, its output values can range from '1' to 'N'.
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

/// A speech recognition result corresponding to a portion of the audio.
class SpeechRecognitionResult extends $pb.GeneratedMessage {
  factory SpeechRecognitionResult({
    $core.Iterable<SpeechRecognitionAlternative>? alternatives,
    $core.int? channelTag,
    $3.Duration? resultEndTime,
    $core.String? languageCode,
  }) {
    final $result = create();
    if (alternatives != null) {
      $result.alternatives.addAll(alternatives);
    }
    if (channelTag != null) {
      $result.channelTag = channelTag;
    }
    if (resultEndTime != null) {
      $result.resultEndTime = resultEndTime;
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
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..pc<SpeechRecognitionAlternative>(
        1, _omitFieldNames ? '' : 'alternatives', $pb.PbFieldType.PM,
        subBuilder: SpeechRecognitionAlternative.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'channelTag', $pb.PbFieldType.O3)
    ..aOM<$3.Duration>(4, _omitFieldNames ? '' : 'resultEndTime',
        subBuilder: $3.Duration.create)
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

  /// May contain one or more recognition hypotheses (up to the
  /// maximum specified in `max_alternatives`).
  /// These alternatives are ordered in terms of accuracy, with the top (first)
  /// alternative being the most probable, as ranked by the recognizer.
  @$pb.TagNumber(1)
  $core.List<SpeechRecognitionAlternative> get alternatives => $_getList(0);

  /// For multi-channel audio, this is the channel number corresponding to the
  /// recognized result for the audio from that channel.
  /// For audio_channel_count = N, its output values can range from '1' to 'N'.
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

  /// Time offset of the end of this result relative to the
  /// beginning of the audio.
  @$pb.TagNumber(4)
  $3.Duration get resultEndTime => $_getN(2);
  @$pb.TagNumber(4)
  set resultEndTime($3.Duration v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasResultEndTime() => $_has(2);
  @$pb.TagNumber(4)
  void clearResultEndTime() => clearField(4);
  @$pb.TagNumber(4)
  $3.Duration ensureResultEndTime() => $_ensure(2);

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
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
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
  /// In languages that use spaces to separate words, the transcript might have a
  /// leading space if it isn't the first result. You can concatenate each result
  /// to obtain the full transcript without using a separator.
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
  /// result or, of a streaming result where `is_final=true`.
  /// This field is not guaranteed to be accurate and users should not rely on it
  /// to be always provided.
  /// The default of 0.0 is a sentinel value indicating `confidence` was not set.
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
  /// Note: When `enable_speaker_diarization` is true, you will see all the words
  /// from the beginning of the audio.
  @$pb.TagNumber(3)
  $core.List<WordInfo> get words => $_getList(2);
}

/// Word-specific information for recognized words.
class WordInfo extends $pb.GeneratedMessage {
  factory WordInfo({
    $3.Duration? startTime,
    $3.Duration? endTime,
    $core.String? word,
    $core.double? confidence,
    $core.int? speakerTag,
  }) {
    final $result = create();
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (word != null) {
      $result.word = word;
    }
    if (confidence != null) {
      $result.confidence = confidence;
    }
    if (speakerTag != null) {
      $result.speakerTag = speakerTag;
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
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..aOM<$3.Duration>(1, _omitFieldNames ? '' : 'startTime',
        subBuilder: $3.Duration.create)
    ..aOM<$3.Duration>(2, _omitFieldNames ? '' : 'endTime',
        subBuilder: $3.Duration.create)
    ..aOS(3, _omitFieldNames ? '' : 'word')
    ..a<$core.double>(
        4, _omitFieldNames ? '' : 'confidence', $pb.PbFieldType.OF)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'speakerTag', $pb.PbFieldType.O3)
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
  /// This field is only set if `enable_word_time_offsets=true` and only
  /// in the top hypothesis.
  /// This is an experimental feature and the accuracy of the time offset can
  /// vary.
  @$pb.TagNumber(1)
  $3.Duration get startTime => $_getN(0);
  @$pb.TagNumber(1)
  set startTime($3.Duration v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStartTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTime() => clearField(1);
  @$pb.TagNumber(1)
  $3.Duration ensureStartTime() => $_ensure(0);

  /// Time offset relative to the beginning of the audio,
  /// and corresponding to the end of the spoken word.
  /// This field is only set if `enable_word_time_offsets=true` and only
  /// in the top hypothesis.
  /// This is an experimental feature and the accuracy of the time offset can
  /// vary.
  @$pb.TagNumber(2)
  $3.Duration get endTime => $_getN(1);
  @$pb.TagNumber(2)
  set endTime($3.Duration v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEndTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTime() => clearField(2);
  @$pb.TagNumber(2)
  $3.Duration ensureEndTime() => $_ensure(1);

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
  /// result or, of a streaming result where `is_final=true`.
  /// This field is not guaranteed to be accurate and users should not rely on it
  /// to be always provided.
  /// The default of 0.0 is a sentinel value indicating `confidence` was not set.
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

  /// Output only. A distinct integer value is assigned for every speaker within
  /// the audio. This field specifies which one of those speakers was detected to
  /// have spoken this word. Value ranges from '1' to diarization_speaker_count.
  /// speaker_tag is set if enable_speaker_diarization = 'true' and only in the
  /// top alternative.
  @$pb.TagNumber(5)
  $core.int get speakerTag => $_getIZ(4);
  @$pb.TagNumber(5)
  set speakerTag($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSpeakerTag() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpeakerTag() => clearField(5);
}

/// Information on speech adaptation use in results
class SpeechAdaptationInfo extends $pb.GeneratedMessage {
  factory SpeechAdaptationInfo({
    $core.bool? adaptationTimeout,
    $core.String? timeoutMessage,
  }) {
    final $result = create();
    if (adaptationTimeout != null) {
      $result.adaptationTimeout = adaptationTimeout;
    }
    if (timeoutMessage != null) {
      $result.timeoutMessage = timeoutMessage;
    }
    return $result;
  }
  SpeechAdaptationInfo._() : super();
  factory SpeechAdaptationInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpeechAdaptationInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpeechAdaptationInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'google.cloud.speech.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'adaptationTimeout')
    ..aOS(4, _omitFieldNames ? '' : 'timeoutMessage')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpeechAdaptationInfo clone() =>
      SpeechAdaptationInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpeechAdaptationInfo copyWith(void Function(SpeechAdaptationInfo) updates) =>
      super.copyWith((message) => updates(message as SpeechAdaptationInfo))
          as SpeechAdaptationInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeechAdaptationInfo create() => SpeechAdaptationInfo._();
  SpeechAdaptationInfo createEmptyInstance() => create();
  static $pb.PbList<SpeechAdaptationInfo> createRepeated() =>
      $pb.PbList<SpeechAdaptationInfo>();
  @$core.pragma('dart2js:noInline')
  static SpeechAdaptationInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpeechAdaptationInfo>(create);
  static SpeechAdaptationInfo? _defaultInstance;

  /// Whether there was a timeout when applying speech adaptation. If true,
  /// adaptation had no effect in the response transcript.
  @$pb.TagNumber(1)
  $core.bool get adaptationTimeout => $_getBF(0);
  @$pb.TagNumber(1)
  set adaptationTimeout($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAdaptationTimeout() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdaptationTimeout() => clearField(1);

  /// If set, returns a message specifying which part of the speech adaptation
  /// request timed out.
  @$pb.TagNumber(4)
  $core.String get timeoutMessage => $_getSZ(1);
  @$pb.TagNumber(4)
  set timeoutMessage($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTimeoutMessage() => $_has(1);
  @$pb.TagNumber(4)
  void clearTimeoutMessage() => clearField(4);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
