import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.onPressed,
    this.textStlye,
    this.text = 'Text',
    this.color = AppColors.blue,
    this.textColor = Colors.white,
    this.width = double.infinity,
    this.verticalPadding = 16.0,
    this.borderRadius = 10.0,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String text;
  final Color color;
  final Color textColor;
  final double width;
  final double verticalPadding;
  final double borderRadius;
  final TextStyle? textStlye;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(vertical: verticalPadding),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: textStlye ??
              TextStyles.s16w400.copyWith(
                color: textColor,
              ),
        ),
      ),
    );
  }
}
