// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nft_market/theme.dart';
import 'package:nft_market/widget/button.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 28, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Image.asset(
                "assets/logo_back.png",
                width: 42,
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Row(
                children: [
                  Image.asset(
                    "assets/logo_love.png",
                    width: 42,
                  ),
                  SizedBox(width: 13),
                  Image.asset(
                    "assets/logo_three_dots.png",
                    width: 42,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget image() {
      // ignore: avoid_unnecessary_containers
      return Container(
        width: 300,
        height: 300,
        margin: EdgeInsets.only(bottom: 40),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image_nft1.png"),
            fit: BoxFit.fill,
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(28),
        decoration: const BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 66,
                  height: 66,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/image_sellers_detail.png"),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "By MekaVerse",
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "MEKA #3139",
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: extraBold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          "On Sale for ",
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: bold,
                          ),
                        ),
                        Text(
                          " 10 ETH",
                          style: greenTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 28),
            Text(
              "Description",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Meka from the MekaVerse - A collection of 8,888 unique generative NFTs from an other universe. ",
              style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: light,
              ),
            ),
            SizedBox(height: 35),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Button(
                  title: "Make Offer",
                  onClick: () {},
                  width: 158,
                  height: 67,
                  fontSize: 16,
                ),
                SizedBox(width: 20),
                Button(
                  title: "Place Bid",
                  onClick: () {},
                  width: 158,
                  height: 67,
                  fontSize: 16,
                  backgroundColor: kBlackColor,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                header(),
                image(),
                content(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
