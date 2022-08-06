import 'package:flutter/material.dart';
import 'package:karpuz/utils/colors.dart';

class KarpuzAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KarpuzAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      elevation: 0,
      title: const Text(
        "Karpuz",
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
