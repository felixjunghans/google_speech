import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:google_speech/exception.dart';
import 'package:google_speech/speech_client_authenticator.dart';
import 'package:mockito/mockito.dart';

void main() {
  // Test the creation of a service account.
  group('Test Service Account creation', () {
    var jsonFile = _FileMock();
    final json = r'''{
        "type": "service_account",
        "project_id": "speech-example-123456789",
        "private_key_id": "speech-example-123456789",
        "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCwwWWvrJ8RR8aj\nAsgpnUCyDiRCnXpupdDzj8dMphn/OMQ86Ev4pFoTFkq5k9onTl/njOVBkcauxlbr\nWrgFrw5Dnn291wg8aXIOu7/TdQgGIBGHqBGmA9WXXpUh7Vt2f/IGvtAUKX5aiObt\nGRi1IQJDLXN9QUFRTmmIzp2O2kA0/vL/WYxLxyrgZ/4FOMO10Fb2rvO2IRUcD5LR\nEejXJp/zYVZrPq5tG3X610xtYzJXa10MhPJ+UEMhxZH1FP9zT14+YeynlCezEuZ1\n0NpKmJZHo6ZuKT/PRamB6zqj/LzzcknYec7CVQbis5B+eZXFu7Zn4ny5Wh5eu/Q5\nwaL/A4BHAgMBAAECggEASSCaW2YFoXaandKG0YC3xXLIWa8heimsGzh+8h0+YDMy\nLSjGVaZZhdARNloPRXfNgdTu/IO9OY3hZBnyTJeyRROLXkFarPPLNoFCyc9/dFlM\nJ13Hf3HSqn99H749uvcQQO4s1EqedgJx1+IsMLPpZbWmNEoNJgBU9T7WPMXbDpFC\nEj0e8XqGhY0KSJ+zlX86lub7gUm+smw32d9Yuiz6Rr/LtHKrGNWXuhOnU1fr9Ri8\nr7PXQo8Qn0PQ883LV398V+ecAxF+hpKrD8d5lkxqGQkHr0j4T1YdyilDvoiai2eG\nCt+V+6fdE95FU6262+ff8vCDPjZknfObhxS0Ikiq4QKBgQD3x9mhKDxCcufI5Ydd\nZq+HpdlVTCCVYV/HiNXJoVN0JmSuUcn+svIIgLnqY6FQ9dcoeNBY7aKp1y0qb4eK\nb9zRJp9um1Y9YkKeCDpMta1eAQT7gnZHmmFvgPB0dh85uAe/R5H3WH9FqI0wfUJX\nWDQSGGJVkMMoimouKV6YOBDnrwKBgQC2nmbswdOvFCFvIuJmURDCHXnhVW0iY0lU\nwFInKiOSVtpNwn63vQaLhfqzOgLYZuqUT5HdUH2uTij9wqH9wO7SvWw8C2WS7GZy\nIw0ITlVSK4L/NmUeKLUyWn67JzvmVMtq4FApygvnrQqpetoDI0/TCfMEmGttNLdZ\n/R+xaY/+6QKBgQDFdGuHs8qhoXP4coE2+1eyH4ZcJPhqUljDZ9YGghtBGj9tcxwn\nbm7WO87sbEzneaHmTLCrzWOtOR5zDMHUnmQ4ADFZMUy+SgmQajobW0Q2/1T7IPIl\nCW/QLc5w4JjtpCv4UI6Pr+RsnG83TvqJJG8KZIgoa9459mO7OZh6cWN3XQKBgFj9\nV6qHyV/Hr4M4vJqfZksxkfL8bfIT7+gcz+vF3Q+ywy6hWJ6wvj+/SiuMWVaa0DT1\nkV8HmjcWX2NJNScynS6Un+mipBy0ljeIXRFvGqSwD2XOW/gWXjXrY1ZQCCB1saqj\nJG04yBRdfpSYCST+UCfG8WWL4M2WosJ3Vrpddo4BAoGAL9MXzNflcw/PId0/eX5K\nyICGilDBAgBae4AwCNJ3qd+rpijbwI2UIkDXJqQ4SsbHLJNsAS6sG77QI43iAPLF\nkvdY30Y3GYFrJCDtLItZzJlHO/JeFcUjIXqKbPQGZ3V6maAUPYTOOXlNPvxL760S\n4JRJdyvW6Hn5GCZbOnKJeVw=\n-----END PRIVATE KEY-----\n",
        "client_email": "speech@speech-example-123456789.iam.gserviceaccount.com",
        "client_id": "speech-example-123456789",
        "auth_uri": "https://accounts.google.com/o/oauth2/auth",
        "token_uri": "https://oauth2.googleapis.com/token",
        "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
        "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/speech%40speech-example-123456789.iam.gserviceaccount.com"
      }''';

    setUpAll(() {
      when(jsonFile.existsSync()).thenReturn(true);
      when(jsonFile.path).thenReturn('test.json');
    });

    test(
        'Tests if a service account is created when a valid Json string is passed.',
        () {
      final serviceAccount = ServiceAccount.fromString(json);
      expect(serviceAccount.projectId, 'speech-example-123456789');
    });

    test('Tests if a service account is created when read Json from a file',
        () {
      when(jsonFile.readAsStringSync()).thenReturn(json);
      final serviceAccount = ServiceAccount.fromFile(jsonFile);
      expect(serviceAccount.projectId, 'speech-example-123456789');
    });

    test('Test if creating a service account fails if no Json file is passed.',
        () {
      when(jsonFile.path).thenReturn('test.txt');
      expect(() => ServiceAccount.fromFile(jsonFile),
          throwsA(isInstanceOf<UnsupportedFileExtensionException>()));
    });

    test('Test if creating a service account fails if no Json does not exists.',
        () {
      when(jsonFile.existsSync()).thenReturn(false);
      expect(() => ServiceAccount.fromFile(jsonFile),
          throwsA(isInstanceOf<FileNotFoundException>()));
    });
  });
}

class _FileMock extends Mock implements File {}
