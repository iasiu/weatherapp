import 'package:flutter/material.dart';
import 'package:weatherapp/extensions/extensions.dart';

class AppTile extends StatelessWidget {
  const AppTile({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shadowColor: context.colors.textLight.withOpacity(0.2),
      borderRadius: BorderRadius.circular(8),
      child: ListTile(
        tileColor: context.colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        title: child,
      ),
    );
  }
}
