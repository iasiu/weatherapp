import 'package:flutter/material.dart';
import 'package:weatherapp/resources/resources.dart';

extension BuildContextTheme on BuildContext {
  AppColors get colors => AppColors.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ThemeData get theme => Theme.of(this);
}
