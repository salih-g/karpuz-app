import 'dart:async';

import 'package:flutter/material.dart';
import 'package:karpuz/screens/home_screen.dart';
import 'package:karpuz/services/post_service.dart';
import 'package:karpuz/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  static Route get route => MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      );

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _handleCheckConnection();
  }

  Future<void> _handleCheckConnection() async {
    if (!mounted) return;

    final response = await PostService.getPosts();

    if (response == null) return;

    if (!mounted) return;
    Navigator.of(context).pushReplacement(HomeScreen.route);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
