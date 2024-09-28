import 'package:flutter/material.dart';

import '../../../../themes.dart';

class ButtonReadNow extends StatelessWidget {
  const ButtonReadNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: greenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          'Read Now',
          style: semiBold20.copyWith(color: whiteColor),
        ),
      ),
    );
  }
}
