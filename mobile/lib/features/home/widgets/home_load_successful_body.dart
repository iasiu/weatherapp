import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/extensions/extensions.dart';
import 'package:weatherapp/features/home/bloc/home_bloc.dart';
import 'package:weatherapp/features/home/widgets/data_insight.dart';
import 'package:weatherapp/widgets/network_image.dart';
import 'package:weatherapp/widgets/widgets.dart';

class HomeLoadSuccessfulBody extends StatelessWidget {
  const HomeLoadSuccessfulBody(
    this.loadSuccessful, {
    super.key,
  });

  final HomeLoadSuccessful loadSuccessful;

  Future<void> onRefresh(BuildContext context) async {
    final block = context.read<HomeBloc>().stream.first;
    context.read<HomeBloc>().add(const HomeEvent.refresh());
    await block;
  }

  @override
  Widget build(BuildContext context) {
    final location = loadSuccessful.location;
    final currentWeather = loadSuccessful.currentWeather;
    final temperature = currentWeather.tempC;
    final wind = currentWeather.windKph;
    final clouds = currentWeather.cloudCoverage;
    final humidity = currentWeather.humidity;
    final condition = currentWeather.condition;

    return RefreshIndicator(
      onRefresh: () => onRefresh(context),
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        physics: const AlwaysScrollableScrollPhysics(),
        child: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              AppText(
                context.l10n.home_load_successful_body_location(
                  location.name,
                  location.country,
                ),
                style: context.textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    context.l10n
                        .home_load_successful_body_temperature(temperature),
                    style: context.textTheme.displayLarge!.copyWith(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AppNetworkImage(
                    condition.iconUrl,
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DataInsight(
                    data: context.l10n.home_load_successful_body_wind(wind),
                    icon: Icons.air,
                  ),
                  DataInsight(
                    data: context.l10n.home_load_successful_body_clouds(clouds),
                    icon: Icons.cloud,
                  ),
                  DataInsight(
                    data: context.l10n.home_load_successful_body_humidity(
                      humidity,
                    ),
                    icon: Icons.water_drop_outlined,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ListTile(
                tileColor: context.colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                title: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.colors.accent,
                          ),
                          margin: const EdgeInsets.all(2) +
                              const EdgeInsets.only(right: 8),
                        ),
                      ),
                      TextSpan(
                        text: condition.text,
                        style: context.textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
