import 'package:dana_x/page/message/message_page.dart';
import 'package:dana_x/widget/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../models/chat.dart';
import 'component/chat_card.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
          title: "Bạn Bè",
          fontStyle: 20,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.person_add_alt_1))
          ],
          sizeBar: 100,
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.black,
            physics: BouncingScrollPhysics(),
            indicatorWeight: 5,
            tabs: [
              Tab(
                text: "Recent Message",
              ),
              Tab(
                text: "Active",
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: const BouncingScrollPhysics(),
          dragStartBehavior: DragStartBehavior.down,
          children: [
            ListView.builder(
              itemCount: chatsData.length,
              itemBuilder: ((context, index) => ChatCard(
                    chat: chatsData[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MessagePage())),
                  )),
            ),
            const Icon(Icons.directions_transit, size: 350),
          ],
        ),
      ),
    );
  }
}
