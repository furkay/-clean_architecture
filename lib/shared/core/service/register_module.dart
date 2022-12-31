import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

/// RegisterModule
@module
abstract class RegisterModule {
  /// Register Dio
  @singleton
  Dio dio() {
    return Dio();
  }
}
