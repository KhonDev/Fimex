import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';

import 'index.dart';

class SmallProductCard extends StatelessWidget {
  const SmallProductCard({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  static final _colors = [
    AppColors.red,
    AppColors.blueDark,
    AppColors.brown,
    AppColors.lightBlack,
  ];

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 125.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.cardGrey,
            ),
          ),
          child: Column(
            children: <Widget>[
              Image.asset(
                Images.iphoneProduct,
                width: 120.0,
                height: 120.0,
                fit: BoxFit.fill,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: List.generate(
                          _colors.length + 1,
                          (index) {
                            if (index == 4) {
                              return Text(
                                '+1',
                                style: TextStyles.s10w300
                                    .copyWith(color: AppColors.greyText),
                              );
                            }
                            return Padding(
                              padding: EdgeInsets.only(
                                right: index == 3 ? 4.0 : 6.0,
                              ),
                              child: CircleColorBox(
                                color: _colors[index],
                              ),
                            );
                          },
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            'Apple iPhone 13 256GB',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyles.s14w400
                                .copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                      PriceText(
                        price: '404',
                        pennyPrice: '95',
                        isTrim: true,
                        priceStyle:
                            TextStyles.s16w500.copyWith(color: AppColors.black),
                        pennyPriceStyle:
                            TextStyles.s12w500.copyWith(color: AppColors.black),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: AppColors.grey2.withOpacity(.1),
              highlightColor: Colors.white.withOpacity(.2),
              onTap: onPressed,
            ),
          ),
        ),
      ],
    );
  }
}
