import 'package:serverpod/serverpod.dart';

class TestEndPoint extends Endpoint {
  Future<String> getTest(Session session, {String version = '1.0'}) async {
    return 'Testing Serverpod app $version';
  }
}
