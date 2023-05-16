import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class FeedState extends StatelessWidget {
  const FeedState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10),
                    SingleChildScrollView(
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
                    ),
                    Divider(
                      color: Colors.black12,
                      thickness: 1,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black12, width: 2),
                                ),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/limitTime/good.jpg'),
                                  radius: 21,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'good_memerep',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                          },
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                    Image.asset('assets/post/good.jpg'),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            FeatherIcons.heart,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            FeatherIcons.messageCircle,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            FeatherIcons.send,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(
                            FeatherIcons.bookmark,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
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
