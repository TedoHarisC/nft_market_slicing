// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nft_market/theme.dart';
import 'package:nft_market/widget/button.dart';
import 'package:nft_market/widget/featured_card.dart';
import 'package:nft_market/widget/top_sellers_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: Row(
              children: [
                Image.asset(
                  "assets/logo_img.png",
                  width: 32,
                ),
                SizedBox(width: 13),
                Text(
                  "8.42 ETH",
                  style: blackTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: extraBold,
                  ),
                )
              ],
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Row(
              children: [
                Image.asset(
                  "assets/logo_search.png",
                  width: 48,
                ),
                SizedBox(width: 13),
                Image.asset(
                  "assets/logo_notification.png",
                  width: 48,
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget categories() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              Text(
                "View All",
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
          SizedBox(height: 23),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                title: "Art",
                width: 61,
                height: 35,
                backgroundColor: kGreenColor,
                fontColor: kWhiteColor,
                fontSize: 14,
                onClick: () {},
              ),
              Button(
                title: "Music",
                width: 61,
                height: 35,
                backgroundColor: kWhiteColor,
                fontColor: kBlackColor,
                fontSize: 14,
                onClick: () {},
              ),
              Button(
                title: "Games",
                width: 71,
                height: 35,
                backgroundColor: kWhiteColor,
                fontColor: kBlackColor,
                fontSize: 14,
                onClick: () {},
              ),
              Button(
                title: "Domains",
                width: 81,
                height: 35,
                backgroundColor: kWhiteColor,
                fontColor: kBlackColor,
                fontSize: 14,
                onClick: () {},
              )
            ],
          )
        ],
      );
    }

    Widget featured() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Featured NFTs",
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              Text(
                "View All",
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 500,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  FeaturedCard(
                    imageUrl: "assets/image_nft1.png",
                    author: "MekaVerse",
                    title: "Meka #3139",
                    price: 10,
                  ),
                  SizedBox(width: 20),
                  FeaturedCard(
                    imageUrl: "assets/image_nft2.png",
                    author: "Monster",
                    title: "Monsters",
                    price: 1.2,
                  ),
                  SizedBox(width: 20),
                  FeaturedCard(
                    imageUrl: "assets/image_nft3.png",
                    author: "The Watcher",
                    title: "Popular Ninjas",
                    price: 2.08,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ),
        ],
      );
    }

    Widget topSellers() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Sellers",
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              Text(
                "View All",
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          TopSellersCard(
            imageUrl: "assets/image_sellers1.png",
            title: "The Watcher",
            total: "\$ 739,420",
          ),
          TopSellersCard(
            imageUrl: "assets/image_nft1.png",
            title: "MekaVerse",
            total: "\$ 6409,120",
          ),
          TopSellersCard(
            imageUrl: "assets/image_nft2.png",
            title: "Monster",
            total: "\$ 5301,001",
          ),
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 28, vertical: 40),
            child: Column(
              children: [
                header(),
                SizedBox(height: 40),
                categories(),
                SizedBox(height: 40),
                featured(),
                SizedBox(height: 40),
                topSellers(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
