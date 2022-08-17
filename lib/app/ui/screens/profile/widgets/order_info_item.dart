import 'package:fimex/app/app.dart';
import 'package:fimex/app/ui/navigation/routes.dart';
import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => routemaster.push(AppRoutes.orderInfo),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 5.0),
          Row(
            children: <Widget>[
              Image.asset(
                Images.uae,
                width: 17.0,
                height: 17.0,
                fit: BoxFit.fill,
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Text(
                  'UAE: №JY07RY33',
                  style: TextStyles.s14w500.copyWith(color: AppColors.grey2),
                ),
              ),
              Text(
                'Order is completed',
                style: TextStyles.s14w400.copyWith(color: AppColors.grey2),
              ),
            ],
          ),
          const SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '12.05.2022',
                style: TextStyles.s14w300.copyWith(color: AppColors.grey2),
              ),
              PriceText(
                price: '38167',
                priceStyle: TextStyles.s14w300.copyWith(color: AppColors.grey2),
                pennyPrice: '60',
                pennyPriceStyle:
                    TextStyles.s10w300.copyWith(color: AppColors.grey2),
              )
            ],
          ),
          const SizedBox(height: 5.0),
          const CustomDivider(),
        ],
      ),
    );
  }
}
