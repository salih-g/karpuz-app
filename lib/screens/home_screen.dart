import 'package:flutter/material.dart';
import 'package:karpuz/pages/create_post_page.dart';
import 'package:karpuz/pages/feed_page.dart';
import 'package:karpuz/pages/profile_page.dart';
import 'package:karpuz/utils/constants.dart';
import 'package:karpuz/widgets/app_bar.dart';
import 'package:karpuz/widgets/karpuz_nav.dart';

class HomeScreen extends StatelessWidget {
  static Route get route => MaterialPageRoute(
        builder: (context) => HomeScreen(),
      );

  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  HomeScreen({Key? key}) : super(key: key);

  final pages = const [
    FeedPage(),
    CreatePostPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const KarpuzAppBar(title: 'Karpuz'),
      body: ValueListenableBuilder(
        valueListenable: pageIndex,
        builder: (BuildContext context, int value, _) {
          return pages[value];
        },
      ),
      bottomNavigationBar: KarpuzNav(
        onItemSelected: (index) {
          pageIndex.value = index;
        },
      ),
    );
  }
}
