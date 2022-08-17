import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:flutter/material.dart';

class TextWithDots extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  const TextWithDots({Key? key, required this.text, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 3.0,
            height: 3.0,
            margin: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 7.0,
            ),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.main,
            ),
          ),
          Flexible(
            child: Text(
              text,
              style: textStyle ??
                  TextStyles.s14w400.copyWith(color: AppColors.main),
            ),
          ),
        ],
      ),
    );
  }
}
