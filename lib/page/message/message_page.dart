import 'package:flutter/material.dart';

import '../../models/chat_message.dart';
import 'component/chat_input_fields.dart';
import 'component/message.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            BackButton(),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
            SizedBox(width: 20 * 0.75),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kristin Watson', style: TextStyle(fontSize: 16)),
                Text('Active 3m ago', style: TextStyle(fontSize: 12))
              ],
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
          const SizedBox(
            width: 20 / 2,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) =>
                  Message(message: demeChatMessages[index]),
            ),
          )),
         
           ChatInputField(),
        ],
      ),
    );
  }
}
