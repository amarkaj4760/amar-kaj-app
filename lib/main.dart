import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const AmarKajApp());
}

class AmarKajApp extends StatelessWidget {
  const AmarKajApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amar Kaj',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}