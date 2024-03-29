#!/usr/bin/env bash

if [ ! -d "$PROTOBUF" ]; then
  echo "Please set the PROTOBUF environment variable to your clone of protocolbuffers/protobuf."
  exit -1
fi

if [ ! -d "$GOOGLEAPIS" ]; then
  echo "Please set the GOOGLEAPIS environment variable to your clone of googleapis/googleapis."
  exit -1
fi

PROTOC="protoc --dart_out=grpc:./lib/generated -I$PROTOBUF/src -I$GOOGLEAPIS"

$PROTOC $GOOGLEAPIS/google/cloud/speech/v1/cloud_speech.proto
$PROTOC $GOOGLEAPIS/google/cloud/speech/v1/resource.proto
$PROTOC $GOOGLEAPIS/google/cloud/speech/v1p1beta1/cloud_speech.proto
$PROTOC $GOOGLEAPIS/google/cloud/speech/v1p1beta1/resource.proto
$PROTOC $GOOGLEAPIS/google/cloud/speech/v2/cloud_speech.proto

$PROTOC $GOOGLEAPIS/google/longrunning/operations.proto

$PROTOC $GOOGLEAPIS/google/api/monitored_resource.proto
$PROTOC $GOOGLEAPIS/google/api/label.proto
$PROTOC $GOOGLEAPIS/google/api/launch_stage.proto

$PROTOC $GOOGLEAPIS/google/rpc/status.proto

$PROTOC $PROTOBUF/src/google/protobuf/any.proto
$PROTOC $PROTOBUF/src/google/protobuf/duration.proto
$PROTOC $PROTOBUF/src/google/protobuf/empty.proto
$PROTOC $PROTOBUF/src/google/protobuf/struct.proto
$PROTOC $PROTOBUF/src/google/protobuf/timestamp.proto
$PROTOC $PROTOBUF/src/google/protobuf/field_mask.proto
$PROTOC $PROTOBUF/src/google/protobuf/wrappers.proto

dart format ./lib/generated