import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';

import 'cart_product.dart';

class CardData extends StatelessWidget {
  const CardData({
    Key? key,
  }) : super(key: key);

  static final _cartInfo = ['Checkpoint:', 'Status:', 'Delivery:'];
  static final _cartInfoData = [
    '12.05.2022',
    'The order is being',
    'Departure Date: 12.05.2022'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              physics: const RangeMaintainingScrollPhysics(),
              children: [
                Row(
                  children: <Widget>[
                    Image.asset(
                      Images.uae,
                      width: 24.0,
                      height: 24.0,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      'UAE: №JY07RY33',
                      style: TextStyles.s20w600.copyWith(
                        color: AppColors.grey2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        _cartInfo.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            _cartInfo[index],
                            style: TextStyles.s14w500.copyWith(
                              color: AppColors.main,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 11.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(_cartInfoData.length, (index) {
                        if (index == 2) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  _cartInfoData[index],
                                  style: TextStyles.s14w400.copyWith(
                                    color: AppColors.grey2,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 5.0,
                                    left: 12.0,
                                  ),
                                  child: Image.asset(
                                    Images.airplane,
                                    width: 13.0,
                                    height: 13.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            _cartInfoData[index],
                            style: TextStyles.s14w400.copyWith(
                              color: AppColors.grey2,
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                  child: Column(
                    //?
                    children: List.generate(4 + 1, (index) {
                      if (index == 4) return const CustomDivider();

                      return Column(
                        children: const [
                          CustomDivider(),
                          CartProduct(),
                        ],
                      );
                    }),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Order Total:',
                      style: TextStyles.s16w400.copyWith(
                        color: AppColors.blue,
                      ),
                    ),
                    const SizedBox(width: 11.0),
                    PriceText(
                      price: '38 167',
                      pennyPrice: '60',
                      priceStyle:
                          TextStyles.s16w600.copyWith(color: AppColors.grey2),
                      pennyPriceStyle: TextStyles.s12w500.copyWith(
                        color: AppColors.grey2,
                        fontSize: 10.0,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0)
                .copyWith(bottom: 20.0),
            child: CustomButton(
              onPressed: () {},
              text: 'Get Invoice',
            ),
          ),
        ],
      ),
    );
  }
}
