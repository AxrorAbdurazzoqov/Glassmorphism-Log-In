import 'package:flutter/material.dart';
import 'package:glassmorphism_login_screen/core/constants/colors/app_colors.dart';
import 'package:glassmorphism_login_screen/features/login/page/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glassmorphism',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.instance.white),
      ),
      themeMode: ThemeMode.light,
      home: const LoginScreen(),
    );
  }
}
