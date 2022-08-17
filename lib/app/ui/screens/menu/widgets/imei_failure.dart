import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:flutter/material.dart';

class IMEIFailResult extends StatelessWidget {
  const IMEIFailResult({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Not in the system',
      style: TextStyles.s16w400.copyWith(color: AppColors.red),
    );
  }
}
