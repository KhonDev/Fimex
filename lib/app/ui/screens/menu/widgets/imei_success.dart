import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:flutter/material.dart';

class IMEISuccessResult extends StatelessWidget {
  const IMEISuccessResult({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '🇯🇵 iPhone 12 64Gb Black 2402 J/A',
          style: TextStyles.s16w400.copyWith(color: Colors.black),
        ),
        const SizedBox(height: 15.0),
        Text(
          'Order number: BX04SI37',
          style: TextStyles.s16w400.copyWith(color: Colors.black),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Text(
            'Price: 48 250',
            style: TextStyles.s16w400.copyWith(color: Colors.black),
          ),
        ),
        Text(
          'Purchase date: 09.05.2022',
          style: TextStyles.s16w400.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
