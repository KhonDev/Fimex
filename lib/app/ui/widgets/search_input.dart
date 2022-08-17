import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  //?
  final _controller = TextEditingController();
  final _focus = FocusNode();
  bool _isTextEmpty = true;
  final borderStyle = const OutlineInputBorder(
    borderRadius: BorderRadius.zero,
    borderSide: BorderSide(
      color: AppColors.greyText,
    ),
  );

  final errorBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.zero,
    borderSide: BorderSide(
      color: AppColors.red,
    ),
  );

  void onFocused() {
    _isTextEmpty = !_focus.hasFocus || _controller.text.trim().isEmpty;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      focusNode: _focus,
      textAlign: _isTextEmpty ? TextAlign.center : TextAlign.start,
      cursorColor: AppColors.main,
      textInputAction: TextInputAction.search,
      onChanged: (_) => onFocused(),
      style: TextStyles.s16w400.copyWith(color: AppColors.main),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15.0)
            .copyWith(right: _isTextEmpty ? 50.0 : 10.0),
        isCollapsed: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: SvgPicture.asset(
            Svgs.search,
            width: 20.0,
            height: 20.0,
            fit: BoxFit.scaleDown,
          ),
        ),
        suffixIcon: _isTextEmpty
            ? null
            : Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: CustomIconButton(
                  onPressed: () {
                    _showFilter(context);
                  },
                  sizeW: 30.0,
                  sizeH: 30.0,
                  widget: SvgPicture.asset(
                    Svgs.filter,
                    fit: BoxFit.scaleDown,
                    color: AppColors.greyDark,
                  ),
                ),
              ),
        hintText: 'Find',
        hintStyle: TextStyles.s16w500.copyWith(color: AppColors.inactiveColor),
        focusedBorder: borderStyle,
        enabledBorder: borderStyle,
        focusedErrorBorder: errorBorder,
        errorBorder: errorBorder,
      ),
    );
  }

  Future<dynamic> _showFilter(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
      ),
      builder: (context) => Container(
        height: .62.sh,
        padding: const EdgeInsets.only(top: 10.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'CLOSE',
                    style: TextStyles.s16w600.copyWith(color: AppColors.main),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  const CustomDivider(color: AppColors.cardGrey),
                  FilterExpansion(
                    title: 'Model',
                    child: ButtonGroups(
                      childrens: [
                        SizedBox(
                          height: 24.0,
                          child: SpecificationButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 2.0,
                            ),
                            minimumSize: const Size(63.0, 24.0),
                            text: 'Iphone 12',
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                          child: SpecificationButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 2.0,
                            ),
                            minimumSize: const Size(63.0, 24.0),
                            text: 'Iphone 12 Pro',
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                          child: SpecificationButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 2.0,
                            ),
                            minimumSize: const Size(63.0, 24.0),
                            text: 'Iphone 13 mini',
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                          child: SpecificationButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 2.0,
                            ),
                            minimumSize: const Size(63.0, 24.0),
                            text: 'Iphone 13',
                            isActive: true,
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                          child: SpecificationButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 2.0,
                            ),
                            minimumSize: const Size(63.0, 24.0),
                            text: 'Iphone 13 Pro',
                            isActive: true,
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                          child: SpecificationButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 2.0,
                            ),
                            minimumSize: const Size(63.0, 24.0),
                            text: 'Iphone 13 Pro MAX',
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CustomDivider(color: AppColors.cardGrey),
                  FilterExpansion(
                    title: 'Size',
                    child: ButtonGroups(
                      childrens: [
                        SizedBox(
                          height: 24.0,
                          child: SpecificationButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 2.0,
                            ),
                            minimumSize: const Size(63.0, 24.0),
                            text: '128GB',
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                          child: SpecificationButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 2.0,
                            ),
                            minimumSize: const Size(63.0, 24.0),
                            text: '256GB',
                            isActive: true,
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                          child: SpecificationButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 2.0,
                            ),
                            minimumSize: const Size(63.0, 24.0),
                            text: '512GB',
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CustomDivider(color: AppColors.cardGrey),
                  FilterExpansion(
                    title: 'Color',
                    child: ButtonGroups(
                      childrens: [
                        SizedBox(
                          height: 24.0,
                          child: SpecificationButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 2.0,
                            ),
                            minimumSize: const Size(63.0, 24.0),
                            text: 'Red',
                            action: const CircleColorBox(
                              size: 11,
                              color: AppColors.red,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                          child: SpecificationButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 2.0,
                            ),
                            minimumSize: const Size(63.0, 24.0),
                            text: 'Rose',
                            isActive: true,
                            action: const CircleColorBox(
                              size: 11,
                              color: AppColors.brown,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CustomDivider(color: AppColors.cardGrey),
                  FilterExpansion(
                    title: 'Specification',
                    child: ButtonGroups(
                      childrens: [
                        SizedBox(
                          height: 24.0,
                          child: SpecificationButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 2.0,
                            ),
                            minimumSize: const Size(63.0, 24.0),
                            text: 'USA',
                            leadingImage: Images.us,
                            leadingImageSize: 17.0,
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                          child: SpecificationButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 2.0,
                            ),
                            minimumSize: const Size(63.0, 24.0),
                            text: 'Japan',
                            isActive: true,
                            leadingImage: Images.japan,
                            leadingImageSize: 17.0,
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                          child: SpecificationButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 2.0,
                            ),
                            minimumSize: const Size(63.0, 24.0),
                            text: 'UK',
                            leadingImage: Images.australia,
                            leadingImageSize: 17.0,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CustomDivider(color: AppColors.cardGrey),
                  FilterExpansion(
                    title: 'Pre-order',
                    child: ButtonGroups(childrens: [
                      SizedBox(
                        height: 24.0,
                        child: SpecificationButton(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 2.0,
                          ),
                          minimumSize: const Size(63.0, 24.0),
                          text: 'UAE',
                          isActive: true,
                          leadingImage: Images.uae,
                          leadingImageSize: 17.0,
                          onPressed: () {},
                        ),
                      ),
                    ]),
                  ),
                  const CustomDivider(color: AppColors.cardGrey),
                  const SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: CustomButton(
                        onPressed: () {},
                        width: 150.0,
                        verticalPadding: 11.0,
                        text: 'Show Results',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}

class FilterExpansion extends StatefulWidget {
  const FilterExpansion({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  State<FilterExpansion> createState() => _FilterExpansionState();
}

class _FilterExpansionState extends State<FilterExpansion> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      onExpansionChanged: (value) {
        setState(() => isOpen = value);
      },
      expandedAlignment: Alignment.centerLeft,
      childrenPadding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      title: Text(
        widget.title,
        style: TextStyles.s16w700.copyWith(color: AppColors.main),
      ),
      trailing: isOpen
          ? SvgPicture.asset(Svgs.arrowUp)
          : SvgPicture.asset(Svgs.arrowDown),
      children: [widget.child],
    );
  }
}

class ButtonGroups extends StatelessWidget {
  const ButtonGroups({Key? key, required this.childrens}) : super(key: key);

  final List<Widget> childrens;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10.0,
      spacing: 20.0,
      children: List.generate(
        childrens.length,
        (index) => childrens[index],
      ),
    );
  }
}
