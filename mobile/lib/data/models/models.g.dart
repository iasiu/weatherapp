// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      name: json['name'] as String,
      country: json['country'] as String,
      localTime: dateTimeFromString(json['localtime'] as String),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'localtime': instance.localTime.toIso8601String(),
    };

_$_WeatherCondition _$$_WeatherConditionFromJson(Map<String, dynamic> json) =>
    _$_WeatherCondition(
      text: json['text'] as String,
      icon: json['icon'] as String,
      code: json['code'] as int,
    );

Map<String, dynamic> _$$_WeatherConditionToJson(_$_WeatherCondition instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };

_$_CurrentWeather _$$_CurrentWeatherFromJson(Map<String, dynamic> json) =>
    _$_CurrentWeather(
      tempC: (json['temp_c'] as num).toDouble(),
      windKph: (json['wind_kph'] as num).toDouble(),
      cloudCoverage: json['cloud'] as int,
      humidity: json['humidity'] as int,
      condition:
          WeatherCondition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CurrentWeatherToJson(_$_CurrentWeather instance) =>
    <String, dynamic>{
      'temp_c': instance.tempC,
      'wind_kph': instance.windKph,
      'cloud': instance.cloudCoverage,
      'humidity': instance.humidity,
      'condition': instance.condition,
    };

_$_ForecastWeatherHour _$$_ForecastWeatherHourFromJson(
        Map<String, dynamic> json) =>
    _$_ForecastWeatherHour(
      dateTime: dateTimeFromString(json['time'] as String),
      tempC: (json['temp_c'] as num).toDouble(),
      cloudCoverage: (json['cloud'] as num).toDouble(),
      wind: (json['wind_mph'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ForecastWeatherHourToJson(
        _$_ForecastWeatherHour instance) =>
    <String, dynamic>{
      'time': instance.dateTime.toIso8601String(),
      'temp_c': instance.tempC,
      'cloud': instance.cloudCoverage,
      'wind_mph': instance.wind,
    };

_$_ForecastWeatherDay _$$_ForecastWeatherDayFromJson(
        Map<String, dynamic> json) =>
    _$_ForecastWeatherDay(
      avgTempC: (json['avgtemp_c'] as num).toDouble(),
      maxTempC: (json['maxtemp_c'] as num).toDouble(),
      minTempC: (json['mintemp_c'] as num).toDouble(),
      maxWindKph: (json['maxwind_kph'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ForecastWeatherDayToJson(
        _$_ForecastWeatherDay instance) =>
    <String, dynamic>{
      'avgtemp_c': instance.avgTempC,
      'maxtemp_c': instance.maxTempC,
      'mintemp_c': instance.minTempC,
      'maxwind_kph': instance.maxWindKph,
    };

_$_ForecastWeatherDayDTO _$$_ForecastWeatherDayDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ForecastWeatherDayDTO(
      date: dateFromString(json['date'] as String),
      day: ForecastWeatherDay.fromJson(json['day'] as Map<String, dynamic>),
      hours: (json['hour'] as List<dynamic>)
          .map((e) => ForecastWeatherHour.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastWeatherDayDTOToJson(
        _$_ForecastWeatherDayDTO instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'day': instance.day,
      'hour': instance.hours,
    };

_$_ForecastWeatherDTO _$$_ForecastWeatherDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ForecastWeatherDTO(
      forecastDays: (json['forecastday'] as List<dynamic>)
          .map((e) => ForecastWeatherDayDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastWeatherDTOToJson(
        _$_ForecastWeatherDTO instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastDays,
    };

_$_CurrentWeatherDTO _$$_CurrentWeatherDTOFromJson(Map<String, dynamic> json) =>
    _$_CurrentWeatherDTO(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      weather: CurrentWeather.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CurrentWeatherDTOToJson(
        _$_CurrentWeatherDTO instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.weather,
    };

_$_WeatherDTO _$$_WeatherDTOFromJson(Map<String, dynamic> json) =>
    _$_WeatherDTO(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      current: CurrentWeather.fromJson(json['current'] as Map<String, dynamic>),
      forecast:
          ForecastWeatherDTO.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherDTOToJson(_$_WeatherDTO instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
      'forecast': instance.forecast,
    };
