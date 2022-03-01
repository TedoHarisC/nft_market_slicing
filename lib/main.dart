import 'package:flutter/material.dart';
import 'package:nft_market/pages/detail_page.dart';
import 'package:nft_market/pages/home_page.dart';
import 'package:nft_market/pages/on_boarding_page.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const OnBoardingPage(),
        '/home': (context) => const HomePage(),
        '/detail-page': (context) => const DetailPage(),
      },
    );
  }
}
