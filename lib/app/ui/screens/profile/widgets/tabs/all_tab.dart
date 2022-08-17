import 'package:fimex/app/app.dart';
import 'package:fimex/app/domain/providers/profile_state.dart';
import 'package:fimex/app/ui/navigation/routes.dart';
import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../order_info_item.dart';

class AllTab extends StatelessWidget {
  const AllTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _read = context.read<ProfileState>();
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView(
        padding: const EdgeInsets.only(bottom: 20.0),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Your Orders',
                  style: TextStyles.s16w600.copyWith(color: AppColors.main),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 20.0,
                  ),
                  child: Column(
                    children: List.generate(
                      6,
                      (index) {
                        if (index == 0) {
                          return const CustomDivider();
                        }
                        return const OrderInfoItem();
                      },
                    ),
                  ),
                ),
                SpecificationButton(
                  text: 'See All',
                  onPressed: () => _read.changeTab(0),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20.0,
              bottom: 10.0,
            ),
            child: CustomDivider(
              size: 3.0,
              radius: 0.0,
              color: AppColors.cardGrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Account',
                  style: TextStyles.s16w600.copyWith(color: AppColors.main),
                ),
                const SizedBox(height: 10.0),
                const AccountInput(text: 'Name'),
                const AccountInput(
                    text: 'Phone', inputType: TextInputType.phone),
                const AccountInput(text: 'Region'),
                const SizedBox(height: 20.0),
                SpecificationButton(
                  text: 'Manage',
                  onPressed: () => _read.changeTab(1),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: CustomDivider(
              size: 3.0,
              radius: 0.0,
              color: AppColors.cardGrey,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Your Likes',
                  style: TextStyles.s16w600.copyWith(color: AppColors.main),
                ),
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                height: 230.0,
                child: ListView.separated(
                  itemCount: 6,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) => const SizedBox(width: 20.0),
                  itemBuilder: (context, index) => SmallProductCard(
                    onPressed: () =>
                        routemaster.push(AppRoutes.profileLikeProduct),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SpecificationButton(
                  text: 'See All',
                  onPressed: () => _read.changeTab(2),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
