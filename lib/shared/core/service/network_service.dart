import 'package:clean_architecture/shared/core/exceptions/failure.dart';
import 'package:clean_architecture/shared/core/model/core_response.dart';
import 'package:clean_architecture/shared/core/service/dio_manager.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

/// Network service interface
abstract class NetworkService {
  /// [NetworkService] is a base class for all network services.
  NetworkService(this.dioManager);

  /// [dioManager] is a dio instance.
  final DioManager dioManager;

  /// [send] is a method that is used to initialize the service.
  Future<Either<Failure, CoreResponse<dynamic>>> send(
    String path, {
    required RequestType method,
    String? urlSuffix,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });
}

/// [RequestType] is an enum that contains all request types.
enum RequestType {
  /// [RequestType.get] is a get request.
  get,

  /// [RequestType.post] is a post request.
  post,

  /// [RequestType.delete] is a patch request.
  delete,

  /// [RequestType.put] is a put request.
  put,

  /// [RequestType.download] is a download request.
  download,

  /// [RequestType.upload] is a upload request.
  upload,
}
