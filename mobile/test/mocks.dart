import 'package:mocktail/mocktail.dart';
import 'package:weatherapp/data/weather_repository.dart';
import 'package:weatherapp/utils/date_time_provider.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

class MockDateTimeProvider extends Mock implements DateTimeProvider {}
