import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routemaster/routemaster.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  final icons = [
    Svgs.home,
    Svgs.user,
    Svgs.cart,
    Svgs.menu,
  ];

  void onTapped(int index, TabPageState pageState) {
    // if (index == 0) {
    //   routemaster.push(AppRoutes.home);
    // } else {
    //   pageState.index = index;
    //   setState(() {});
    // }

    pageState.index = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final pageState = TabPage.of(context);
    final selectedIndex = pageState.index;
    final stack = pageState.stacks[selectedIndex];

    return Scaffold(
      extendBody: true,
      body: AnimatedSwitcher(
        duration: kThemeAnimationDuration,
        child: PageStackNavigator(
          key: ValueKey(selectedIndex),
          stack: stack,
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 1.sh > 668 ? 83.0 : 63.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 10),
              blurRadius: 20,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            icons.length,
            (index) => Expanded(
              child: IconButton(
                padding: const EdgeInsets.only(bottom: 15.0),
                iconSize: 24.0,
                onPressed: () => onTapped(index, pageState),
                icon: SvgPicture.asset(
                  icons[index],
                  color: selectedIndex == index
                      ? AppColors.blue
                      : AppColors.inactiveColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
