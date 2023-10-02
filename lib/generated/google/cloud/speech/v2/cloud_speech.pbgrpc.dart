//
//  Generated code. Do not modify.
//  source: google/cloud/speech/v2/cloud_speech.proto
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

@$pb.GrpcServiceName('google.cloud.speech.v2.Speech')
class SpeechClient extends $grpc.Client {
  static final _$createRecognizer =
      $grpc.ClientMethod<$2.CreateRecognizerRequest, $0.Operation>(
          '/google.cloud.speech.v2.Speech/CreateRecognizer',
          ($2.CreateRecognizerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$listRecognizers =
      $grpc.ClientMethod<$2.ListRecognizersRequest, $2.ListRecognizersResponse>(
          '/google.cloud.speech.v2.Speech/ListRecognizers',
          ($2.ListRecognizersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListRecognizersResponse.fromBuffer(value));
  static final _$getRecognizer =
      $grpc.ClientMethod<$2.GetRecognizerRequest, $2.Recognizer>(
          '/google.cloud.speech.v2.Speech/GetRecognizer',
          ($2.GetRecognizerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Recognizer.fromBuffer(value));
  static final _$updateRecognizer =
      $grpc.ClientMethod<$2.UpdateRecognizerRequest, $0.Operation>(
          '/google.cloud.speech.v2.Speech/UpdateRecognizer',
          ($2.UpdateRecognizerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$deleteRecognizer =
      $grpc.ClientMethod<$2.DeleteRecognizerRequest, $0.Operation>(
          '/google.cloud.speech.v2.Speech/DeleteRecognizer',
          ($2.DeleteRecognizerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$undeleteRecognizer =
      $grpc.ClientMethod<$2.UndeleteRecognizerRequest, $0.Operation>(
          '/google.cloud.speech.v2.Speech/UndeleteRecognizer',
          ($2.UndeleteRecognizerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$recognize =
      $grpc.ClientMethod<$2.RecognizeRequest, $2.RecognizeResponse>(
          '/google.cloud.speech.v2.Speech/Recognize',
          ($2.RecognizeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.RecognizeResponse.fromBuffer(value));
  static final _$streamingRecognize = $grpc.ClientMethod<
          $2.StreamingRecognizeRequest, $2.StreamingRecognizeResponse>(
      '/google.cloud.speech.v2.Speech/StreamingRecognize',
      ($2.StreamingRecognizeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.StreamingRecognizeResponse.fromBuffer(value));
  static final _$batchRecognize =
      $grpc.ClientMethod<$2.BatchRecognizeRequest, $0.Operation>(
          '/google.cloud.speech.v2.Speech/BatchRecognize',
          ($2.BatchRecognizeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$getConfig = $grpc.ClientMethod<$2.GetConfigRequest, $2.Config>(
      '/google.cloud.speech.v2.Speech/GetConfig',
      ($2.GetConfigRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Config.fromBuffer(value));
  static final _$updateConfig =
      $grpc.ClientMethod<$2.UpdateConfigRequest, $2.Config>(
          '/google.cloud.speech.v2.Speech/UpdateConfig',
          ($2.UpdateConfigRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Config.fromBuffer(value));
  static final _$createCustomClass =
      $grpc.ClientMethod<$2.CreateCustomClassRequest, $0.Operation>(
          '/google.cloud.speech.v2.Speech/CreateCustomClass',
          ($2.CreateCustomClassRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$listCustomClasses = $grpc.ClientMethod<
          $2.ListCustomClassesRequest, $2.ListCustomClassesResponse>(
      '/google.cloud.speech.v2.Speech/ListCustomClasses',
      ($2.ListCustomClassesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ListCustomClassesResponse.fromBuffer(value));
  static final _$getCustomClass =
      $grpc.ClientMethod<$2.GetCustomClassRequest, $2.CustomClass>(
          '/google.cloud.speech.v2.Speech/GetCustomClass',
          ($2.GetCustomClassRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.CustomClass.fromBuffer(value));
  static final _$updateCustomClass =
      $grpc.ClientMethod<$2.UpdateCustomClassRequest, $0.Operation>(
          '/google.cloud.speech.v2.Speech/UpdateCustomClass',
          ($2.UpdateCustomClassRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$deleteCustomClass =
      $grpc.ClientMethod<$2.DeleteCustomClassRequest, $0.Operation>(
          '/google.cloud.speech.v2.Speech/DeleteCustomClass',
          ($2.DeleteCustomClassRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$undeleteCustomClass =
      $grpc.ClientMethod<$2.UndeleteCustomClassRequest, $0.Operation>(
          '/google.cloud.speech.v2.Speech/UndeleteCustomClass',
          ($2.UndeleteCustomClassRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$createPhraseSet =
      $grpc.ClientMethod<$2.CreatePhraseSetRequest, $0.Operation>(
          '/google.cloud.speech.v2.Speech/CreatePhraseSet',
          ($2.CreatePhraseSetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$listPhraseSets =
      $grpc.ClientMethod<$2.ListPhraseSetsRequest, $2.ListPhraseSetsResponse>(
          '/google.cloud.speech.v2.Speech/ListPhraseSets',
          ($2.ListPhraseSetsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListPhraseSetsResponse.fromBuffer(value));
  static final _$getPhraseSet =
      $grpc.ClientMethod<$2.GetPhraseSetRequest, $2.PhraseSet>(
          '/google.cloud.speech.v2.Speech/GetPhraseSet',
          ($2.GetPhraseSetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.PhraseSet.fromBuffer(value));
  static final _$updatePhraseSet =
      $grpc.ClientMethod<$2.UpdatePhraseSetRequest, $0.Operation>(
          '/google.cloud.speech.v2.Speech/UpdatePhraseSet',
          ($2.UpdatePhraseSetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$deletePhraseSet =
      $grpc.ClientMethod<$2.DeletePhraseSetRequest, $0.Operation>(
          '/google.cloud.speech.v2.Speech/DeletePhraseSet',
          ($2.DeletePhraseSetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$undeletePhraseSet =
      $grpc.ClientMethod<$2.UndeletePhraseSetRequest, $0.Operation>(
          '/google.cloud.speech.v2.Speech/UndeletePhraseSet',
          ($2.UndeletePhraseSetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));

  SpeechClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Operation> createRecognizer(
      $2.CreateRecognizerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRecognizer, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListRecognizersResponse> listRecognizers(
      $2.ListRecognizersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRecognizers, request, options: options);
  }

  $grpc.ResponseFuture<$2.Recognizer> getRecognizer(
      $2.GetRecognizerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecognizer, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> updateRecognizer(
      $2.UpdateRecognizerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRecognizer, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> deleteRecognizer(
      $2.DeleteRecognizerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRecognizer, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> undeleteRecognizer(
      $2.UndeleteRecognizerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$undeleteRecognizer, request, options: options);
  }

  $grpc.ResponseFuture<$2.RecognizeResponse> recognize(
      $2.RecognizeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$recognize, request, options: options);
  }

  $grpc.ResponseStream<$2.StreamingRecognizeResponse> streamingRecognize(
      $async.Stream<$2.StreamingRecognizeRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamingRecognize, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.Operation> batchRecognize(
      $2.BatchRecognizeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$batchRecognize, request, options: options);
  }

  $grpc.ResponseFuture<$2.Config> getConfig($2.GetConfigRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getConfig, request, options: options);
  }

  $grpc.ResponseFuture<$2.Config> updateConfig($2.UpdateConfigRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateConfig, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> createCustomClass(
      $2.CreateCustomClassRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCustomClass, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListCustomClassesResponse> listCustomClasses(
      $2.ListCustomClassesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listCustomClasses, request, options: options);
  }

  $grpc.ResponseFuture<$2.CustomClass> getCustomClass(
      $2.GetCustomClassRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCustomClass, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> updateCustomClass(
      $2.UpdateCustomClassRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCustomClass, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> deleteCustomClass(
      $2.DeleteCustomClassRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCustomClass, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> undeleteCustomClass(
      $2.UndeleteCustomClassRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$undeleteCustomClass, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> createPhraseSet(
      $2.CreatePhraseSetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPhraseSet, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListPhraseSetsResponse> listPhraseSets(
      $2.ListPhraseSetsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPhraseSets, request, options: options);
  }

  $grpc.ResponseFuture<$2.PhraseSet> getPhraseSet(
      $2.GetPhraseSetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPhraseSet, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> updatePhraseSet(
      $2.UpdatePhraseSetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePhraseSet, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> deletePhraseSet(
      $2.DeletePhraseSetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePhraseSet, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> undeletePhraseSet(
      $2.UndeletePhraseSetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$undeletePhraseSet, request, options: options);
  }
}

@$pb.GrpcServiceName('google.cloud.speech.v2.Speech')
abstract class SpeechServiceBase extends $grpc.Service {
  $core.String get $name => 'google.cloud.speech.v2.Speech';

  SpeechServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateRecognizerRequest, $0.Operation>(
        'CreateRecognizer',
        createRecognizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateRecognizerRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListRecognizersRequest,
            $2.ListRecognizersResponse>(
        'ListRecognizers',
        listRecognizers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListRecognizersRequest.fromBuffer(value),
        ($2.ListRecognizersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetRecognizerRequest, $2.Recognizer>(
        'GetRecognizer',
        getRecognizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GetRecognizerRequest.fromBuffer(value),
        ($2.Recognizer value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateRecognizerRequest, $0.Operation>(
        'UpdateRecognizer',
        updateRecognizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateRecognizerRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteRecognizerRequest, $0.Operation>(
        'DeleteRecognizer',
        deleteRecognizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeleteRecognizerRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UndeleteRecognizerRequest, $0.Operation>(
        'UndeleteRecognizer',
        undeleteRecognizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UndeleteRecognizerRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RecognizeRequest, $2.RecognizeResponse>(
        'Recognize',
        recognize_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.RecognizeRequest.fromBuffer(value),
        ($2.RecognizeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StreamingRecognizeRequest,
            $2.StreamingRecognizeResponse>(
        'StreamingRecognize',
        streamingRecognize,
        true,
        true,
        ($core.List<$core.int> value) =>
            $2.StreamingRecognizeRequest.fromBuffer(value),
        ($2.StreamingRecognizeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.BatchRecognizeRequest, $0.Operation>(
        'BatchRecognize',
        batchRecognize_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.BatchRecognizeRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetConfigRequest, $2.Config>(
        'GetConfig',
        getConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetConfigRequest.fromBuffer(value),
        ($2.Config value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateConfigRequest, $2.Config>(
        'UpdateConfig',
        updateConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateConfigRequest.fromBuffer(value),
        ($2.Config value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateCustomClassRequest, $0.Operation>(
        'CreateCustomClass',
        createCustomClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateCustomClassRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListCustomClassesRequest,
            $2.ListCustomClassesResponse>(
        'ListCustomClasses',
        listCustomClasses_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListCustomClassesRequest.fromBuffer(value),
        ($2.ListCustomClassesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetCustomClassRequest, $2.CustomClass>(
        'GetCustomClass',
        getCustomClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GetCustomClassRequest.fromBuffer(value),
        ($2.CustomClass value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateCustomClassRequest, $0.Operation>(
        'UpdateCustomClass',
        updateCustomClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateCustomClassRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteCustomClassRequest, $0.Operation>(
        'DeleteCustomClass',
        deleteCustomClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeleteCustomClassRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UndeleteCustomClassRequest, $0.Operation>(
        'UndeleteCustomClass',
        undeleteCustomClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UndeleteCustomClassRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreatePhraseSetRequest, $0.Operation>(
        'CreatePhraseSet',
        createPhraseSet_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreatePhraseSetRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListPhraseSetsRequest,
            $2.ListPhraseSetsResponse>(
        'ListPhraseSets',
        listPhraseSets_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListPhraseSetsRequest.fromBuffer(value),
        ($2.ListPhraseSetsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetPhraseSetRequest, $2.PhraseSet>(
        'GetPhraseSet',
        getPhraseSet_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GetPhraseSetRequest.fromBuffer(value),
        ($2.PhraseSet value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdatePhraseSetRequest, $0.Operation>(
        'UpdatePhraseSet',
        updatePhraseSet_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdatePhraseSetRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeletePhraseSetRequest, $0.Operation>(
        'DeletePhraseSet',
        deletePhraseSet_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeletePhraseSetRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UndeletePhraseSetRequest, $0.Operation>(
        'UndeletePhraseSet',
        undeletePhraseSet_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UndeletePhraseSetRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
  }

  $async.Future<$0.Operation> createRecognizer_Pre($grpc.ServiceCall call,
      $async.Future<$2.CreateRecognizerRequest> request) async {
    return createRecognizer(call, await request);
  }

  $async.Future<$2.ListRecognizersResponse> listRecognizers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListRecognizersRequest> request) async {
    return listRecognizers(call, await request);
  }

  $async.Future<$2.Recognizer> getRecognizer_Pre($grpc.ServiceCall call,
      $async.Future<$2.GetRecognizerRequest> request) async {
    return getRecognizer(call, await request);
  }

  $async.Future<$0.Operation> updateRecognizer_Pre($grpc.ServiceCall call,
      $async.Future<$2.UpdateRecognizerRequest> request) async {
    return updateRecognizer(call, await request);
  }

  $async.Future<$0.Operation> deleteRecognizer_Pre($grpc.ServiceCall call,
      $async.Future<$2.DeleteRecognizerRequest> request) async {
    return deleteRecognizer(call, await request);
  }

  $async.Future<$0.Operation> undeleteRecognizer_Pre($grpc.ServiceCall call,
      $async.Future<$2.UndeleteRecognizerRequest> request) async {
    return undeleteRecognizer(call, await request);
  }

  $async.Future<$2.RecognizeResponse> recognize_Pre($grpc.ServiceCall call,
      $async.Future<$2.RecognizeRequest> request) async {
    return recognize(call, await request);
  }

  $async.Future<$0.Operation> batchRecognize_Pre($grpc.ServiceCall call,
      $async.Future<$2.BatchRecognizeRequest> request) async {
    return batchRecognize(call, await request);
  }

  $async.Future<$2.Config> getConfig_Pre($grpc.ServiceCall call,
      $async.Future<$2.GetConfigRequest> request) async {
    return getConfig(call, await request);
  }

  $async.Future<$2.Config> updateConfig_Pre($grpc.ServiceCall call,
      $async.Future<$2.UpdateConfigRequest> request) async {
    return updateConfig(call, await request);
  }

  $async.Future<$0.Operation> createCustomClass_Pre($grpc.ServiceCall call,
      $async.Future<$2.CreateCustomClassRequest> request) async {
    return createCustomClass(call, await request);
  }

  $async.Future<$2.ListCustomClassesResponse> listCustomClasses_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListCustomClassesRequest> request) async {
    return listCustomClasses(call, await request);
  }

  $async.Future<$2.CustomClass> getCustomClass_Pre($grpc.ServiceCall call,
      $async.Future<$2.GetCustomClassRequest> request) async {
    return getCustomClass(call, await request);
  }

  $async.Future<$0.Operation> updateCustomClass_Pre($grpc.ServiceCall call,
      $async.Future<$2.UpdateCustomClassRequest> request) async {
    return updateCustomClass(call, await request);
  }

  $async.Future<$0.Operation> deleteCustomClass_Pre($grpc.ServiceCall call,
      $async.Future<$2.DeleteCustomClassRequest> request) async {
    return deleteCustomClass(call, await request);
  }

  $async.Future<$0.Operation> undeleteCustomClass_Pre($grpc.ServiceCall call,
      $async.Future<$2.UndeleteCustomClassRequest> request) async {
    return undeleteCustomClass(call, await request);
  }

  $async.Future<$0.Operation> createPhraseSet_Pre($grpc.ServiceCall call,
      $async.Future<$2.CreatePhraseSetRequest> request) async {
    return createPhraseSet(call, await request);
  }

  $async.Future<$2.ListPhraseSetsResponse> listPhraseSets_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListPhraseSetsRequest> request) async {
    return listPhraseSets(call, await request);
  }

  $async.Future<$2.PhraseSet> getPhraseSet_Pre($grpc.ServiceCall call,
      $async.Future<$2.GetPhraseSetRequest> request) async {
    return getPhraseSet(call, await request);
  }

  $async.Future<$0.Operation> updatePhraseSet_Pre($grpc.ServiceCall call,
      $async.Future<$2.UpdatePhraseSetRequest> request) async {
    return updatePhraseSet(call, await request);
  }

  $async.Future<$0.Operation> deletePhraseSet_Pre($grpc.ServiceCall call,
      $async.Future<$2.DeletePhraseSetRequest> request) async {
    return deletePhraseSet(call, await request);
  }

  $async.Future<$0.Operation> undeletePhraseSet_Pre($grpc.ServiceCall call,
      $async.Future<$2.UndeletePhraseSetRequest> request) async {
    return undeletePhraseSet(call, await request);
  }

  $async.Future<$0.Operation> createRecognizer(
      $grpc.ServiceCall call, $2.CreateRecognizerRequest request);
  $async.Future<$2.ListRecognizersResponse> listRecognizers(
      $grpc.ServiceCall call, $2.ListRecognizersRequest request);
  $async.Future<$2.Recognizer> getRecognizer(
      $grpc.ServiceCall call, $2.GetRecognizerRequest request);
  $async.Future<$0.Operation> updateRecognizer(
      $grpc.ServiceCall call, $2.UpdateRecognizerRequest request);
  $async.Future<$0.Operation> deleteRecognizer(
      $grpc.ServiceCall call, $2.DeleteRecognizerRequest request);
  $async.Future<$0.Operation> undeleteRecognizer(
      $grpc.ServiceCall call, $2.UndeleteRecognizerRequest request);
  $async.Future<$2.RecognizeResponse> recognize(
      $grpc.ServiceCall call, $2.RecognizeRequest request);
  $async.Stream<$2.StreamingRecognizeResponse> streamingRecognize(
      $grpc.ServiceCall call,
      $async.Stream<$2.StreamingRecognizeRequest> request);
  $async.Future<$0.Operation> batchRecognize(
      $grpc.ServiceCall call, $2.BatchRecognizeRequest request);
  $async.Future<$2.Config> getConfig(
      $grpc.ServiceCall call, $2.GetConfigRequest request);
  $async.Future<$2.Config> updateConfig(
      $grpc.ServiceCall call, $2.UpdateConfigRequest request);
  $async.Future<$0.Operation> createCustomClass(
      $grpc.ServiceCall call, $2.CreateCustomClassRequest request);
  $async.Future<$2.ListCustomClassesResponse> listCustomClasses(
      $grpc.ServiceCall call, $2.ListCustomClassesRequest request);
  $async.Future<$2.CustomClass> getCustomClass(
      $grpc.ServiceCall call, $2.GetCustomClassRequest request);
  $async.Future<$0.Operation> updateCustomClass(
      $grpc.ServiceCall call, $2.UpdateCustomClassRequest request);
  $async.Future<$0.Operation> deleteCustomClass(
      $grpc.ServiceCall call, $2.DeleteCustomClassRequest request);
  $async.Future<$0.Operation> undeleteCustomClass(
      $grpc.ServiceCall call, $2.UndeleteCustomClassRequest request);
  $async.Future<$0.Operation> createPhraseSet(
      $grpc.ServiceCall call, $2.CreatePhraseSetRequest request);
  $async.Future<$2.ListPhraseSetsResponse> listPhraseSets(
      $grpc.ServiceCall call, $2.ListPhraseSetsRequest request);
  $async.Future<$2.PhraseSet> getPhraseSet(
      $grpc.ServiceCall call, $2.GetPhraseSetRequest request);
  $async.Future<$0.Operation> updatePhraseSet(
      $grpc.ServiceCall call, $2.UpdatePhraseSetRequest request);
  $async.Future<$0.Operation> deletePhraseSet(
      $grpc.ServiceCall call, $2.DeletePhraseSetRequest request);
  $async.Future<$0.Operation> undeletePhraseSet(
      $grpc.ServiceCall call, $2.UndeletePhraseSetRequest request);
}
