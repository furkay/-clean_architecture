import 'package:clean_architecture/features/post/domain/models/post.dart';
import 'package:clean_architecture/features/post/domain/repositories/post_repository.dart';
import 'package:clean_architecture/shared/core/exceptions/failure.dart';
import 'package:clean_architecture/shared/core/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@immutable
@injectable

/// GetPostUseCase
class GetPostUseCase
    extends UseCase<Future<Either<Failure, List<Post>>>, NoParams> {
  /// GetPostUseCase
  const GetPostUseCase(this._postRepository) : super(_postRepository);
  final PostRepository _postRepository;
  @override
  Future<Either<Failure, List<Post>>> call(NoParams params) {
    return _postRepository.getPosts();
  }
}
