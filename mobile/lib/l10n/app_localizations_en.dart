import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get home_screen_search_for_location => 'Search for location';

  @override
  String home_screen_could_not_load(String query) {
    return 'Could not load results for \"$query\" please try again';
  }

  @override
  String home_load_successful_body_location(String name, String country) {
    return '$name, $country';
  }

  @override
  String home_load_successful_body_temperature(double temperature) {
    return '$temperature°C';
  }

  @override
  String home_load_successful_body_wind(double wind) {
    return '$wind km/h';
  }

  @override
  String home_load_successful_body_clouds(int clouds) {
    return '$clouds %';
  }

  @override
  String home_load_successful_body_humidity(int humidity) {
    return '$humidity %';
  }
}
