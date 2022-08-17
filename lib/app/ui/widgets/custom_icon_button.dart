import 'package:fimex/app/app.dart';
import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    this.onPressed,
    this.widget,
    this.sizeW = 50.0,
    this.sizeH = 40.0,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget? widget;
  final double sizeW;
  final double sizeH;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeW,
      height: sizeH,
      child: TextButton(
        onPressed: onPressed ?? () => routemaster.pop(),
        style: TextButton.styleFrom(
          primary: AppColors.grey2,
          padding: EdgeInsets.zero,
        ),
        child: widget ??
            SvgPicture.asset(
              Svgs.arrowLeft,
              fit: BoxFit.scaleDown,
            ),
      ),
    );
  }
}
