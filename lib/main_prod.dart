import 'package:flutter/material.dart';
import 'package:net_carrot_task/_utils/app_config.dart';
import 'package:net_carrot_task/_utils/env_config.dart';
import 'package:net_carrot_task/module/login/view/login_view.dart';

void main() {
  EnvConfig envConfig = production;
  final AppConfig configuredApp = AppConfig(
    envConfig: envConfig,
    child: const MyApp(),
  );

  runApp(configuredApp);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Net Carrots Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NetCarrotsLoginView(),
    );
  }
}
