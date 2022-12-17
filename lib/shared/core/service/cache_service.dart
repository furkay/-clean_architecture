import 'package:hive_flutter/hive_flutter.dart';

/// [CacheService<T>] is used to define the cache service.
abstract class CacheService<T> {
  /// [boxKey] is used to define the box key.
  String boxKey = T.toString();

  /// [Box] is used to define the box.
  Box<T> get box => Hive.box<T>(T.toString());

  /// [init] is used to define the init.
  Future<void> init();

  /// [setValue] is used to define the set.
  Future<void> setValue(String key, T value);

  /// [getValue] is used to define the get.
  Future<T?> getValue(String key);

  /// [removeValue] is used to define the remove.
  Future<void> removeValue(String key);
}
