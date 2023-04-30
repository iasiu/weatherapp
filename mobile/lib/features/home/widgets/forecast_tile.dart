import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/data/models/models.dart';
import 'package:weatherapp/extensions/extensions.dart';
import 'package:weatherapp/features/home/widgets/data_insight.dart';
import 'package:weatherapp/widgets/widgets.dart';

class ForecastTile extends StatelessWidget {
  const ForecastTile({
    super.key,
    required this.forecast,
  });

  final ForecastWeatherDayDTO forecast;

  @override
  Widget build(BuildContext context) {
    final minTemperature = forecast.day.minTempC;
    final maxTemperature = forecast.day.maxTempC;
    final wind = double.parse(
      forecast.hours.map((e) => e.wind).average.toStringAsFixed(1),
    );
    final clouds = forecast.hours.map((e) => e.cloudCoverage).average.round();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '${DateFormat.EEEE().format(forecast.date)} - ',
                style: context.textTheme.titleMedium,
              ),
              TextSpan(
                text: DateFormat.MMMMd().format(forecast.date),
                style: context.textTheme.titleMedium!.copyWith(
                  color: context.colors.textLight,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        AppTile(
          child: Column(
            children: [
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DataInsight(
                    data: context.l10n.forecast_tile_temperature(
                      minTemperature,
                      maxTemperature,
                    ),
                    icon: Icons.device_thermostat,
                  ),
                  DataInsight(
                    data: context.l10n.home_load_successful_body_wind(wind),
                    icon: Icons.air,
                  ),
                  DataInsight(
                    data: context.l10n.home_load_successful_body_clouds(clouds),
                    icon: Icons.cloud_outlined,
                  ),
                ],
              ),
              const SizedBox(height: 4),
            ],
          ),
        ),
      ],
    );
  }
}
