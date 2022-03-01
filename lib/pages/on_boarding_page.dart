// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nft_market/theme.dart';
import 'package:nft_market/widget/button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_header.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: 414,
        height: 374,
        decoration: const BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 34),
            Image.asset(
              "assets/image_three_dots.png",
              width: 32,
            ),
            SizedBox(height: 32),
            Text(
              "Discover Rare\n Collectibles",
              style: blackTextStyle.copyWith(
                fontSize: 26,
                fontWeight: extraBold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              "Buy and Sell Rare Collectibles from\n Top Artists.",
              style: greyTextStyle.copyWith(
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 48),
            Button(
              title: "Explore NFTs",
              onClick: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/home", (route) => false);
              },
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          backgroundImage(),
          content(),
        ],
      ),
    );
  }
}
