import 'package:clean_architecture/shared/core/page_status/page_status.dart';
import 'package:flutter/material.dart';

/// [PageStatusExtension] is builds a widget based on the [PageStatus].
extension PageStatusExtension on PageStatus {
  /// [builder] builds a widget based on the [PageStatus].
  Widget? builder({
    Widget? initial,
    Widget? onLoading,
    Widget? onEmpty,
    Widget? onError,
    Widget? onLoaded,
  }) {
    switch (this) {
      case PageStatus.initial:
        return onLoading;
      case PageStatus.loading:
        return onLoading;
      case PageStatus.empty:
        return onEmpty;
      case PageStatus.error:
        return onError;
      case PageStatus.loaded:
        return onLoaded;
    }
  }
}
