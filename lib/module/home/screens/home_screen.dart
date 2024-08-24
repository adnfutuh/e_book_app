import 'package:e_book_app/module/home/screens/sections/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
