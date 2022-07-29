import 'package:flutter/material.dart';
import 'package:karpuz/pages/feed_page.dart';
import 'package:karpuz/pages/login_page.dart';
import 'package:karpuz/pages/post_page.dart';
import 'package:karpuz/pages/profile_page.dart';
import 'package:karpuz/pages/register_page.dart';
import 'package:karpuz/utils/colors.dart';

void main() {
  runApp(MaterialApp(
    title: 'Karpuz',
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backgroundColor,
    ),
    home: const FeedPage(),
    debugShowCheckedModeBanner: false,
    routes: {
      'postPage': (_) => const PostPage(),
      'profilePage': (_) => const ProfilePage(),
      'loginPage': (_) => const LoginPage(),
      'registerPage': (_) => const RegisterPage(),
    },
  ));
}
