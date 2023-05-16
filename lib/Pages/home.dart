import 'package:flutter/material.dart';

import 'commonComponents/navigationBar.dart';
import 'feed.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 120,
            ),
            Spacer(),
            IconButton(
              iconSize: 32,
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
            ),
            IconButton(
              iconSize: 32,
              onPressed: () {},
              icon: Icon(
                Icons.messenger_outline_sharp,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: FeedState(),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FooterNavigation(),
        ],
      ),
    );
  }
}

List<IconData> bottomNavs = [
  Icons.home,
  Icons.search,
  Icons.add_box_outlined,
  Icons.ondemand_video,
  Icons.person_outline,
];

