import 'package:clean_architecture/common/di/injectable.dart';
import 'package:clean_architecture/features/post/data/data_sources/post_data_source.dart';
import 'package:clean_architecture/features/post/data/dtos/post_dto.dart';
import 'package:clean_architecture/features/post/domain/models/post.dart';
import 'package:clean_architecture/features/post/domain/repositories/post_repository.dart';
import 'package:clean_architecture/shared/core/service/dio_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../../../common/data/common_data.dart' as common_data;
import '../post_dummy.dart' as post_dummy;

void main() {
  late PostRepository repository;

  setUp(() async {
    await common_data.commonInit();
    repository = sl<PostRepository>();
    final dioAdapter = DioAdapter(dio: sl<DioManager>().dio);
    final path = sl<PostDataSource>().getPostsPath;
    dioAdapter.onGet(
      path,
      (server) => server.reply(200, post_dummy.postDummyMap),
    );
  });
  group('post repository test', () {
    test('should return [List<Post>>] of posts', () async {
      final posts = await repository.getPosts();
      expect(posts.isRight(), true);
      expect(posts.fold((l) => l, (r) => r) is List, true);
      expect(
        posts.fold((l) => l, (r) => r.first),
        Post.fromDto(PostDto.fromMap(post_dummy.postDummyMap.first)),
      );
    });
  });
}
