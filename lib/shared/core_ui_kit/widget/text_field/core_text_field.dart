import 'package:flutter/material.dart';

/// [CoreTextField] is a widget that displays a text field.
@immutable
class CoreTextField extends StatelessWidget {
  const CoreTextField._({
    this.controller,
    this.isForm = true,
    this.label,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.initialValue,
    this.enabled,
    this.expands,
    this.maxLines,
  });

  ///[CoreTextField.basic] is a type of text field that is not part of a form.
  const CoreTextField.basic({
    TextEditingController? controller,
    String? label,
    String? hint,
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? Function(String?)? onChanged,
    String? Function(String?)? validator,
    String? initialValue,
    bool? enabled,
    bool? expands,
  }) : this._(
          isForm: false,
          controller: controller,
          label: label,
          hint: hint,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          obscureText: false,
          maxLines: 1,
          onChanged: onChanged,
          validator: validator,
          initialValue: initialValue,
          enabled: enabled,
          expands: expands,
        );

  /// [CoreTextField.form] is a type of text field that is part of a form.
  const CoreTextField.form({
    TextEditingController? controller,
    String? label,
    String? hint,
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? Function(String?)? onChanged,
    String? Function(String?)? validator,
    String? initialValue,
    bool? enabled,
    bool? expands,
  }) : this._(
          isForm: true,
          controller: controller,
          label: label,
          hint: hint,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          obscureText: false,
          maxLines: 1,
          onChanged: onChanged,
          validator: validator,
          initialValue: initialValue,
          enabled: enabled,
          expands: expands,
        );

  /// [CoreTextField.form] is a type of text field that is part of a form.
  const CoreTextField.formArea({
    TextEditingController? controller,
    String? label,
    String? hint,
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? Function(String?)? onChanged,
    String? Function(String?)? validator,
    String? initialValue,
    bool? enabled,
    bool? expands,
    int? maxLines = 3,
  }) : this._(
          isForm: true,
          controller: controller,
          label: label,
          hint: hint,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          obscureText: false,
          maxLines: maxLines,
          onChanged: onChanged,
          validator: validator,
          initialValue: initialValue,
          enabled: enabled,
          expands: expands,
        );

  /// [CoreTextField.formPassword] is password field.
  CoreTextField.formPassword({
    TextEditingController? controller,
    String? label,
    String? hint,
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? Function(String?)? onChanged,
    String? Function(String?)? validator,
    String? initialValue,
    bool? enabled,
    bool? expands,
    required bool Function() obscureText,
  }) : this._(
          isForm: true,
          controller: controller,
          label: label,
          hint: hint,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          obscureText: obscureText(),
          maxLines: 1,
          onChanged: onChanged,
          validator: validator,
          initialValue: initialValue,
          enabled: enabled,
          expands: expands,
        );

  /// [isForm] flag to determine whether to use [TextFormField] or [TextField].
  final bool isForm;

  /// [controller] is a controller for [TextFormField] or [TextField].
  final TextEditingController? controller;

  /// [validator] is a label for [TextFormField] or [TextField].
  final String? Function(String?)? validator;

  /// [onChanged] is a callback for [TextFormField] or [TextField].
  final String? Function(String?)? onChanged;

  /// [hint] is a hint for [TextFormField] or [TextField].
  final String? hint;

  /// [label] is a label for [TextFormField] or [TextField].

  final String? label;

  /// [initialValue] is a initial value for [TextFormField] or [TextField].

  final String? initialValue;

  /// [obscureText] is a to obscureText for [TextFormField] or [TextField].
  final bool? obscureText;

  /// [enabled] is a to enabled for [TextFormField] or [TextField].
  final bool? enabled;

  /// [expands] is a to expands for [TextFormField] or [TextField].
  final bool? expands;

  /// [maxLines] is a to maxLines for [TextFormField] or [TextField].
  final int? maxLines;

  /// [keyboardType] is a to keyboardType for [TextFormField] or [TextField].
  final TextInputType? keyboardType;

  /// [prefixIcon] is a prefix icon for [TextFormField] or [TextField].
  final Widget? prefixIcon;

  /// [suffixIcon] is a suffix icon for [TextFormField] or [TextField].
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return isForm
        ? TextFormField(
            controller: controller,
            decoration: InputDecoration(
              labelText: label,
              hintText: hint,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
            obscureText: obscureText ?? false,
            onChanged: onChanged,
            validator: validator,
            keyboardType: keyboardType,
            initialValue: initialValue,
            enabled: enabled,
            expands: expands ?? false,
            maxLines: maxLines ?? 1,
          )
        : TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: label,
              hintText: hint,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
            obscureText: obscureText ?? false,
            onChanged: onChanged,
            keyboardType: keyboardType,
            enabled: enabled,
            expands: expands ?? false,
            maxLines: maxLines ?? 1,
          );
  }
}
