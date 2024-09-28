import 'package:e_book_app/screens/home/models/book.dart';
import 'package:e_book_app/screens/detail/page/book_details.dart';
import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';

class TrendingBook extends StatelessWidget {
  const TrendingBook({
    super.key,
    required this.info,
  });
  final BookList info;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              BookDetail.nameRoute,
              arguments: {
                'imageUrl': info.imageUrl,
                'writters': info.writters,
                'title': info.title,
              },
            );
          },
          child: Hero(
            tag: info.imageUrl,
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              height: 160,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(info.imageUrl),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          info.writters,
          style: semiBold12.copyWith(color: greyColor),
        ),
        Text(
          info.title,
          style: semiBold16.copyWith(color: blackColor),
        ),
      ],
    );
  }
}
