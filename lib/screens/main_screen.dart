import 'package:flutter/material.dart';

import '../../../themes.dart';
import 'sections/cart/cart_page.dart';
import 'sections/home/home_page.dart';
import 'sections/save/save_page.dart';
import 'sections/userprofile/user_profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final _screens = [
    const HomePage(),
    const SavePage(),
    const CartPage(),
    const UserProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //biar ga naik
        currentIndex: _selectedIndex,
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(top: 15),
              child: Image.asset(
                'assets/icons/home.png',
                width: 20,
                height: 20,
                color: _selectedIndex == 0 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(top: 15),
              child: Image.asset(
                'assets/icons/save.png',
                width: 14,
                height: 18,
                color: _selectedIndex == 1 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(top: 15),
              child: Image.asset(
                'assets/icons/cart.png',
                width: 20,
                height: 15,
                color: _selectedIndex == 2 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(top: 15),
              child: Image.asset(
                'assets/icons/userprofile.png',
                width: 18,
                height: 20,
                color: _selectedIndex == 3 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: Stack(
        children: _screens
            .asMap()
            .map((i, screen) => MapEntry(
                i,
                Offstage(
                  offstage: _selectedIndex != i,
                  child: screen,
                )))
            .values
            .toList(),
      ),
    );
  }
}
