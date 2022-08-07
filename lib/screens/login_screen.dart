import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static Route get route => MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Text("Karpuz");
  }
}
