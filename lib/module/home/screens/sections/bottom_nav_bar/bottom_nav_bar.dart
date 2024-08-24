import 'package:e_book_app/module/home/screens/sections/bottom_nav_bar/items/custom_bottom_nav.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return const CustomBottomNav();
  }
}
