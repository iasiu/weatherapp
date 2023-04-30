import 'package:flutter/material.dart';
import 'package:weatherapp/extensions/extensions.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.data, {
    super.key,
    required this.style,
    this.color,
    this.fontWeight,
    this.maxLines,
    this.overflow,
    this.textAlign,
  });

  final String data;
  final TextStyle? style;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: style!.copyWith(
        color: color ?? context.colors.text,
        fontWeight: fontWeight,
      ),
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}
