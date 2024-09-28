import 'package:flutter/material.dart';

import '../../../../themes.dart';

class HeaderBookDetails extends StatelessWidget {
  const HeaderBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      margin: const EdgeInsets.only(
        top: 30,
        bottom: 50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.chevron_left_rounded,
              size: 30,
            ),
          ),
          Text(
            'Book Details',
            style: semiBold14.copyWith(color: blackColor),
          ),
          const Icon(
            Icons.share_outlined,
          )
        ],
      ),
    );
  }
}
