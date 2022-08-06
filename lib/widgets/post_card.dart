import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostCard extends StatefulWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Post Card"),
    );
  }
}
