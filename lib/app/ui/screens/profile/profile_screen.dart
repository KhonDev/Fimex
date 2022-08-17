import 'package:fimex/app/domain/providers/profile_state.dart';
import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selectedTab = context.select((ProfileState vm) => vm.selectedTab);
    final _read = context.read<ProfileState>();
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchInput(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text.rich(
                  TextSpan(
                    style: TextStyles.s20w400.copyWith(color: AppColors.grey2),
                    children: [
                      const TextSpan(text: 'Hello, '),
                      TextSpan(
                        text: 'Alex',
                        style:
                            TextStyles.s20w600.copyWith(color: AppColors.grey2),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 40.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: _read.tabsTitle.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 20.0),
                    itemBuilder: (context, index) => SpecificationButton(
                      text: _read.tabsTitle[index],
                      isAll: true,
                      isActive: _selectedTab == index,
                      onPressed: () => _read.changeTab(index),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const CustomDivider(
            size: 3.0,
            color: AppColors.cardGrey,
            radius: 0,
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: kThemeAnimationDuration,
              child: _read.tabs[_selectedTab],
            ),
          )
        ],
      ),
    );
  }
}
