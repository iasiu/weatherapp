import 'package:flutter/material.dart';
import 'package:weatherapp/l10n/app_localizations.dart';

extension BuildContextL10n on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
