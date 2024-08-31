import 'package:e_book_app/screens/sections/home/components/recent_book.dart';
import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/profile.png',
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Adnan,',
                  style: semiBold16.copyWith(color: blackColor),
                ),
                Text(
                  'Good Morning',
                  style: regular14.copyWith(color: greyColor),
                ),
              ],
            ),
            const Spacer(),
            Image.asset(
              'assets/icons/menu.png',
              width: 18,
              height: 14,
            )
          ],
        ),
      );
    }

    Widget searchField() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          decoration: InputDecoration(
              fillColor: greyColorSearchField,
              filled: true,
              hintText: 'Find Your Favorite Book',
              hintStyle: meduim12.copyWith(color: greyColor),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: const EdgeInsets.all(18),
              isCollapsed: true,
              suffixIcon: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.search_rounded,
                    color: whiteColor,
                  ),
                ),
              )),
        ),
      );
    }

    Widget recentBook() {
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
              image: 'assets/images/trendingbook_3.png',
              title: 'LORE',
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
                header(),
                const SizedBox(height: 30),
                searchField(),
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
                recentBook(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
