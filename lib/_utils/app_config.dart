import 'package:flutter/material.dart';
import 'package:net_carrot_task/_utils/env_config.dart';

class AppConfig extends InheritedWidget {
  final EnvConfig envConfig;
  const AppConfig({
    super.key,
    required super.child,
    required this.envConfig,
  });

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
