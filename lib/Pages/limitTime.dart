import 'package:flutter/material.dart';

class LimitTimePage extends StatelessWidget {
  const LimitTimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ...List.generate(
            LimitTimeArray.length,
                (index) => Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage:
                    AssetImage(LimitTimeArray[index].src),
                  ),
                  SizedBox(height: 8),
                  Text(
                    LimitTimeArray[index].name,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class LimitTimeImages {
  final String name, type, title, src;

  LimitTimeImages(
      this.src, {
        required this.name,
        required this.type,
        required this.title,
      });
}

List<LimitTimeImages> LimitTimeArray = [
  LimitTimeImages("assets/limitTime/me.jpg",
      name: "限時動態", type: "0", title: "限時動態"),
  LimitTimeImages("assets/limitTime/8+9.jpg",
      name: "big_brother", type: "1", title: "big_brother"),
  LimitTimeImages("assets/limitTime/monkey.jpg",
      name: "Monkey", type: "1", title: "Monkey"),
  LimitTimeImages("assets/limitTime/3floors.jpg",
      name: "3floors", type: "2", title: "3floors"),
  LimitTimeImages("assets/limitTime/medicine.jpg",
      name: "medicine", type: "2", title: "medicine"),
  LimitTimeImages("assets/limitTime/fish.jpg",
      name: "fish", type: "2", title: "fish"),
];
