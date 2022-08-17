import 'package:fimex/app/ui/widgets/index.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';

import 'info_line.dart';

class ProductInfoGroup extends StatelessWidget {
  const ProductInfoGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        CustomDivider(),
        ProductInfoLine(),
        ProductInfoLine(country: Images.us),
        ProductInfoLine(
          country: Images.japan,
          countryCode: '50',
        ),
        ProductInfoLine(
          country: Images.suadiArabia,
          productCount: '223',
        ),
      ],
    );
  }
}
