import 'package:fimex/app/app.dart';
import 'package:fimex/app/domain/model/category_card_model.dart';
import 'package:fimex/app/ui/navigation/routes.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:flutter/material.dart';

import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static final categories = [
    CategoryCardModel(text: 'Phones', image: Svgs.phone),
    CategoryCardModel(text: 'Watches', image: Svgs.watches),
    CategoryCardModel(text: 'Tablets', image: Svgs.tablets),
    CategoryCardModel(text: 'Laptops', image: Svgs.laptop),
    CategoryCardModel(text: 'Accesorries', image: Svgs.accesorries),
    CategoryCardModel(text: 'Accesorries', image: Svgs.accesorries),
  ];

  @override
  Widget build(BuildContext context) {
    final cross = ((1.sw - 30) / 100) * 16;
    return ColoredBox(
      color: AppColors.scaffoldBg,
      child: SafeArea(
        child: Column(
          children: [
            const SearchInput(),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  //?
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Image.asset(
                                Images.iphone13,
                                width: double.infinity,
                                //?
                                height: 1.sh > 668 ? 440.0 : 360.0,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        'iPhone 13 Pro',
                                        style: TextStyles.s30w700.copyWith(
                                          color: AppColors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      Text(
                                        'Oh. So. Pro',
                                        style: TextStyles.s20w500.copyWith(
                                          color: AppColors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 18.0,
                                left: 22.0,
                                child: TextButton(
                                  onPressed: () =>
                                      routemaster.push(AppRoutes.homeProduct),
                                  child: Text(
                                    'Buy >',
                                    style: TextStyles.s20w400
                                        .copyWith(color: AppColors.lightBlue),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0)
                              .copyWith(bottom: 20.0, top: 10.0),
                          child: Center(
                            child: Wrap(
                              runSpacing: 10.0,
                              spacing: cross / 2,
                              children: List.generate(
                                categories.length,
                                (index) => CategoryCard(
                                  size: ((1.sw - 30 - cross) / 3).toDouble(),
                                  text: categories[index].text,
                                  image: categories[index].image,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
