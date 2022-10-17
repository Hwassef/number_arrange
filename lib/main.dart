import 'package:flutter/material.dart';
import 'package:number_arrange/config/theme/app_default_theme.dart';
import 'package:number_arrange/core/features/arrange_number/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppDefaultTheme.defaultThemeData,
      home: const HomePage(),
    );
  }
}
