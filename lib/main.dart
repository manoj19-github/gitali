import 'package:flutter/material.dart';
import 'package:gitali2/core/configs/themes/app.theme.dart';
import 'package:gitali2/presentation/pages/splash/Splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home:SplashScreen()
    );
  }
}