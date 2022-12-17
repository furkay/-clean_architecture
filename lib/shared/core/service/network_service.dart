import 'package:clean_architecture/shared/core/model/core_response.dart';
import 'package:dio/dio.dart';

/// Network service interface
abstract class NetworkService {
  /// [NetworkService] is a base class for all network services.
  NetworkService(this.dio);

  /// [dio] is used to define the dio.
  final Dio dio;

  /// [init] is used to define the init.
  Future<void> init();

  /// [get] is used to define the get.
  Future<CoreResponse> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  });

  /// [post] is used to define the post.
  Future<CoreResponse> post(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
  });

  /// [put] is used to define the put.
  Future<CoreResponse> put(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
  });

  /// [delete] is used to define the delete.
  Future<CoreResponse> delete(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
  });
}
