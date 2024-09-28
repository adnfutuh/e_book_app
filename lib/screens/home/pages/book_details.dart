import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  static const nameRoute = '/bookDetailss';

  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)?.settings.arguments as Map;
    Widget header() {
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

    Widget bookImage() {
      return Hero(
        tag: data['imageUrl'],
        child: Container(
          height: 267,
          width: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(data['imageUrl']),
            ),
          ),
        ),
      );
    }

    Widget infoDescription() {
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

    Widget saveButton() {
      return Positioned(
        top: 400,
        right: 30,
        child: Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(color: greenColor, shape: BoxShape.circle),
          child: Image.asset('assets/icons/save_2.png'),
        ),
      );
    }

    Widget buttonRedNow() {
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

    Widget description() {
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
            infoDescription(),
            buttonRedNow(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  header(),
                  bookImage(),
                  description(),
                ],
              ),
              saveButton(),
            ],
          )
        ],
      ),
    );
  }
}
