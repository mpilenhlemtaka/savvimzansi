import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const SavviMzansiApp());
}

class SavviMzansiApp extends StatelessWidget {
  const SavviMzansiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SavviMzansi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins', // Set your custom font if configured
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

