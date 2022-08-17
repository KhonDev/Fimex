import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/app/ui/widgets/custom_divider.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDivider(),
        SizedBox(
          height: 52.0,
          child: TextField(
            cursorColor: AppColors.main,
            style: TextStyles.s16w400.copyWith(color: AppColors.main),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10.0,
              ),
              border: InputBorder.none,
              suffixIcon: Padding(
                padding: const EdgeInsets.all(6.0).copyWith(bottom: 4),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: const Color(0xFFAEB3BE),
                    minimumSize: const Size(32, 42),
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset(Svgs.send),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
