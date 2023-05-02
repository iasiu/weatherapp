import 'package:weatherapp/data/models/models.dart';
import 'package:weatherapp/data/weather_client.dart';

class WeatherRepository {
  WeatherRepository({required WeatherClient weatherClient})
      : _client = weatherClient;

  final WeatherClient _client;

  Future<CurrentWeatherDTO> getCurrent({required String query}) async {
    final json = await _client.getCurrent(query: query);

    return CurrentWeatherDTO.fromJson(json);
  }

  Future<WeatherDTO> getForecast({required String query}) async {
    final json = await _client.getForecast(query: query);

    return WeatherDTO.fromJson(json);
  }
}
