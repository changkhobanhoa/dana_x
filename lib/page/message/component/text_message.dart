import 'package:dana_x/common/global_colors.dart';
import 'package:flutter/material.dart';

import '../../../models/chat_message.dart';

 
class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20 * 0.75, vertical: 20 / 2),
      decoration: BoxDecoration(
          color: GlobalColors.bgApp.withOpacity(message.isSender ? 1 : 0.08), borderRadius: BorderRadius.circular(30)),
      child: Text(
        message.text,
        style: TextStyle(color: message.isSender ? Colors.white : Theme.of(context).textTheme.bodyText1?.color),
      ),
    );
  }
}