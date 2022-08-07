import 'package:flutter/cupertino.dart';
import 'package:karpuz/utils/constants.dart';

class KarpuzNav extends StatefulWidget {
  final ValueChanged<int> onItemSelected;

  const KarpuzNav({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  State<KarpuzNav> createState() => _KarpuzNavState();
}

class _KarpuzNavState extends State<KarpuzNav> {
  var selectedIndex = 0;

  void handleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavigationBarItem(
            index: 0,
            label: "Home",
            icon: CupertinoIcons.home,
            isSelected: (selectedIndex == 0),
            onTap: handleItemSelected,
          ),
          _NavigationBarItem(
            index: 1,
            label: "Create Post",
            isSelected: (selectedIndex == 1),
            icon: CupertinoIcons.add_circled_solid,
            onTap: handleItemSelected,
          ),
          _NavigationBarItem(
            index: 2,
            label: 'Profile',
            isSelected: (selectedIndex == 2),
            icon: CupertinoIcons.person_2_fill,
            onTap: handleItemSelected,
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
  final bool isSelected;
  final ValueChanged<int> onTap;

  const _NavigationBarItem({
    Key? key,
    required this.label,
    required this.icon,
    required this.index,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
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
              color: isSelected ? mainRed : iconDark,
              size: 20,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              label,
              style: isSelected ? navbarStyleSelected : navbarStyle,
            ),
          ],
        ),
      ),
    );
  }
}
