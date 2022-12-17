import 'package:clean_architecture/features/post/data/data_sources/post_data_source_impl.dart';
import 'package:clean_architecture/features/post/data/services/post_service.dart';
import 'package:clean_architecture/shared/core/service/dio_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../post_dummy.dart' as post_dummy;

void main() {
  final dioManager = DioManager();
  final dioAdapter = DioAdapter(dio: dioManager.dio);
  final postDataSource = PostDataSourceImpl(PostService(dioManager));
  setUp(() {
    dioAdapter.onGet(
      postDataSource.getPostsPath,
      (server) => server.reply(200, post_dummy.postDummyMap),
    );
  });
  test('should return [List<PostDto>>] of posts', () async {
    final posts = await postDataSource.getPosts();
    expect(posts.isRight(), true);
  });
}
