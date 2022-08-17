import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  const PriceText({
    Key? key,
    required this.price,
    required this.pennyPrice,
    this.priceStyle,
    this.pennyPriceStyle,
    this.isTrim = false,
  }) : super(key: key);

  final String price;
  final String pennyPrice;
  final bool isTrim;
  final TextStyle? priceStyle;
  final TextStyle? pennyPriceStyle;

  @override
  Widget build(BuildContext context) {
    final text = isTrim ? price : ' $price ';
    return Text.rich(
      TextSpan(
        style: pennyPriceStyle ??
            TextStyles.s12w400.copyWith(
              color: AppColors.grey2,
              fontSize: 8.0,
            ),
        children: [
          const TextSpan(text: '\$'),
          WidgetSpan(
            alignment: PlaceholderAlignment.top,
            child: Text(
              text,
              style: priceStyle ??
                  TextStyles.s12w400.copyWith(
                    color: AppColors.grey2,
                  ),
            ),
          ),
          TextSpan(text: pennyPrice),
        ],
      ),
    );
  }
}
