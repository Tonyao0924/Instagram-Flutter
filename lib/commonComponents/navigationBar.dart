import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FooterNavigation extends StatelessWidget {
  const FooterNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
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
  MdiIcons.home,
  FeatherIcons.search,
  FeatherIcons.plusSquare,
  FeatherIcons.youtube,
  MdiIcons.accountCircle,
];
