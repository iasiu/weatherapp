import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

enum WeatherClientPath {
  current,
  forecast;

  const WeatherClientPath();

  String getPath() {
    switch (this) {
      case WeatherClientPath.current:
        return '/v1/current.json';
      case WeatherClientPath.forecast:
        return '/v1/forecast.json';
    }
  }
}

class WeatherClient {
  WeatherClient({
    required String apiKey,
  }) : _apiKey = apiKey;

  final String _apiKey;

  late final baseUri = Uri.https(
    'api.weatherapi.com',
    '',
    <String, dynamic>{
      'key': _apiKey,
      'aqi': 'no',
    },
  );

  @useResult
  Future<Map<String, dynamic>> getCurrent({required String query}) async {
    final uri = Uri.https(
      baseUri.authority,
      WeatherClientPath.current.getPath(),
      <String, dynamic>{...baseUri.queryParameters, 'q': query},
    );

    final response = await http.get(uri);

    if (response.statusCode != 200) {
      throw Exception(
        'failed to getCurrent() with status code: ${response.statusCode}',
      );
    }

    final data = jsonDecode(
      utf8.decode(response.bodyBytes),
    ) as Map<String, dynamic>;

    return data;
  }

  @useResult
  Future<Map<String, dynamic>> getForecast({
    required String query,
  }) async {
    final uri = Uri.https(
      baseUri.authority,
      WeatherClientPath.forecast.getPath(),
      <String, dynamic>{
        ...baseUri.queryParameters,
        'days': '2',
        'q': query,
      },
    );

    final response = await http.get(uri);

    if (response.statusCode != 200) {
      throw WeatherClientException(
        'failed to getCurrent() with status code: ${response.statusCode}',
      );
    }

    final data = jsonDecode(
      utf8.decode(response.bodyBytes),
    ) as Map<String, dynamic>;

    return data;
  }
}

class WeatherClientException implements Exception {
  WeatherClientException(this.message);

  final String message;

  @override
  String toString() {
    return 'WeatherClientException: $message';
  }
}
