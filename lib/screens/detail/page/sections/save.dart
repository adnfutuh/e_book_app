import 'package:flutter/material.dart';

import '../../../../themes.dart';

class Save extends StatelessWidget {
  const Save({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 400,
      right: 30,
      child: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: greenColor,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          'assets/icons/save_2.png',
        ),
      ),
    );
  }
}
