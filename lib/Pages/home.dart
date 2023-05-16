import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 1,
              color: Colors.grey,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    bottomNavs.length,
                    (index) => GestureDetector(
                      child: Column(
                        children: <Widget>[
                          IconButton(
                            iconSize: 30,
                            onPressed: () {  },
                            icon: Icon(
                              bottomNavs[index],
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
