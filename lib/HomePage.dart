import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profilImages = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.jpg",
    "images/9.jpg",
    "images/10.jpg",
  ];
  List<String> proflinNames = [
    "Oline Oshxona",
    "Abduraxmon",
    "Learn English",
    "Learn English2",
    "Charos",
    "Maqsud",
    "Muminjon",
    "Muslima",
    "Sanjarbek",
    "Malika"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.black), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.slow_motion_video_outlined, color: Colors.black),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, color: Colors.black), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.black), label: ""),
      ]),
      body: Container(
        margin: const EdgeInsets.only(top: 12),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                       Image.asset("images/Instagram_title.jpg",height: 44,)
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add_box_outlined),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.smart_display_outlined),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.send_outlined),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          10,
                          (index) => Container(
                                padding: const EdgeInsets.all(6),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          const AssetImage("images/bg.jpg"),
                                      radius: 34,
                                      child: ClipOval(
                                        child: Image(
                                          width: 60.0,
                                          height: 60.0,
                                          image:
                                              AssetImage(profilImages[index]),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      proflinNames[index],
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            MyNews()
          ],
        ),
      ),
    );
  }
}

Widget MyNews() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            const CircleAvatar(
              backgroundImage: AssetImage("images/2.jpg"),
            ),
            Column(
              children: [
                Text(
                  "    Abduraxmon",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Abduraxim"),
              ],
            ),
          ]),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      Image.asset(
        "images/2.jpg",
        width: double.infinity,
        height: 420,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            LikeButton(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.sms),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.send),
            ),
          ],
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.card_membership_sharp),),

      ]),
      Text("   Kitob o'qishni men juda yaxshi ko'raman menga eng yoqgan \n   kitoblarimni men sizlarga ulashishni niyyat qildim .")
    ],
  );
}
