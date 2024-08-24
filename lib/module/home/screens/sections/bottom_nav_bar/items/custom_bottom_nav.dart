import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
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
}
