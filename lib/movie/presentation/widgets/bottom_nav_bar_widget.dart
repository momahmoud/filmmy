import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.white70,
      elevation: 0,
      iconSize: 28,
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.home,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            CupertinoIcons.heart_fill,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.settings,
          ),
        ),
      ],
    );
  }
}
