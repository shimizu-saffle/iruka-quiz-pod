/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_import
// ignore_for_file: unused_import

import 'dart:typed_data' as typed_data;
import 'package:serverpod/serverpod.dart';

import 'protocol.dart';

import '../endpoints/example_endpoint.dart';
import '../endpoints/test_endpoint.dart';

class Endpoints extends EndpointDispatch {
  @override
  void initializeEndpoints(Server server) {
    var endpoints = <String, Endpoint>{
      'example': ExampleEndpoint()..initialize(server, 'example', null),
      'testEndPoint': TestEndPoint()..initialize(server, 'testEndPoint', null),
    };

    connectors['example'] = EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': MethodConnector(
          name: 'hello',
          params: {
            'name': ParameterDescription(
                name: 'name', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['example'] as ExampleEndpoint).hello(
              session,
              params['name'],
            );
          },
        ),
      },
    );

    connectors['testEndPoint'] = EndpointConnector(
      name: 'testEndPoint',
      endpoint: endpoints['testEndPoint']!,
      methodConnectors: {
        'getTest': MethodConnector(
          name: 'getTest',
          params: {},
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['testEndPoint'] as TestEndPoint).getTest(
              session,
            );
          },
        ),
      },
    );
  }

  @override
  void registerModules(Serverpod pod) {}
}
