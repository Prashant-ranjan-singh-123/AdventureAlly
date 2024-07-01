import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_ui/pages/user_pages/favourite_page.dart';
import 'package:travel_ui/pages/user_pages/home_page.dart';
import 'package:travel_ui/pages/user_pages/profile_page.dart';

import 'user_pages/message_page.dart';

class GlobalNavBar extends StatefulWidget {
  const GlobalNavBar({Key? key}) : super(key: key);

  @override
  State<GlobalNavBar> createState() => _GlobalNavBarState();
}

class _GlobalNavBarState extends State<GlobalNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _currentScreen(),
      bottomNavigationBar: bottomNavBar().animate().slideY(
          begin: 1,
          end: 0,
          delay: 700.ms,
          duration: 1000.ms,
          curve: Curves.decelerate),
    );
  }

  Widget _currentScreen() {
    switch (_selectedIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const MessageScreen();
      case 2:
        return const FavouriteScreen();
      case 3:
        return const ProfileScreen();
      default:
        return const HomeScreen();
    }
  }

  Widget bottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: _selectedIndex == 0
              ? const Icon(CupertinoIcons.house_fill,
                  color: Colors.blue)
              : const Icon(CupertinoIcons.house,
                  color: Colors.black),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon:  _selectedIndex == 1
              ? const Icon(CupertinoIcons.clock_fill,
              color: Colors.blue)
              : const Icon(CupertinoIcons.clock,
              color: Colors.black),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 2
              ? const Icon(CupertinoIcons.heart_fill,
              color: Colors.blue)
              : const Icon(CupertinoIcons.heart,
              color: Colors.black),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon:  _selectedIndex == 3
              ? const Icon(CupertinoIcons.person_alt,
              color: Colors.blue)
              : const Icon(CupertinoIcons.person,
              color: Colors.black),
          label: 'Profile',
        ),
      ],
    );
  }
}
