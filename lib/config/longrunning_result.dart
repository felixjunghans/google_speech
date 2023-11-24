import 'package:google_speech/generated/google/longrunning/operations.pb.dart';
import 'package:google_speech/generated/google/rpc/status.pb.dart';

class LongRunningRequestResult {
  final Operation operation;
  final List<TranscriptionResult>? results;
  final Status error;

  LongRunningRequestResult({
    required this.operation,
    this.results,
    required this.error,
  });
}

class TranscriptionResult {
  final List<Transcript> alternatives;
  final ResultEndOffset resultEndOffset;
  final String languageCode;

  TranscriptionResult({
    required this.alternatives,
    required this.resultEndOffset,
    required this.languageCode,
  });
}

class ResultEndOffset {
  final int seconds;
  final int nanos;

  ResultEndOffset({required this.seconds, required this.nanos});
}

class Transcript {
  final String transcript;
  final double confidence;

  Transcript({required this.transcript, required this.confidence});
}
