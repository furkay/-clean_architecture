import 'package:clean_architecture/common/di/injectable.dart';
import 'package:injectable/injectable.dart';

const String mockUrl = 'https://example.com';

Future<void> commonInit() async {
  await configureDependencies(environment: Environment.test);
}
