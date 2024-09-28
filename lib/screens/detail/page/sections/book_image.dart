import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)?.settings.arguments as Map;
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
}
