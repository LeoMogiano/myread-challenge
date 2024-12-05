import 'package:flutter/material.dart';
import 'package:my_reads/screens/screens.dart';
import 'package:my_reads/theme/custom_theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      home: const HomeBookScreen(),
    );
  }
}

