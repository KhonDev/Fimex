import 'package:fimex/app/ui/widgets/index.dart';
import 'package:flutter/material.dart';

import '../order_info_item.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20.0),
      itemCount: 11,
      itemBuilder: (context, index) {
        if (index == 0) {
          return const CustomDivider();
        }
        return const OrderInfoItem();
      },
    );
  }
}
