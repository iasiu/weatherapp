import 'package:flutter/material.dart';

class AppColor extends Color {
  const AppColor._(super.value);

  AppColor._color(Color color) : super(color.value);

  AppColor alphaBlend(AppColor background) {
    return AppColor._color(Color.alphaBlend(this, background));
  }

  @override
  AppColor withOpacity(double opacity) {
    return AppColor._color(super.withOpacity(opacity));
  }
}

class AppColorTween extends Tween<AppColor?> {
  AppColorTween({super.begin, super.end});

  @override
  AppColor? lerp(double t) => AppColor._color(Color.lerp(begin, end, t)!);
}

abstract class AppColors {
  const AppColors._();

  static AppColors of(BuildContext context) =>
      AppColors.ofBrightness(Theme.of(context).brightness);

  static AppColors ofBrightness(Brightness brightness) {
    switch (brightness) {
      case Brightness.light:
        return const _ColorsLight();
      case Brightness.dark:
        return const _ColorsLight();
    }
  }

  AppColor get primary;
  AppColor get secondary;
  AppColor get accent;
  AppColor get error;

  AppColor get transparent;
  AppColor get black;
  AppColor get white;

  AppColor get text;
  AppColor get textLight;

  AppColor get background;
}

class _ColorsLight extends AppColors {
  const _ColorsLight() : super._();

  @override
  AppColor get primary => const AppColor._(0xFF218BFF);
  @override
  AppColor get secondary => const AppColor._(0xFFF6AF07);
  @override
  AppColor get accent => const AppColor._(0xFF17A816);
  @override
  AppColor get error => const AppColor._(0xFFFF3019);

  @override
  AppColor get transparent => const AppColor._(0x00000000);
  @override
  AppColor get black => const AppColor._(0xFF000000);
  @override
  AppColor get white => const AppColor._(0xFFFFFFFF);

  @override
  AppColor get text => const AppColor._(0xFF353343);
  @override
  AppColor get textLight => const AppColor._(0xFFA7A6A7);

  @override
  AppColor get background => const AppColor._(0xFFFAF9FA);
}
