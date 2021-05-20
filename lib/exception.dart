import 'dart:io';

abstract class UnsupportedFileException implements IOException {
  /// Message describing the thrown error.
  final String message;

  /// File that was transferred during initialization.
  final File? file;

  /// Will be thrown if a [File] is passed when initializing a [ServiceAccount]
  /// which does not contain the necessary content to
  /// initialize a [ServiceAccount].
  UnsupportedFileException(this.message, this.file);

  @override
  String toString() {
    var sb = StringBuffer();
    sb.write(runtimeType);
    if (message.isNotEmpty) {
      sb.write(': $message');
      if (file?.path != null) {
        sb.write(", path = '${file?.path}'");
      }
    } else if (file?.path != null) {
      sb.write(': ${file?.path}');
    }
    return sb.toString();
  }
}

class FileNotFoundException extends UnsupportedFileException {
  /// Will be thrown, if a [File] is passed, which is not found on
  /// the file system.
  FileNotFoundException(File? file)
      : super(
            'The transferred file could not be found. '
            'Make sure that the file ${file?.path} exists.',
            file);
}

class UnsupportedFileExtensionException extends UnsupportedFileException {
  /// Will be thrown, if a [File] is passed, which has no json extension.
  UnsupportedFileExtensionException(File? file)
      : super(
            'The file extension ${file?.path?.split('.')?.last} is not '
            'supported. Make sure that the transferred file is a valid Json '
            'file. A Google Service account Json can be created via '
            'https://console.cloud.google.com/apis/credentials.',
            file);
}
