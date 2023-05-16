import 'package:flutter/material.dart';

class FooterNavigation extends StatelessWidget {
  const FooterNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
            ),
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
                          onPressed: () {},
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
