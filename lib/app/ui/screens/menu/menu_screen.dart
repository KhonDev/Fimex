import 'package:fimex/app/domain/providers/menu_state.dart';

import 'package:flutter/material.dart';
import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:provider/provider.dart';

import 'widgets/index.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //?
    final _selectedTab = context.select((MenuState vm) => vm.selectedTab);
    final _isChatActive = context.select((MenuState vm) => vm.isChatActive);
    final _read = context.read<MenuState>();
    return SafeArea(
      child: Column(
        children: [
          _isChatActive && _selectedTab == 2
              ? Row(
                  children: [
                    CustomIconButton(
                      onPressed: _read.toogleChat,
                    ),
                    const Flexible(child: SearchInput()),
                  ],
                )
              : const SearchInput(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: SizedBox(
              height: 40.0,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
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
          ),
          if (_selectedTab == 2)
            _isChatActive
                ? const ChatInput()
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0)
                        .copyWith(top: 10.0, bottom: 40.0),
                    child: CustomButton(
                      onPressed: _read.toogleChat,
                      text: 'Contact Support',
                    ),
                  ),
        ],
      ),
    );
  }
}
