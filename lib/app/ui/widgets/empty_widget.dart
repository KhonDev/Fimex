import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    Key? key,
    this.isCart = true,
    this.emptyText = 'Empty',
    this.buttonText = 'Start Shopping',
    required this.onPressed,
  }) : super(key: key);

  final bool isCart;
  final String emptyText;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            isCart
                ? Row(
                    children: <Widget>[
                      Image.asset(Images.cartEmpty),
                      const SizedBox(width: 15.0),
                      Text(
                        'Cart Empty',
                        style:
                            TextStyles.s20w600.copyWith(color: AppColors.grey2),
                      ),
                    ],
                  )
                : Text(
                    emptyText,
                    style: TextStyles.s16w500.copyWith(
                      color: AppColors.main,
                    ),
                  ),
            Expanded(
              child: Image.asset(
                Images.emptyBg,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: CustomButton(
                onPressed: onPressed,
                text: buttonText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
