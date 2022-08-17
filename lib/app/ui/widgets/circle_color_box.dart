import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CircleColorBox extends StatelessWidget {
  final double size;
  final Color color;
  const CircleColorBox({
    Key? key,
    this.size = 17.0,
    this.color = AppColors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.main),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: ColoredBox(color: color),
      ),
    );
  }
}
