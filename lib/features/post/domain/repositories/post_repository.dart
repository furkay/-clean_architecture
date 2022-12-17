import 'package:clean_architecture/features/post/domain/models/post.dart';
import 'package:clean_architecture/shared/core/exceptions/failure.dart';
import 'package:clean_architecture/shared/core/repository.dart';
import 'package:dartz/dartz.dart';

/// PostRepository
abstract class PostRepository extends CoreRepository {
  /// getPosts method
  Future<Either<Failure, List<Post>>> getPosts();
}
