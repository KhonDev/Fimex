import 'package:flutter/material.dart';

import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';

class AccountInput extends StatelessWidget {
  final TextEditingController? controller;
  final String text;
  final TextInputType inputType;
  final Function(String)? onChanged;
  const AccountInput({
    Key? key,
    this.onChanged,
    this.controller,
    required this.text,
    this.inputType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.black,
      keyboardType: inputType,
      onChanged: onChanged,
      style: TextStyles.s16w400.copyWith(color: AppColors.main),
      decoration: InputDecoration(
        isDense: true,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        label: Text(
          text,
          style: TextStyles.s14w100.copyWith(
            color: AppColors.main,
          ),
        ),
      ),
    );
  }
}
