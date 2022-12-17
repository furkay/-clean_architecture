import 'package:clean_architecture/features/post/data/data_sources/post_data_source.dart';
import 'package:clean_architecture/features/post/domain/models/post.dart';
import 'package:clean_architecture/features/post/domain/repositories/post_repository.dart';
import 'package:clean_architecture/shared/core/exceptions/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

@immutable
@Injectable(as: PostRepository)

/// PostRepositoryImpl
class PostRepositoryImpl implements PostRepository {
  /// PostRepositoryImpl
  const PostRepositoryImpl(this._postDataSource);
  final PostDataSource _postDataSource;
  @override
  Future<Either<Failure, List<Post>>> getPosts() async {
    final postDtos = await _postDataSource.getPosts();
    return postDtos.fold(
      Left.new,
      (r) => Right(
        r.map(Post.fromDto).toList(),
      ),
    );
  }
}
