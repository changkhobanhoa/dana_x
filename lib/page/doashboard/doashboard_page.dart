import 'package:dana_x/page/friends/friends_page.dart';
import 'package:dana_x/page/newfeed/newfeed_page.dart';
import 'package:dana_x/page/user/user_page.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../home/home_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<Widget> widgetList = const [
    HomePage(),
    NewfeedPage(),
    FriendsPage(),
    UserPage(),
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: StylishBottomBar(
        currentIndex: index,
        option: BubbleBarOptions(
          barStyle: BubbleBarStyle.vertical,
          bubbleFillStyle: BubbleFillStyle.fill,
          // bubbleFillStyle: BubbleFillStyle.outlined,
          opacity: 0.3,
        ),
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        items:   [
          BottomBarItem(
            icon: Icon(Icons.home_work_rounded),
            title: Text("Trang Chủ"),
            backgroundColor: Colors.green,
          ),
          BottomBarItem(
            icon: Icon(Icons.newspaper),
            title: Text("Tin tức"),
            backgroundColor: Colors.redAccent,
          ),
          BottomBarItem(
            icon: Icon(Icons.people),
            title: Text("Bạn bè"),
            backgroundColor: Colors.blue,
          ),
          BottomBarItem(
            icon: Icon(Icons.settings),
            title: Text("My account"),
            backgroundColor: Colors.grey,
          ),
        ],
      ),
      body: widgetList[index],
    );
  }
}
