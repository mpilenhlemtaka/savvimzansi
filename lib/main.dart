import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/home_screen.dart';

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
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      // Start with SplashScreen
      home: const SplashScreen(),

      // ✅ Register named routes
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/forgot': (context) => const ForgotPasswordScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
