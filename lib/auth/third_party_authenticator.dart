import 'package:googleapis_auth/src/access_credentials.dart';
import 'package:grpc/grpc.dart';
import 'package:http/http.dart' as http;

/// Class for authenticating with a third party.
class ThirdPartyAuthenticator extends HttpBasedAuthenticator {
  final Future<AccessCredentials> Function() obtainCredentialsFromThirdParty;

  ThirdPartyAuthenticator({
    required this.obtainCredentialsFromThirdParty,
  });

  @override
  Future<AccessCredentials> obtainCredentialsWithClient(http.Client client, String uri) {
    return obtainCredentialsFromThirdParty();
  }
}
