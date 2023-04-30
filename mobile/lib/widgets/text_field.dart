import 'package:flutter/material.dart';
import 'package:weatherapp/extensions/extensions.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    this.hasError = false,
    this.hintText,
    this.trailling,
    this.autofillHints,
    this.keyboardType,
    this.textInputAction,
    this.focusNode,
    this.onSubmitted,
  });

  final TextEditingController controller;
  final String? hintText;
  final bool hasError;
  final Widget? trailling;
  final Iterable<String>? autofillHints;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      onSubmitted: onSubmitted,
      autocorrect: false,
      cursorColor: context.colors.text,
      autofillHints: autofillHints,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      style: context.textTheme.titleLarge,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: context.colors.textLight.withOpacity(0.2),
        hintStyle: context.textTheme.titleMedium!.copyWith(
          color: context.colors.textLight,
        ),
        alignLabelWithHint: true,
        errorText: hasError ? '' : null,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        errorStyle: const TextStyle(height: 0),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 12,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: context.colors.error,
            width: 2,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: context.colors.error,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        suffixIcon: trailling,
      ),
    );
  }
}
