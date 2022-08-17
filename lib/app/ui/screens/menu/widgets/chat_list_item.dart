import 'package:fimex/app/domain/providers/menu_state.dart';
import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _read = context.read<MenuState>();
    return InkWell(
      onTap: _read.toogleChat,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'What is this?',
                style: TextStyles.s14w400.copyWith(color: AppColors.grey2),
              ),
              Text(
                'Current',
                style: TextStyles.s14w400.copyWith(color: AppColors.grey2),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              '12.05.2022',
              style: TextStyles.s14w300.copyWith(color: AppColors.grey2),
            ),
          ),
          const CustomDivider(),
        ],
      ),
    );
  }
}
