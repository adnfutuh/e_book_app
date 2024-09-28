import 'package:flutter/material.dart';

import '../../components/trending_book.dart';
import '../../models/book.dart';

class TrendingBooks extends StatefulWidget {
  const TrendingBooks({super.key});

  @override
  State<TrendingBooks> createState() => _TrendingBooksState();
}

class _TrendingBooksState extends State<TrendingBooks> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: bookList
            .asMap()
            .entries
            .map(
              (MapEntry map) => TrendingBook(
                info: bookList[map.key],
              ),
            )
            .toList(),
      ),
    );
  }
}
