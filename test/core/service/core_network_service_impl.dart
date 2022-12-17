import 'package:clean_architecture/shared/core/model/core_response.dart';
import 'package:clean_architecture/shared/core/service/network_service.dart';
import 'package:dio/dio.dart';

class CoreNetworkServiceImpl implements NetworkService {
  CoreNetworkServiceImpl(this.dio);
  @override
  final Dio dio;

  @override
  Future<CoreResponse> delete(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
  }) async {
    final response =
        await dio.delete(path, queryParameters: queryParameters, data: data);
    return CoreResponse(
      code: response.statusCode ?? 400,
      jsonData: response.data,
    );
  }

  @override
  Future<CoreResponse> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final value = await dio.get<Response>(path);
    return CoreResponse(jsonData: value.data, code: value.statusCode ?? 400);
  }

  @override
  Future<void> init() {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  Future<CoreResponse> post(String path,
      {Map<String, dynamic>? queryParameters, data}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<CoreResponse> put(String path,
      {Map<String, dynamic>? queryParameters, data}) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
