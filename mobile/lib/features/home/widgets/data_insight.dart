import 'package:flutter/material.dart';
import 'package:weatherapp/extensions/extensions.dart';
import 'package:weatherapp/widgets/text.dart';

enum DataInsightType {
  sunrise,
  sunset,
  wind,
  rain,
  clouds,
  uv;
}

class DataInsight extends StatelessWidget {
  const DataInsight({
    super.key,
    required this.data,
    required this.icon,
  });

  final String data;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: context.colors.primary,
          size: 32,
        ),
        const SizedBox(width: 8),
        AppText(
          data,
          style: context.textTheme.bodyLarge,
          fontWeight: FontWeight.bold,
        )
      ],
    );
  }
}
