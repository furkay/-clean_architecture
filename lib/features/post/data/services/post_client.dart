import 'package:clean_architecture/features/post/data/dtos/post_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'post_client.g.dart';

@RestApi(
  baseUrl: 'https://jsonplaceholder.typicode.com',
)
@injectable

/// PostClient
abstract class PostClient {
  @factoryMethod

  /// PostClient
  factory PostClient(
    Dio dio, {
    @factoryParam String? baseUrl,
  }) = _PostClient;

  /// Get posts
  @GET('/posts')
  Future<List<PostDto>> getPosts();
}
