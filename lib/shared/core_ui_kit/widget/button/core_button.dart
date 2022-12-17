import 'package:flutter/material.dart';

/// [CoreButton] is a button widget that can be used in any application.
@immutable
class CoreButton extends StatelessWidget {
  /// [CoreButton._] is a private constructor.
  const CoreButton._(this.widget);

  /// [CoreButton.classic] is [ElevatedButton].
  CoreButton.classic(VoidCallback onPressed, {String? text})
      : this._(ElevatedButton(onPressed: onPressed, child: Text(text ?? '')));

  /// [CoreButton.classicIcon] is [ElevatedButton.icon] with [Icon].
  CoreButton.classicIcon(VoidCallback onPressed, {String? text, IconData? icon})
      : this._(
          ElevatedButton.icon(
            onPressed: onPressed,
            icon: Icon(icon),
            label: Text(text ?? ''),
          ),
        );

  /// [CoreButton.text] is [TextButton].
  CoreButton.text(VoidCallback onPressed, {String? text})
      : this._(TextButton(onPressed: onPressed, child: Text(text ?? '')));

  /// [CoreButton.textIcon] is [TextButton.icon] with [Icon].
  CoreButton.textIcon(VoidCallback onPressed, {String? text, IconData? icon})
      : this._(
          TextButton.icon(
            onPressed: onPressed,
            icon: Icon(icon),
            label: Text(text ?? ''),
          ),
        );

  /// [CoreButton.icon] is [IconButton].
  CoreButton.icon(VoidCallback onPressed, {IconData? icon})
      : this._(
          IconButton(
            onPressed: onPressed,
            icon: Icon(icon),
          ),
        );

  /// [widget] is button type.
  final Widget widget;

  /// [build] is build method.
  @override
  Widget build(BuildContext context) {
    return widget;
  }
}
