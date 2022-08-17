import 'package:fimex/app/app.dart';
import 'package:fimex/app/ui/navigation/routes.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  final double size;
  final String text;
  final String image;
  final VoidCallback? onPressed;
  const CategoryCard({
    Key? key,
    required this.text,
    required this.image,
    this.onPressed,
    this.size = 100.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ElevatedButton(
        onPressed: onPressed ?? () => routemaster.push(AppRoutes.brands),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.zero,
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              image,
              width: 34.0,
              height: 34.0,
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(height: 10.0),
            Text(
              text,
              style: TextStyles.s16w500.copyWith(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
