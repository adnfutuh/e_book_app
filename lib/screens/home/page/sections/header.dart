import 'package:flutter/material.dart';

import '../../../../themes.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
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
}
