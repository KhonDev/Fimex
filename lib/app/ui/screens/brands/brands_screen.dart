import 'package:fimex/app/app.dart';
import 'package:fimex/app/ui/navigation/routes.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: const [
                CustomIconButton(),
                Flexible(child: SearchInput()),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: GridView.count(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0)
                      .copyWith(bottom: 20.0),
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 23.0,
                  crossAxisCount: 3,
                  children: List.generate(
                    18,
                    (index) => CategoryCard(
                      onPressed: () => routemaster.push(AppRoutes.catalog),
                      image: index % 2 == 0 ? Svgs.apple : Svgs.xiaomi,
                      text: index % 2 == 0 ? 'Apple' : 'Xiaomi',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
