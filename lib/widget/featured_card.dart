// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nft_market/theme.dart';
import 'package:nft_market/widget/button.dart';

class FeaturedCard extends StatelessWidget {
  final String imageUrl;
  final String author;
  final String title;
  final double price;
  const FeaturedCard({
    Key? key,
    required this.imageUrl,
    required this.author,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        width: 326,
        height: 430,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          color: kLightGreyColor,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "By $author",
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        "Current Price",
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        "$price ETH",
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget button() {
      return Positioned(
        bottom: -58 / 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(
              title: "Place Bid",
              backgroundColor: kBlackColor,
              fontColor: kWhiteColor,
              fontSize: 16,
              width: 159,
              height: 58,
              onClick: () {},
            ),
            SizedBox(width: 10),
            Image.asset(
              "assets/btn_love.png",
              width: 58,
            ),
          ],
        ),
      );
    }

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/detail-page");
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          content(),
          button(),
        ],
      ),
    );
  }
}
