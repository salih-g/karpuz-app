import 'package:flutter/material.dart';
import 'package:karpuz/main.dart';
import 'package:karpuz/pages/feed_page.dart';
import 'package:karpuz/pages/login_page.dart';
import 'package:karpuz/pages/post_page.dart';
import 'package:karpuz/pages/profile_page.dart';
import 'package:karpuz/pages/register_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const FeedPage());
      case '/post':
        return MaterialPageRoute(builder: (_) => const PostPage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case '/register':
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
