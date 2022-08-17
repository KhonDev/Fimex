import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    Key? key,
    this.isUser = true,
    this.userName = 'Alex',
  }) : super(key: key);

  final bool isUser;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 275.0,
          child: Column(
            children: <Widget>[
              isUser
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '12:36 12.05.2022',
                          style: TextStyles.s14w300
                              .copyWith(color: AppColors.grey2),
                        ),
                        Text(
                          userName,
                          style: TextStyles.s16w600
                              .copyWith(color: AppColors.main),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Support',
                          style: TextStyles.s16w600
                              .copyWith(color: AppColors.main),
                        ),
                        Text(
                          '12:36 12.05.2022',
                          style: TextStyles.s14w300
                              .copyWith(color: AppColors.grey2),
                        ),
                      ],
                    ),
              const SizedBox(height: 10.0),
              Text(
                'iPhone 13 Pro Max. The biggest Pro camera system upgrade ever. Super Retina XDR display with ProMotion for a faster, more responsive feel. Lightning-fast A15 Bionic chip. Durable design and the best battery life ever in an iPhone.',
                textAlign: isUser ? TextAlign.right : TextAlign.start,
                style: TextStyles.s14w400.copyWith(color: AppColors.main),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
