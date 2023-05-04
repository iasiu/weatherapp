import 'dart:math';

import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/data/models/models.dart';
import 'package:weatherapp/extensions/extensions.dart';
import 'package:weatherapp/widgets/widgets.dart';

class TemperatureChart extends StatelessWidget {
  const TemperatureChart({
    super.key,
    required this.minY,
    required this.maxY,
    required this.hours,
    required this.color,
  });

  final double minY;
  final double maxY;
  final List<ForecastWeatherHour> hours;
  final Color color;

  double get horizontalInterval => max(((maxY - minY) / 4).floorToDouble(), 2);

  SideTitles get leftTitles => SideTitles(
        showTitles: true,
        reservedSize: 44,
        interval: horizontalInterval,
        getTitlesWidget: leftTitleWidgets,
      );

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    if (value < maxY && value > minY) {
      return AppText(
        '${value.toStringAsFixed(0)}°C',
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      );
    }
    return const SizedBox.shrink();
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    if (0 <= value && value <= 11) {
      final hour = hours[value.toInt()].dateTime.hour;

      return AppText(
        NumberFormat('00').format(hour),
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      );
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    final spots = hours
        .mapIndexed(
          (i, e) => FlSpot(i.toDouble(), e.tempC),
        )
        .toList();

    return Container(
      width: double.maxFinite,
      height: 200,
      padding: const EdgeInsets.only(top: 8, right: 8),
      color: context.colors.white,
      child: LineChart(
        LineChartData(
          minX: -0.2,
          maxX: 11.2,
          minY: minY,
          maxY: maxY,
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: bottomTitles,
            ),
            leftTitles: AxisTitles(
              sideTitles: leftTitles,
            ),
            rightTitles: AxisTitles(),
            topTitles: AxisTitles(),
          ),
          borderData: FlBorderData(
            show: false,
          ),
          gridData: FlGridData(
            drawVerticalLine: false,
            checkToShowHorizontalLine: (_) => true,
            horizontalInterval: horizontalInterval,
          ),
          lineTouchData: LineTouchData(
            enabled: false,
          ),
          lineBarsData: [
            LineChartBarData(
              isStrokeCapRound: true,
              barWidth: 4,
              color: color,
              isCurved: true,
              curveSmoothness: 0.4,
              dotData: FlDotData(show: false),
              spots: spots,
            )
          ],
        ),
      ),
    );
  }
}
