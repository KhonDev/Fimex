import 'package:fimex/app/domain/providers/menu_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../index.dart';

class SupportTab extends StatelessWidget {
  const SupportTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //?
    final _isChatActive = context.select((MenuState vm) => vm.isChatActive);
    return _isChatActive ? const SupportChat() : const ChatList();
  }
}
