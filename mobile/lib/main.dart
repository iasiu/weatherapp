import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/data/weather_client.dart';
import 'package:weatherapp/data/weather_repository.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUpLogger();

  runApp(
    const GlobalProviders(
      child: App(),
    ),
  );
}

class GlobalProviders extends StatelessWidget {
  const GlobalProviders({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<WeatherClient>(
          create: (_) => WeatherClient(
            apiKey: '228600346318480f940200621232704',
          ),
        ),
        RepositoryProvider(
          create: (context) => WeatherRepository(
            weatherClient: context.read(),
          ),
        ),
      ],
      child: child,
    );
  }
}

void setUpLogger() {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    // ignore: avoid_print
    print('${record.level.name}: ${record.message}\n'
        '${record.error}');
  });

  FlutterError.onError = FlutterError.dumpErrorToConsole;
}
