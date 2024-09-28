import 'package:flutter/material.dart';

import '../../../../themes.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> _categories = [
    'All Book',
    'Novel',
    'Manga',
    'Manhwa',
    'Manhua',
    'Fairy Tales',
  ];
  int _isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return listCategories();
  }

  Widget categories(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _isSelected = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(top: 30, right: 12, bottom: 30),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        decoration: BoxDecoration(
          color: _isSelected == index ? greenColor : transParentColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          _categories[index],
          style: semiBold14.copyWith(
            color: _isSelected == index ? whiteColor : greyColor,
          ),
        ),
      ),
    );
  }

  Widget listCategories() {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 30),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _categories
            .asMap()
            .entries
            .map((MapEntry map) => categories(map.key))
            .toList(),
      ),
    );
  }
}
