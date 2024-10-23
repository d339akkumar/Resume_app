import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import the ResumeScreen

void main() {
  runApp(ResumeApp());
}

class ResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResumeScreen(), // Use ResumeScreen from home_screen.dart
    );
  }
}
