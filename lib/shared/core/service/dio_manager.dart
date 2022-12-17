import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton

/// DioManager
class DioManager {
  late Dio _dio;

  /// Dio instance
  Dio get dio => _dio;

  @PostConstruct()

  /// Initialize DioManager
  void init({String? url}) {
    _dio = Dio();
    _dio.options.baseUrl = url ?? 'https://jsonplaceholder.typicode.com';
    _dio.options.connectTimeout = 5000;
    _dio.options.receiveTimeout = 3000;
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }
}
