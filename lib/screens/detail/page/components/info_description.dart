import 'package:flutter/material.dart';

import '../../../../themes.dart';

class InfoDescription extends StatelessWidget {
  const InfoDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: greyColorInfo,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Rating',
                style: meduim10.copyWith(color: dividerColor),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                '4.8',
                style: semiBold12.copyWith(color: blackColor2),
              )
            ],
          ),
          VerticalDivider(
            color: dividerColor,
            thickness: 1,
          ),
          Column(
            children: [
              Text(
                'Number of pages',
                style: meduim10.copyWith(color: dividerColor),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                '180 Page',
                style: semiBold12.copyWith(color: blackColor2),
              )
            ],
          ),
          VerticalDivider(
            color: dividerColor,
            thickness: 1,
          ),
          Column(
            children: [
              Text(
                'Language',
                style: meduim10.copyWith(color: dividerColor),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'ENG',
                style: semiBold12.copyWith(color: blackColor2),
              )
            ],
          ),
        ],
      ),
    );
  }
}
