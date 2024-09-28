import 'package:flutter/material.dart';

import '../../../../themes.dart';

class Searchfield extends StatelessWidget {
  const Searchfield({super.key});

  @override
  Widget build(BuildContext context) {
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
}
