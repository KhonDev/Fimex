import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';

class CartProduct extends StatelessWidget {
  const CartProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 50.0,
            height: 50.0,
            child: Image.asset(
              Images.iphoneProduct,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 5.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    Images.japan,
                    width: 17.0,
                    height: 17.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    'iPhone 13 256GB Rose 2643 AA/A',
                    style: TextStyles.s14w300.copyWith(color: AppColors.grey2),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: <Widget>[
                  const PriceText(
                    price: '1003',
                    pennyPrice: '95',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      '10 pcs',
                      style: TextStyles.s12w400.copyWith(
                        color: AppColors.grey2,
                      ),
                    ),
                  ),
                  PriceText(
                    price: '10 039',
                    pennyPrice: '50',
                    priceStyle: TextStyles.s12w500.copyWith(
                      color: AppColors.grey2,
                    ),
                    pennyPriceStyle: TextStyles.s12w500.copyWith(
                      color: AppColors.grey2,
                      fontSize: 8.0,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
