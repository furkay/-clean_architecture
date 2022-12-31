import 'package:clean_architecture/features/post/data/data_sources/post_data_source_impl.dart';
import 'package:clean_architecture/features/post/data/dtos/post_dto.dart';
import 'package:clean_architecture/features/post/data/repositories/post_repository_impl.dart';
import 'package:clean_architecture/features/post/data/services/post_client.dart';
import 'package:clean_architecture/features/post/domain/models/post.dart';
import 'package:clean_architecture/features/post/domain/repositories/post_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../post_dummy.dart' as post_dummy;

class MockPostClient extends Mock implements PostClient {}

void main() {
  late PostRepository repository;
  setUp(() async {
    final client = MockPostClient();
    repository = PostRepositoryImpl(PostDataSourceImpl(client));
    when(client.getPosts).thenAnswer(
      (_) => Future.value(
        post_dummy.postDummyMap.map(PostDto.fromJson).toList(),
      ),
    );
  });

  group('post repository test', () {
    test('should return [List<Post>>] of posts, PostRepository', () async {
      final posts = await repository.getPosts();
      expect(posts.isRight(), true);
      expect(posts.fold((l) => l, (r) => r) is List, true);
      expect(
        posts.fold((l) => l, (r) => r.first),
        Post.fromDto(PostDto.fromJson(post_dummy.postDummyMap.first)),
      );
    });
  });
}
