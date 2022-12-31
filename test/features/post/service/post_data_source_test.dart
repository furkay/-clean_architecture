import 'package:clean_architecture/features/post/data/data_sources/post_data_source_impl.dart';
import 'package:clean_architecture/features/post/data/dtos/post_dto.dart';
import 'package:clean_architecture/features/post/data/services/post_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../post_dummy.dart' as post_dummy;

class MockPostClient extends Mock implements PostClient {}

void main() {
  late PostDataSourceImpl postDataSource;
  setUp(() {
    final client = MockPostClient();
    postDataSource = PostDataSourceImpl(client);
    when(client.getPosts).thenAnswer(
      (_) => Future.value(
        post_dummy.postDummyMap.map(PostDto.fromJson).toList(),
      ),
    );
  });
  test('should return [List<PostDto>>] of posts, PostDataSource', () async {
    final posts = await postDataSource.getPosts();
    expect(posts.isRight(), true);
  });
}
