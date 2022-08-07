import 'package:flutter/material.dart';
import 'package:karpuz/pages/create_post_page.dart';
import 'package:karpuz/pages/feed_page.dart';
import 'package:karpuz/pages/profile_page.dart';
import 'package:karpuz/utils/constants.dart';
import 'package:karpuz/widgets/app_bar.dart';
import 'package:karpuz/widgets/karpuz_nav.dart';

class HomeScreen extends StatefulWidget {
  static Route get route => MaterialPageRoute(
        builder: (context) => HomeScreen(),
      );

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final pages = const [
    FeedPage(),
    CreatePostPage(),
    ProfilePage(),
  ];

  String title = 'Karpuz';

  @override
  Widget build(BuildContext context) {
    pageIndex.addListener(() {
      switch (pageIndex.value) {
        case 1:
          setState(() {
            title = 'Create Post';
          });
          break;
        case 2:
          setState(() {
            title = 'sudanmerinosu';
          });
          break;
      }
    });

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: KarpuzAppBar(title: title),
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
