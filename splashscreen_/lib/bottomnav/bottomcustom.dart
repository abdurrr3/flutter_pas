// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:splashscreen_/home.dart';
import 'package:splashscreen_/inspirasi/inspirasi.dart';
import 'package:splashscreen_/profile/provile.dart';
import 'package:splashscreen_/wishlist/wishlist.dart';

class Global_content extends StatefulWidget {
  const Global_content({super.key});

  @override
  State<Global_content> createState() => _Global_contentState();
}

class _Global_contentState extends State<Global_content> {
  int _currentIndex = 0;
  Widget _currentScreen = Home();

  void _changeSelectedNavBar(int index) {
    setState(() {
      _currentIndex = index;

      if (index == 0) {
        _currentScreen = Home();
      } else if (index == 1) {
        _currentScreen = Inspiration();
      } else if (index == 2) {
        _currentScreen = WishList();
      } else if (index == 3) {
        _currentScreen = Profile();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(
              Icons.home,
              color: const Color(0xff0058AB),
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            activeIcon: Icon(
              Icons.coffee,
              color: const Color(0xff0058AB),
            ),
            label: 'Inspirasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken),
            activeIcon: Icon(
              Icons.heart_broken,
              color: const Color(0xff0058AB),
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Icon(
              Icons.person,
              color: const Color(0xff0058AB),
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: const Color(0xff0058AB),
        currentIndex: _currentIndex,
        onTap: _changeSelectedNavBar,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
