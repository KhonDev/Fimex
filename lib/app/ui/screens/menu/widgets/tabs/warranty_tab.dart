import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:flutter/material.dart';

class WarrantyTab extends StatelessWidget {
  const WarrantyTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListView(
        padding:
            const EdgeInsets.symmetric(horizontal: 20.0).copyWith(bottom: 20.0),
        children: [
          Text(
            'Features & Detail',
            style: TextStyles.s16w700.copyWith(
              color: AppColors.main,
            ),
          ),
          const SizedBox(height: 10.0),
          TextWithDots(
            text:
                '6.7-inch Super Retina XDR display with ProMotion for a faster, more responsive feel',
            textStyle: TextStyles.s16w400.copyWith(
              color: AppColors.main,
            ),
          ),
          TextWithDots(
            text:
                'Cinematic mode adds shallow depth of field and shifts focus automatically in your videos',
            textStyle: TextStyles.s16w400.copyWith(
              color: AppColors.main,
            ),
          ),
          TextWithDots(
            text:
                'Pro camera system with new 12MP Telephoto, Wide, and Ultra Wide cameras; LiDAR Scanner; 6x optical zoom range; macro photography; Photographic Styles, ProRes video, Smart HDR 4, Night mode, Apple ProRAW, 4K Dolby Vision HDR recording',
            textStyle: TextStyles.s16w400.copyWith(
              color: AppColors.main,
            ),
          ),
          TextWithDots(
            text:
                'Up to 28 hours of video playback, the best battery life ever in an iPhone',
            textStyle: TextStyles.s16w400.copyWith(
              color: AppColors.main,
            ),
          ),
          TextWithDots(
            text: 'Durable design with Ceramic Shield',
            textStyle: TextStyles.s16w400.copyWith(
              color: AppColors.main,
            ),
          ),
          TextWithDots(
            text: 'Industry-leading IP68 water resistance',
            textStyle: TextStyles.s16w400.copyWith(
              color: AppColors.main,
            ),
          ),
          TextWithDots(
            text: '5G capable',
            textStyle: TextStyles.s16w400.copyWith(
              color: AppColors.main,
            ),
          ),
          TextWithDots(
            text:
                'iOS 15 packs new features to do more with iPhone than ever before',
            textStyle: TextStyles.s16w400.copyWith(
              color: AppColors.main,
            ),
          ),
        ],
      ),
    );
  }
}
