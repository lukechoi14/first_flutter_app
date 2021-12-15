import 'package:contact/feed_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'feed.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex=0;
  final List<Widget> __children= const [
     FeedPage(), //0
     About(), //1
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: __children[_currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index){
          setState(() {
            _currentIndex=index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: const Text("Feed"),
            icon: const Icon(Icons.home)
          ),
          BottomNavyBarItem(
              title: const Text("My"),
              icon: const Icon(Icons.person)
          ),
          // BottomNavyBarItem(
          //     title: const Text("Chat"),
          //     icon: const Icon(Icons.chat_bubble)
          // ),
        ],
      ),
    );
  }
}
