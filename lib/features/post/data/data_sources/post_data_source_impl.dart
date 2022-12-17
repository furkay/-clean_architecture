import 'package:clean_architecture/features/post/data/data_sources/post_data_source.dart';
import 'package:clean_architecture/features/post/data/dtos/post_dto.dart';
import 'package:clean_architecture/features/post/data/services/post_service.dart';
import 'package:clean_architecture/shared/core/exceptions/failure.dart';
import 'package:clean_architecture/shared/core/service/network_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PostDataSource)

/// PostDataSourceImpl
class PostDataSourceImpl extends PostDataSource {
  /// PostDataSourceImpl
  PostDataSourceImpl(this._postService);
  final PostService _postService;
  @override
  Future<Either<Failure, List<PostDto>>> getPosts() async {
    final response = await _postService.send(
      getPostsPath,
      method: RequestType.get,
    );
    return response.fold(
      Left.new,
      (r) => Right(
        (r.jsonData).map(PostDto.fromMap).toList(),
      ),
    );
  }
}
