import 'package:clean_architecture/features/post/data/data_sources/post_data_source.dart';
import 'package:clean_architecture/features/post/data/dtos/post_dto.dart';
import 'package:clean_architecture/features/post/data/services/post_client.dart';
import 'package:clean_architecture/shared/core/exceptions/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PostDataSource)

/// PostDataSourceImpl
class PostDataSourceImpl extends PostDataSource {
  /// PostDataSourceImpl
  PostDataSourceImpl(this._postService);
  final PostClient _postService;
  @override
  Future<Either<Failure, List<PostDto>>> getPosts() async {
    try {
      final response = await _postService.getPosts();
      return Right(response);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
