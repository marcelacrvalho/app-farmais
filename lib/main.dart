import 'package:farmais/farmais/features/stepper/presentation/views/stepper_view.dart';
import 'package:flutter/material.dart';

import 'values/routes.dart';
import 'values/strings.dart';
import 'values/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // TODO: inicializar os bindings necessários WidgetBinding.ensureInitialized e HiveConfig.start()
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      routes: myRoute,
      theme: myTheme,
      home: const StepperView(),
    );
  }
}