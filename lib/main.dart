import 'package:flutter/material.dart';
import 'package:karpuz/screens/splash_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Karpuz",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
