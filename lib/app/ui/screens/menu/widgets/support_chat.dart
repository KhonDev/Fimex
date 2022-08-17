import 'package:flutter/material.dart';

import 'chat_item.dart';

class SupportChat extends StatelessWidget {
  const SupportChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView.separated(
        itemCount: 4,
        padding:
            const EdgeInsets.symmetric(horizontal: 20.0).copyWith(bottom: 20.0),
        separatorBuilder: (_, __) => const SizedBox(height: 20.0),
        itemBuilder: (context, index) {
          //?
          return ChatItem(isUser: index % 2 == 0);
        },
      ),
    );
  }
}
