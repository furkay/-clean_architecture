import 'package:clean_architecture/shared/core/exceptions/failure.dart';
import 'package:clean_architecture/shared/core/model/core_response.dart';
import 'package:clean_architecture/shared/core/service/network_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable

/// PostService
class PostService extends NetworkService {
  /// PostService
  PostService(super.dioManager);

  @override
  Future<Either<Failure, CoreResponse<List<Map<String, Object?>>>>> send(
    String path, {
    required RequestType method,
    String? urlSuffix,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await dioManager.dio.request<List<dynamic>>(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      final responseData = response.data;
      return Right(
        CoreResponse<List<Map<String, Object?>>>(
          code: response.statusCode ?? 200,
          jsonData: responseData != null
              ? List<Map<String, Object?>>.from(responseData)
              : List<Map<String, Object?>>.empty(),
        ),
      );
    } on DioError catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
