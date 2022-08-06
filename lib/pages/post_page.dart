import 'package:flutter/material.dart';
import 'package:karpuz/widgets/app_bar.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: KarpuzAppBar(
        title: "Post",
      ),
      body: Text('Post'),
    );
  }
}
