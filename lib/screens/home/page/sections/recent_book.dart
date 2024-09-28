import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:e_book_app/screens/home/components/recent_book.dart';

class RecentBooks extends StatelessWidget {
  const RecentBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          RecentBook(
            image: 'assets/images/recentbook_1.png',
            title: 'The Magic',
            percent: CircularPercentIndicator(
              reverse: true,
              radius: 25,
              lineWidth: 7,
              animation: true,
              percent: 0.5,
              progressColor: greenColor,
              circularStrokeCap: CircularStrokeCap.round,
            ),
            information: '50% Completed',
          ),
          const SizedBox(
            width: 20,
          ),
          RecentBook(
            image: 'assets/images/recentbook_2.png',
            title: 'The Martian ',
            percent: CircularPercentIndicator(
              reverse: true,
              radius: 25,
              lineWidth: 7,
              animation: true,
              percent: 0.7,
              progressColor: greenColor,
              circularStrokeCap: CircularStrokeCap.round,
            ),
            information: '75% Completed',
          ),
          const SizedBox(
            width: 20,
          ),
          RecentBook(
            image: 'assets/images/trendingbook_1.png',
            title: 'Enchantment',
            percent: CircularPercentIndicator(
              reverse: true,
              radius: 25,
              lineWidth: 7,
              animation: true,
              percent: 1,
              progressColor: greenColor,
              circularStrokeCap: CircularStrokeCap.round,
            ),
            information: '100% Completed',
          ),
          const SizedBox(
            width: 20,
          ),
          RecentBook(
            image: 'assets/images/trendingbook_2.png',
            title: 'Lore',
            percent: CircularPercentIndicator(
              reverse: true,
              radius: 25,
              lineWidth: 7,
              animation: true,
              percent: 0.8,
              progressColor: greenColor,
              circularStrokeCap: CircularStrokeCap.round,
            ),
            information: '80% Completed',
          ),
        ],
      ),
    );
  }
}
