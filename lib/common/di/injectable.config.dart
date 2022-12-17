// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clean_architecture/features/post/data/data_sources/post_data_source.dart'
    as _i5;
import 'package:clean_architecture/features/post/data/data_sources/post_data_source_impl.dart'
    as _i6;
import 'package:clean_architecture/features/post/data/repositories/post_repository_impl.dart'
    as _i8;
import 'package:clean_architecture/features/post/data/services/post_service.dart'
    as _i4;
import 'package:clean_architecture/features/post/domain/repositories/post_repository.dart'
    as _i7;
import 'package:clean_architecture/features/post/domain/use_cases/get_post_use_case.dart'
    as _i9;
import 'package:clean_architecture/features/post/presentation/cubit/posts_page_cubit.dart'
    as _i10;
import 'package:clean_architecture/shared/core/service/dio_manager.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.DioManager>(_i3.DioManager()..init());
  gh.factory<_i4.PostService>(() => _i4.PostService(gh<_i3.DioManager>()));
  gh.factory<_i5.PostDataSource>(
      () => _i6.PostDataSourceImpl(gh<_i4.PostService>()));
  gh.factory<_i7.PostRepository>(
      () => _i8.PostRepositoryImpl(gh<_i5.PostDataSource>()));
  gh.factory<_i9.GetPostUseCase>(
      () => _i9.GetPostUseCase(gh<_i7.PostRepository>()));
  gh.factory<_i10.PostsPageCubit>(
      () => _i10.PostsPageCubit(gh<_i9.GetPostUseCase>()));
  return getIt;
}
