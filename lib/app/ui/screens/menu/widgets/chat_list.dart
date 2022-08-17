import 'package:fimex/app/ui/widgets/index.dart';
import 'package:flutter/material.dart';

import 'chat_list_item.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListView.builder(
        padding:
            const EdgeInsets.symmetric(horizontal: 20.0).copyWith(bottom: 20.0),
        itemCount: 5,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const CustomDivider();
          }

          return const ChatListItem();
        },
      ),
    );
  }
}
