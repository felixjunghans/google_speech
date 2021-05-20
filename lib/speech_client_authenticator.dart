import 'dart:io';

import 'package:google_speech/exception.dart';
import 'package:grpc/grpc.dart';

/// Contains the necessary [CallOptions] needed to connect
/// to a Google Cloud Speech Server.
abstract class SpeechClientAuthenticator {
  /// Scopes that are needed to become the Google Cloud Speech-to-Text Api.
  ///
  /// You can find more information about this at
  /// [Cloud Speech-to-Text API](https://developers.google.com/identity/protocols/oauth2/scopes#speech)
  static final List<String> scopes = [
    'https://www.googleapis.com/auth/cloud-platform'
  ];

  /// Returns the [CallOptions] of the created service account.
  /// These can then be used to initialize a new [SpeechClient].
  CallOptions get callOptions;
}

class ServiceAccount extends SpeechClientAuthenticator {
  /// Establishes the authentication of a Google Service Account
  /// with the Google Cloud.
  final ServiceAccountAuthenticator _authenticator;

  @override
  CallOptions get callOptions => _authenticator.toCallOptions;

  /// Returns the current project id of the service account.
  String? get projectId => _authenticator.projectId;

  // Private constructor to prevent direct initialization of the class.
  ServiceAccount._(String _serviceAccountJson)
      : _authenticator = ServiceAccountAuthenticator(
            _serviceAccountJson, SpeechClientAuthenticator.scopes);

  /// Creates a ServiceAccount using a service-account.json file.
  ///
  /// If the transferred file **does not exist**, a [FileNotFoundException]
  /// is thrown.
  ///
  /// If the transferred file **does not have** a Json extension a
  /// [UnsupportedFileExtensionException] is thrown.
  /// This is done to eliminate a possible source of error and to make sure
  /// that the passed file is really a Json file.
  factory ServiceAccount.fromFile(File file) {
    // Make sure that the passed file is not null and the file exists.
    if (file == null || !file.existsSync()) throw FileNotFoundException(file);
    // Make sure that the transferred file is really a Json file.
    if (!file.path.contains('.json')) {
      throw UnsupportedFileExtensionException(file);
    }
    final json = file.readAsStringSync();
    return ServiceAccount.fromString(json);
  }

  /// Creates a service account using a passed Json string.
  /// This Json string must contain valid Json, otherwise no
  /// service account can be created.
  ///
  /// A valid Json string could look like this
  ///
  /// **Important**
  /// Make sure you prefix your string with an 'r' to
  /// convert it to a raw string and escape the /n typical in
  /// Google Account Json files.
  ///
  /// ```dart
  /// final json = r'''{"type" : "service_account", ...}''';
  /// ```
  factory ServiceAccount.fromString(String json) {
    return ServiceAccount._(json);
  }
}
