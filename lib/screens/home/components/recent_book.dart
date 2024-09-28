import 'package:flutter/material.dart';

import '../../../themes.dart';

class RecentBook extends StatelessWidget {
  const RecentBook(
      {super.key,
      required this.image,
      required this.title,
      required this.percent,
      required this.information});
  final String image;
  final String title;
  final dynamic percent;
  final String information;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(color: borderRecentBook),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 90,
          ),
          const SizedBox(
            width: 18,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: semiBold14.copyWith(color: blackColor2),
              ),
              percent,
              Text(
                information,
                style: meduim14.copyWith(color: greyColorRecentBook),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
