import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:flutter/material.dart';

class SpecificationButton extends StatelessWidget {
  const SpecificationButton({
    Key? key,
    this.leadingImage,
    this.leadingImageSize = 19.0,
    this.action,
    this.isActive = false,
    this.isAll = false,
    this.isError = false,
    this.minimumSize = const Size(38.0, 40.0),
    required this.text,
    required this.onPressed,
    this.padding = const EdgeInsets.all(10.0),
  }) : super(key: key);

  final String? leadingImage;
  final double leadingImageSize;
  final Widget? action;
  final String text;
  final bool isActive;
  final bool isAll;
  final bool isError;
  final Size minimumSize;
  final EdgeInsets padding;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        primary: isError && isActive
            ? AppColors.red.withOpacity(.5)
            : isError && isActive
                ? AppColors.blue.withOpacity(.4)
                : AppColors.grey2,
        padding: padding,
        side: BorderSide(
          color: isError && isActive
              ? AppColors.red
              : isActive
                  ? AppColors.blue
                  : AppColors.inactiveColor,
        ),
        minimumSize: minimumSize,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leadingImage != null) ...[
            Image.asset(
              leadingImage!,
              width: leadingImageSize,
              height: leadingImageSize,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 10.0)
          ],
          Text(
            text,
            style: TextStyles.s16w600.copyWith(
              color: isError && isActive
                  ? AppColors.red
                  : isActive
                      ? AppColors.blue
                      : AppColors.grey2,
            ),
          ),
          if (action != null) ...[const SizedBox(width: 5.0), action!],
          if (isActive && !isAll) ...[
            const SizedBox(width: 12.0),
            const Icon(
              Icons.close,
              size: 17.0,
              color: Colors.black,
            ),
          ],
        ],
      ),
    );
  }
}
