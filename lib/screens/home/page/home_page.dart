import 'package:e_book_app/screens/home/page/sections/categories.dart';
import 'package:e_book_app/screens/home/page/sections/recent_book.dart';
import 'package:e_book_app/screens/home/page/sections/trending_books.dart';
import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';

import 'sections/header.dart';
import 'sections/search_field.dart';

class HomePage extends StatelessWidget {
  static const nameRoute = '/homePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Header(),
                const SizedBox(height: 30),
                const Searchfield(),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Text(
                    'Recent Book',
                    style: semiBold16.copyWith(color: blackColor),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const RecentBooks(),
              ],
            ),
          ),
          const Categories(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Trending Now',
              style: semiBold16.copyWith(color: blackColor),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const TrendingBooks()
        ],
      ),
    );
  }
}
