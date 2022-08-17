import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:flutter/material.dart';

class ChangePinInput extends StatelessWidget {
  const ChangePinInput({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.main,
      style: TextStyles.s14w400.copyWith(color: AppColors.main),
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: TextStyles.s12w300.copyWith(
          color: AppColors.inactiveColor,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 13.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
