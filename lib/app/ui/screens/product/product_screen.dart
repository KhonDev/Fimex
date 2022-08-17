import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';

import 'widgets/index.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool _isFavorite = false;
  int _currentPage = 0;

  final _quantityController = TextEditingController(text: '0');

  void _toggleFavorite() => setState(() => _isFavorite = !_isFavorite);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //?
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: const [
                  CustomIconButton(),
                  Flexible(child: SearchInput()),
                ],
              ),
              const SizedBox(height: 10.0),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                      child: Text(
                        'Apple iPhone 13 256GB',
                        style:
                            TextStyles.s16w500.copyWith(color: AppColors.grey2),
                      ),
                    ),
                    SizedBox(
                      height: 375.0,
                      child: Stack(
                        children: <Widget>[
                          PageView.builder(
                            itemCount: 4,
                            onPageChanged: (value) {
                              setState(() => _currentPage = value);
                            },
                            itemBuilder: (context, index) => Image.asset(
                              index % 2 == 0
                                  ? Images.bigIphoneProduct
                                  : Images.iphone13,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 10.0,
                            child: IgnorePointer(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  4,
                                  (index) => AnimatedCircle(
                                      isActive: index == _currentPage),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20.0,
                            bottom: 20.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: CustomIconButton(
                                onPressed: _toggleFavorite,
                                widget: Icon(
                                  _isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_outline_rounded,
                                  color: _isFavorite
                                      ? AppColors.red
                                      : AppColors.inactiveColor,
                                  size: 28.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0).copyWith(top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Pre-order:',
                            style: TextStyles.s16w600.copyWith(
                              color: AppColors.grey2,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Image.asset(
                                Images.uae,
                                width: 19.0,
                                height: 19.0,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(width: 5.0),
                              Expanded(
                                child: Text(
                                  'UAE',
                                  style: TextStyles.s16w600
                                      .copyWith(color: AppColors.grey2),
                                ),
                              ),
                              Text(
                                'Departure Date:',
                                style: TextStyles.s14w400
                                    .copyWith(color: AppColors.grey2),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 12.0),
                                child: Text(
                                  '12.05.2022',
                                  style: TextStyles.s16w500
                                      .copyWith(color: AppColors.grey2),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: Image.asset(
                                  Images.airplane,
                                  width: 20.0,
                                  height: 20.0,
                                  alignment: Alignment.bottomCenter,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                            child: CustomDivider(),
                          ),
                          Column(
                            children: List.generate(
                              4,
                              (index) => const Padding(
                                padding: EdgeInsets.only(bottom: 15.0),
                                child: ProductInfoGroup(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 5.0, bottom: 20.0),
                            child: Text(
                              'Select one of the specifications',
                              style: TextStyles.s16w400.copyWith(
                                color: AppColors.main,
                              ),
                            ),
                          ),
                          Wrap(
                            runSpacing: 10.0,
                            spacing: 10.0,
                            children: [
                              SpecificationButton(
                                text: "All",
                                isActive: true,
                                isAll: true,
                                onPressed: () {},
                              ),
                              SpecificationButton(
                                text: "Japan",
                                leadingImage: Images.japan,
                                onPressed: () {},
                              ),
                              SpecificationButton(
                                text: "UK",
                                leadingImage: Images.australia,
                                onPressed: () {},
                              ),
                              SpecificationButton(
                                text: "USA",
                                leadingImage: Images.us,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const CustomDivider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0)
                          .copyWith(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Enter your quantity',
                            style: TextStyles.s16w400
                                .copyWith(color: AppColors.main),
                          ),
                          const SizedBox(height: 20.0),
                          Row(
                            children: <Widget>[
                              Text(
                                'Qty',
                                style: TextStyles.s16w500
                                    .copyWith(color: AppColors.inactiveColor),
                              ),
                              const SizedBox(width: 10.0),
                              SizedBox(
                                width: 60.0,
                                child: TextField(
                                  controller: _quantityController,
                                  style: TextStyles.s16w500
                                      .copyWith(color: AppColors.inactiveColor),
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  cursorColor: AppColors.inactiveColor,
                                  showCursor: false,
                                  maxLength: 2,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 2.0),
                                    isCollapsed: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: AppColors.inactiveColor,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: AppColors.inactiveColor,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    counterText: '',
                                  ),
                                ),
                              ),
                              const Spacer(),
                              PriceText(
                                price: '0',
                                pennyPrice: '00',
                                priceStyle: TextStyles.s22w500.copyWith(
                                  color: AppColors.inactiveColor,
                                ),
                                pennyPriceStyle: TextStyles.s16w400.copyWith(
                                  color: AppColors.inactiveColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          const CustomButton(
                            onPressed: null,
                            text: 'Buy Now',
                            textColor: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 25.0),
                      child: CustomDivider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Product Description',
                            style: TextStyles.s16w700
                                .copyWith(color: AppColors.main),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            'iPhone 13 Pro Max. The biggest Pro camera system upgrade ever. Super Retina XDR display with ProMotion for a faster, more responsive feel. Lightning-fast A15 Bionic chip. Durable design and the best battery life ever in an iPhone.',
                            style: TextStyles.s14w400
                                .copyWith(color: AppColors.main),
                          ),
                        ],
                      ),
                    ),
                    const CustomDivider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Features & Detail',
                            style: TextStyles.s16w700
                                .copyWith(color: AppColors.main),
                          ),
                          const SizedBox(height: 10.0),
                          const TextWithDots(
                            text:
                                '6.7-inch Super Retina XDR display with ProMotion for a faster, more responsive feel',
                          ),
                          const TextWithDots(
                            text:
                                'Cinematic mode adds shallow depth of field and shifts focus automatically in your videos',
                          ),
                          const TextWithDots(
                            text:
                                'Cinematic mode adds shallow depth of field and shifts focus automatically in your videos',
                          ),
                          const TextWithDots(
                            text:
                                '6.7-inch Super Retina XDR display with ProMotion for a faster, more responsive feel',
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: CustomDivider(),
                    ),
                    SizedBox(
                      height: 230.0,
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (_, __) =>
                            const SizedBox(width: 20.0),
                        itemBuilder: (context, index) =>
                            const SmallProductCard(),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
