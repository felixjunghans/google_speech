//
//  Generated code. Do not modify.
//  source: google/cloud/speech/v1/cloud_speech.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../longrunning/operations.pb.dart' as $0;
import 'cloud_speech.pb.dart' as $2;

export 'cloud_speech.pb.dart';

@$pb.GrpcServiceName('google.cloud.speech.v1.Speech')
class SpeechClient extends $grpc.Client {
  static final _$recognize =
      $grpc.ClientMethod<$2.RecognizeRequest, $2.RecognizeResponse>(
          '/google.cloud.speech.v1.Speech/Recognize',
          ($2.RecognizeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.RecognizeResponse.fromBuffer(value));
  static final _$longRunningRecognize =
      $grpc.ClientMethod<$2.LongRunningRecognizeRequest, $0.Operation>(
          '/google.cloud.speech.v1.Speech/LongRunningRecognize',
          ($2.LongRunningRecognizeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$streamingRecognize = $grpc.ClientMethod<
          $2.StreamingRecognizeRequest, $2.StreamingRecognizeResponse>(
      '/google.cloud.speech.v1.Speech/StreamingRecognize',
      ($2.StreamingRecognizeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.StreamingRecognizeResponse.fromBuffer(value));

  SpeechClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.RecognizeResponse> recognize(
      $2.RecognizeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$recognize, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> longRunningRecognize(
      $2.LongRunningRecognizeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$longRunningRecognize, request, options: options);
  }

  $grpc.ResponseStream<$2.StreamingRecognizeResponse> streamingRecognize(
      $async.Stream<$2.StreamingRecognizeRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamingRecognize, request,
        options: options);
  }
}

@$pb.GrpcServiceName('google.cloud.speech.v1.Speech')
abstract class SpeechServiceBase extends $grpc.Service {
  $core.String get $name => 'google.cloud.speech.v1.Speech';

  SpeechServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.RecognizeRequest, $2.RecognizeResponse>(
        'Recognize',
        recognize_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.RecognizeRequest.fromBuffer(value),
        ($2.RecognizeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.LongRunningRecognizeRequest, $0.Operation>(
            'LongRunningRecognize',
            longRunningRecognize_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.LongRunningRecognizeRequest.fromBuffer(value),
            ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StreamingRecognizeRequest,
            $2.StreamingRecognizeResponse>(
        'StreamingRecognize',
        streamingRecognize,
        true,
        true,
        ($core.List<$core.int> value) =>
            $2.StreamingRecognizeRequest.fromBuffer(value),
        ($2.StreamingRecognizeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.RecognizeResponse> recognize_Pre($grpc.ServiceCall call,
      $async.Future<$2.RecognizeRequest> request) async {
    return recognize(call, await request);
  }

  $async.Future<$0.Operation> longRunningRecognize_Pre($grpc.ServiceCall call,
      $async.Future<$2.LongRunningRecognizeRequest> request) async {
    return longRunningRecognize(call, await request);
  }

  $async.Future<$2.RecognizeResponse> recognize(
      $grpc.ServiceCall call, $2.RecognizeRequest request);
  $async.Future<$0.Operation> longRunningRecognize(
      $grpc.ServiceCall call, $2.LongRunningRecognizeRequest request);
  $async.Stream<$2.StreamingRecognizeResponse> streamingRecognize(
      $grpc.ServiceCall call,
      $async.Stream<$2.StreamingRecognizeRequest> request);
}
