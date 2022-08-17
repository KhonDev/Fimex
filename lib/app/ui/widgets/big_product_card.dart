import 'package:fimex/app/app.dart';
import 'package:fimex/app/ui/navigation/routes.dart';
import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'circle_color_box.dart';
import 'price_text.dart';

class BigProductCard extends StatelessWidget {
  const BigProductCard({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  static final _colors = [
    AppColors.red,
    AppColors.blueDark,
    AppColors.brown,
    AppColors.lightBlack,
    AppColors.lightWhite,
  ];

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.greyText),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    Images.iphoneProduct,
                    width: 133.0,
                    height: 152.0,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    right: 10.0,
                    bottom: 29.0,
                    child: Container(
                      width: 23.0,
                      height: 23.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.greyBorder),
                      ),
                      child: SvgPicture.asset(
                        Svgs.arrowRight,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Apple iPhone 13 256GB',
                      style: TextStyles.s16w400.copyWith(color: Colors.black),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: PriceText(
                        price: '404',
                        pennyPrice: '95',
                        isTrim: true,
                        priceStyle:
                            TextStyles.s16w500.copyWith(color: Colors.black),
                        pennyPriceStyle:
                            TextStyles.s12w500.copyWith(color: Colors.black),
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Get it as soon as  ',
                            style: TextStyles.s12w300
                                .copyWith(color: AppColors.grey2),
                          ),
                          TextSpan(
                            text: 'Tomorrow, May 12',
                            style: TextStyles.s12w500
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        'FREE Shipping',
                        style:
                            TextStyles.s12w300.copyWith(color: AppColors.grey2),
                      ),
                    ),
                    Text(
                      '82 left in stock',
                      style: TextStyles.s12w300.copyWith(color: AppColors.red),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: List.generate(
                        _colors.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: CircleColorBox(
                            color: _colors[index],
                          ),
                        ),
                      ),
                    )
                  ],
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
              onTap: onPressed ?? () => routemaster.push(AppRoutes.product),
            ),
          ),
        ),
      ],
    );
  }
}
