import 'package:flutter/material.dart';

import 'package:karpuz/models/post.model.dart';
import 'package:karpuz/services/post_service.dart';
import 'package:karpuz/widgets/app_bar.dart';
import 'package:karpuz/widgets/post_card.dart';
// import 'package:karpuz/utils/api.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<PostModel>? feed;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KarpuzAppBar(),
      body: FutureBuilder<dynamic>(
        future: PostService.getPosts(),
        builder: (_, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const PostCard();
          }
        },
      ),
    );
  }
}
