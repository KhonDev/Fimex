import 'package:fimex/app/app.dart';
import 'package:flutter/material.dart';
import 'package:fimex/app/ui/widgets/index.dart';

import 'widgets/index.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //?
    final path = routemaster.currentConfiguration?.path;
    final isPathCart = path == '/cart';
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            isPathCart
                ? const SearchInput()
                : Row(
                    children: const [
                      CustomIconButton(),
                      Flexible(child: SearchInput()),
                    ],
                  ),
            const SizedBox(height: 20.0),
            // EmptyWidget(onPressed: () {}),
            const CardData(),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
