import 'package:flutter/material.dart';
import 'package:weatherapp/features/home/home_screen.dart';
import 'package:weatherapp/l10n/app_localizations.dart';
import 'package:weatherapp/resources/resources.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: AppLocalizations.supportedLocales.first,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme.light(context),
      home: const HomeScreen(),
    );
  }
}
