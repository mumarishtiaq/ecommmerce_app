import 'package:ecommmerce_app/Screens/login_screen.dart';
import 'package:ecommmerce_app/Screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'E-commerce App',
      // home: LoginScreen(),
      home: SignupScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
