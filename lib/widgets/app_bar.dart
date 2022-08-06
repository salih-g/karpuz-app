import 'package:flutter/material.dart';
import 'package:karpuz/utils/constants.dart';

class KarpuzAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const KarpuzAppBar({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Image.asset(
              'assets/icon/icon.png',
              width: 30,
            ),
          ),
          Text(
            title,
            style: appBarTitleStyle,
          ),
        ],
      ),
      backgroundColor: appBarColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
