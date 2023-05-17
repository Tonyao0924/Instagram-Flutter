import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:instagramflutter/Pages/limitTime.dart';

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
              SizedBox(height: 10),
              LimitTimePage(),
              Divider(
                color: Colors.black12,
                thickness: 1,
              ),
              ...List.generate(
                PostImageArray.length,
                (index) => SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
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
                                    backgroundImage: AssetImage(
                                        PostImageArray[index].srcHead),
                                    radius: 21,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  PostImageArray[index].name,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
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
                      Image.asset(PostImageArray[index].srcPost),
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
                      Row(
                        children: <Widget>[
                          SizedBox(width: 10),
                          Text(
                            PostImageArray[index].likecount,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '個讚',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: PostImageArray[index].name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                    text: PostImageArray[index].text,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ))
                              ]),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '查看全部',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  TextSpan(
                                    text: PostImageArray[index].messagecount,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '則留言',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            PostImageArray[index].postTime,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                            ),
                          ),
                          Text(
                            '  翻譯年糕',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class PostImages {
  final String name, postTime, text, messagecount, likecount, srcHead, srcPost;

  PostImages(
    this.name, {
    required this.srcHead,
    required this.srcPost,
    required this.likecount,
    required this.text,
    required this.messagecount,
    required this.postTime,
  });
}

List<PostImages> PostImageArray = [
  PostImages("good_memerep",
      srcHead: "assets/limitTime/good.jpg",
      srcPost: "assets/post/good.jpg",
      likecount: "9,561",
      text: " 讓他安穩的睡一覺，然後就過頭了好幾站。",
      messagecount: "94",
      postTime: "1天"),
  PostImages("harry081191",
      srcHead: "assets/head/harry.jpg",
      srcPost: "assets/post/harry.jpg",
      likecount: "10,923,044",
      text: " 資一勇的鬼",
      messagecount: "44",
      postTime: "6 月 12, 2018"),
];
