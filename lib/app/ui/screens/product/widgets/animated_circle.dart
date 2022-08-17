import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AnimatedCircle extends StatelessWidget {
  const AnimatedCircle({
    Key? key,
    this.isActive = true,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 2.5),
      width: isActive ? 10.0 : 5.0,
      height: 5.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isActive ? 2 : 100.0),
        color: AppColors.lightGrey,
      ),
    );
  }
}
