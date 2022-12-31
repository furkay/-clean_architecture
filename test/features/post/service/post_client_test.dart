import 'dart:convert';

import 'package:clean_architecture/features/post/data/services/post_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mock_web_server/mock_web_server.dart';
import '../post_dummy.dart' as post_dummy;

late MockWebServer _server;
late PostClient _client;

void main() {
  setUpAll(() async {
    _server = MockWebServer();
    await _server.start();

    final dio = Dio();

    dio.interceptors.add(LogInterceptor(responseBody: true));
    _client = PostClient(dio, baseUrl: _server.url);
  });

  group('post group', () {
    test(
      'should return [List<PostDto>>] of posts, PostClient',
      () async {
        _server.enqueue(
          body: jsonEncode(post_dummy.postDummyMap),
          headers: {'content-type': 'application/json'},
        );

        final models = await _client.getPosts();
        expect(models, isNotNull);
      },
    );

    test(
      'should return Http status error [400] of DioError',
      () async {
        _server.enqueue(
          body: '{"exception":"Error"}',
          httpCode: 400,
          headers: {'content-type': 'application/json'},
        );

        expect(
          () => _client.getPosts(),
          throwsA(
            isA<DioError>().having(
              (p0) => p0.error,
              'Error Message',
              'Http status error [400]',
            ),
          ),
        );
      },
    );
  });
}
