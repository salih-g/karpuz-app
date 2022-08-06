import 'package:flutter/material.dart';

import 'package:karpuz/models/post.model.dart';
import 'package:karpuz/utils/api.dart';

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
    getFeed();
  }

  getFeed() async {
    feed = await Api().getPosts();
    if (feed != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Karpuz"),
      ),
      body: FutureBuilder<List<PostModel>>(
        future: Api().getPosts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data;
            return Center(
              child: Text(data!.first.username.toString()),
            );
          } else {
            return const Text("Error");
          }
        },
      ),
    );
  }
}
