import 'package:flutter/material.dart';

import '../../../../themes.dart';
import '../components/button.dart';
import '../components/info_description.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)?.settings.arguments as Map;
    return Container(
      margin: const EdgeInsets.only(top: 50),
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['title'],
                      style: semiBold20.copyWith(color: blackColor),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      data['writters'],
                      style: meduim14.copyWith(color: greyColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Free Access',
                style: meduim14.copyWith(color: greenColor),
              )
            ],
          ),
          const SizedBox(height: 30),
          Text(
            'Description',
            style: semiBold14.copyWith(color: blackColor2),
          ),
          const SizedBox(height: 6),
          Text(
            'Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships. ',
            style: regular12.copyWith(color: greyColor),
          ),
          const InfoDescription(),
          const ButtonReadNow(),
        ],
      ),
    );
  }
}
