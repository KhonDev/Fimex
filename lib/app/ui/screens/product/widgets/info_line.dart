import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';

class ProductInfoLine extends StatelessWidget {
  const ProductInfoLine({
    Key? key,
    this.country = Images.australia,
    this.countryCode = '1',
    this.price = ' 1007',
    this.pennyPrice = '95',
    this.productCount = '98',
  }) : super(key: key);

  final String country;
  final String countryCode;
  final String price;
  final String pennyPrice;
  final String productCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 10.0),
                  Image.asset(
                    country,
                    width: 30.0,
                    height: 30.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(width: 25.0),
                  Text(
                    '$countryCode+',
                    style: TextStyles.s14w500.copyWith(color: AppColors.grey2),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: PriceText(
                  price: price,
                  pennyPrice: ' $pennyPrice',
                  isTrim: true,
                  priceStyle:
                      TextStyles.s16w600.copyWith(color: AppColors.grey2),
                  pennyPriceStyle:
                      TextStyles.s12w400.copyWith(color: AppColors.grey2),
                ),
              ),
            ),
            Expanded(
              child: Text(
                '$productCount pcs',
                textAlign: TextAlign.right,
                style: TextStyles.s14w500.copyWith(color: AppColors.grey2),
              ),
            ),
          ],
        ),
        const CustomDivider(),
      ],
    );
  }
}
