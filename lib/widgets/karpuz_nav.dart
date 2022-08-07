import 'package:flutter/cupertino.dart';
import 'package:karpuz/utils/constants.dart';

class KarpuzNav extends StatelessWidget {
  final ValueChanged<int> onItemSelected;

  const KarpuzNav({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavigationBarItem(
              label: "Home",
              icon: CupertinoIcons.home,
              index: 0,
              onTap: onItemSelected),
          _NavigationBarItem(
            label: "Create Post",
            icon: CupertinoIcons.add_circled_solid,
            index: 1,
            onTap: onItemSelected,
          ),
          _NavigationBarItem(
            label: 'Profile',
            icon: CupertinoIcons.person_2_fill,
            index: 2,
            onTap: onItemSelected,
          ),
        ],
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  final String label;
  final int index;
  final IconData icon;
  final ValueChanged<int> onTap;

  const _NavigationBarItem({
    Key? key,
    required this.label,
    required this.icon,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        height: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: iconDark,
              size: 20,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              label,
              style: navbarStyle,
            ),
          ],
        ),
      ),
    );
  }
}
