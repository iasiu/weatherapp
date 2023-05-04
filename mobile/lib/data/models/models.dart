// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherapp/data/models/utils.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required String name,
    required String country,
    @JsonKey(name: 'localtime', fromJson: dateTimeFromString)
        required DateTime localTime,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class WeatherCondition with _$WeatherCondition {
  const factory WeatherCondition({
    required String text,
    required String icon,
    required int code,
  }) = _WeatherCondition;

  const WeatherCondition._();

  factory WeatherCondition.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionFromJson(json);

  String get iconUrl => 'http:$icon';
}

@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    @JsonKey(name: 'temp_c') required double tempC,
    @JsonKey(name: 'wind_kph') required double windKph,
    @JsonKey(name: 'cloud') required int cloudCoverage,
    required int humidity,
    required WeatherCondition condition,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}

@freezed
class ForecastWeatherHour with _$ForecastWeatherHour {
  const factory ForecastWeatherHour({
    @JsonKey(name: 'time', fromJson: dateTimeFromString)
        required DateTime dateTime,
    @JsonKey(name: 'temp_c') required double tempC,
    @JsonKey(name: 'cloud') required double cloudCoverage,
    @JsonKey(name: 'wind_mph') required double wind,
  }) = _ForecastWeatherHour;

  factory ForecastWeatherHour.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherHourFromJson(json);
}

@freezed
class ForecastWeatherDay with _$ForecastWeatherDay {
  const factory ForecastWeatherDay({
    @JsonKey(name: 'avgtemp_c') required double avgTempC,
    @JsonKey(name: 'maxtemp_c') required double maxTempC,
    @JsonKey(name: 'mintemp_c') required double minTempC,
    @JsonKey(name: 'maxwind_kph') required double maxWindKph,
  }) = _ForecastWeatherDay;

  factory ForecastWeatherDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherDayFromJson(json);
}

@freezed
class ForecastWeatherDayDTO with _$ForecastWeatherDayDTO {
  const factory ForecastWeatherDayDTO({
    @JsonKey(name: 'date', fromJson: dateFromString) required DateTime date,
    required ForecastWeatherDay day,
    @JsonKey(name: 'hour') required List<ForecastWeatherHour> hours,
  }) = _ForecastWeatherDayDTO;

  factory ForecastWeatherDayDTO.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherDayDTOFromJson(json);
}

@freezed
class ForecastWeatherDTO with _$ForecastWeatherDTO {
  const factory ForecastWeatherDTO({
    @JsonKey(name: 'forecastday')
        required List<ForecastWeatherDayDTO> forecastDays,
  }) = _ForecastWeatherDTO;

  factory ForecastWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherDTOFromJson(json);
}

@freezed
class CurrentWeatherDTO with _$CurrentWeatherDTO {
  const factory CurrentWeatherDTO({
    required Location location,
    @JsonKey(name: 'current') required CurrentWeather weather,
  }) = _CurrentWeatherDTO;

  factory CurrentWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherDTOFromJson(json);
}

@freezed
class WeatherDTO with _$WeatherDTO {
  const factory WeatherDTO({
    required Location location,
    required CurrentWeather current,
    required ForecastWeatherDTO forecast,
  }) = _WeatherDTO;

  factory WeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherDTOFromJson(json);
}
