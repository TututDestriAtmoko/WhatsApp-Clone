import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xfff7f7f7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Edit",
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, right: 16),
                        child: Image.asset(
                          "assets/write.png",
                          width: 30,
                          height: 30,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Chat",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16, left: 16),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffe3e3e5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Icon(Icons.search_rounded, color: Color(0xff8f8e93)),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'Cari',
                            style: TextStyle(color: Color(0xff8f8e93)),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  )
                ],
              ),
            ),
            Divider(
              height: 1,
              color: Color(0xffe3e3e5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Daftar Siaran",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Grup Baru",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 18),
                  ),
                ),
              ],
            ),
            Divider(
              height: 1,
              color: Color(0xffe3e3e5),
            ),
            SizedBox(
              height: 16,
            ),
            BaseChat(
              assets: 'assets/logo.jpg',
              title: "MP-06TPLE014",
              time: "08:45",
              message: 'Pak dosen: Happy UAS !',
            ),
            SizedBox(
              height: 16,
            ),
            BaseChat(
              assets: 'assets/user.jpg',
              title: "TUTUT DESTRI ATMOKO",
              time: "08:41",
              message: 'GoodLuck!!!',
            ),
            SizedBox(
              height: 16,
            ),
            BaseChat(
              assets: 'assets/logo.jpg',
              title: "06 TPLE 014",
              time: "08:08",
              message: 'Beckhkam: Uas sudah dimulai, semangat!!!',
            ),
            SizedBox(
              height: 16,
            ),
            BaseChat(
              assets: 'assets/logo.jpg',
              title: "UNIVERSITAS PAMULANG",
              time: "Kemarin",
              message: 'info intuk UAS besok',
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      children: [
                        Icon(
                          CupertinoIcons.asterisk_circle,
                          color: Color(0xff939395),
                        ),
                        Text('Status')
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        CupertinoIcons.phone,
                        color: Color(0xff939395),
                      ),
                      Text('Panggilan')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        CupertinoIcons.camera,
                        color: Color(0xff939395),
                      ),
                      Text('Kamera')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        CupertinoIcons.chat_bubble_2_fill,
                        color: Colors.lightBlue,
                      ),
                      Text(
                        'Chat',
                        style: TextStyle(color: Colors.lightBlue),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Column(
                      children: [
                        Icon(
                          CupertinoIcons.settings,
                          color: Color(0xff939395),
                        ),
                        Text('Pengaturan')
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BaseChat extends StatefulWidget {
  String assets;
  String title;
  String time;
  String message;

  BaseChat(
      {Key? key,
      required this.assets,
      required this.title,
      required this.time,
      required this.message})
      : super(key: key);

  @override
  _BaseChatState createState() => _BaseChatState();
}

class _BaseChatState extends State<BaseChat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Image.asset(
              widget.assets,
              height: 60.0,
              width: 60.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 420,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Text(
                        widget.time,
                        style: TextStyle(color: Color(0xff939395)),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    (widget.title == "UNIVERSITAS PAMULANG")
                        ? Icon(
                            Icons.photo_camera,
                            color: Color(0xff9c9ca4),
                          )
                        : SizedBox(),
                    (widget.title == "UNIVERSITAS PAMULANG")
                        ? SizedBox(
                            width: 10,
                          )
                        : SizedBox(),
                    Text(
                      widget.message,
                      style: TextStyle(color: Color(0xffc6c6ca)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 1,
                  color: Color(0xffe3e3e5),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
