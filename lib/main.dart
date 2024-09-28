import 'package:e_book_app/screens/navbar.dart';
import 'package:e_book_app/screens/home/page/home_page.dart';
import 'package:e_book_app/screens/detail/page/book_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E_book',
      routes: {
        MainScreen.nameRoute: (context) => const MainScreen(),
        HomePage.nameRoute: (context) => const HomePage(),
        BookDetail.nameRoute: (context) => const BookDetail(),
      },
    );
  }
}
