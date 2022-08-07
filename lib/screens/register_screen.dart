import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static Route get route => MaterialPageRoute(
        builder: (context) => const RegisterScreen(),
      );

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return const Text("Karpuz");
  }
}
