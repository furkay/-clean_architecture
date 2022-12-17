import 'package:clean_architecture/features/post/data/dtos/post_dto.dart';
import 'package:clean_architecture/shared/core/exceptions/failure.dart';
import 'package:dartz/dartz.dart';

/// PostDataSource
abstract class PostDataSource {
  /// Get All posts path
  String getPostsPath = '/posts';

  /// Get posts
  Future<Either<Failure, List<PostDto>>> getPosts();
}
