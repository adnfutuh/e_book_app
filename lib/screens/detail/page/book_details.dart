import 'package:e_book_app/screens/detail/page/sections/save.dart';
import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';

import 'sections/book_image.dart';
import 'sections/description.dart';

class BookDetail extends StatelessWidget {
  static const nameRoute = '/bookDetailss';

  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: const [
          Stack(
            children: [
              Column(
                children: [
                  BookImage(),
                  Description(),
                ],
              ),
              Save(),
            ],
          )
        ],
      ),
    );
  }
}
