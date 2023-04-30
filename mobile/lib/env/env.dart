import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'WEATHER_API_KEY')
  static const weatherApiKey = _Env.weatherApiKey;
}
