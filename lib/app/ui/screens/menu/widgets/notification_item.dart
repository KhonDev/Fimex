import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:flutter/material.dart';

class Notificationitem extends StatelessWidget {
  const Notificationitem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 5.0),
        Text(
          '12.05.2022',
          style: TextStyles.s14w400.copyWith(color: AppColors.grey2),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            'Up to 28 hours of video playback, the best battery life ever in an iPhone',
            style: TextStyles.s16w400.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
