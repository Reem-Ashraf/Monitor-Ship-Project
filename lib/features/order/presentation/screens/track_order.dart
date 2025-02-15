
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/constants.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/widgets/appbar_checking.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarChecking(title: context.tr('Track Order')),
        body: Padding(
          padding: const EdgeInsetsDirectional.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextRichTrack(
                text1: 'Delivered on',
                text2: '15.02.25',
              ),
              const SizedBox(
                height: 16,
              ),
              TextRichTrack(
                text1: 'Tracking Number :',
                text2: ' IK287368838',
              ),
              SizedBox(
                height: 45,
              ),
            
            ],
          ),
        ));
  }
}

class TextRichTrack extends StatelessWidget {
  const TextRichTrack({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: context.tr(text1),
            style: TextStyles.product12W400.copyWith(
              letterSpacing: -0.12,
            ),
          ),
          TextSpan(
            text: Constants.convertNumToArabic('  $text2', false),
            style: TextStyles.textStyle14W400
                .copyWith(letterSpacing: -.12, color: AppColors.orderCardColor),
          ),
        ],
      ),
    );
  }
}
