import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/routes.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class DeliveryStatusBanner extends StatelessWidget {
  const DeliveryStatusBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRouter.trackOrder);
      },
      child: Container(
        width: double.infinity,
        height: 92,
        decoration: ShapeDecoration(
          color: AppColors.mediumGray,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context.tr('Your order is delivered'),
                  style: TextStyles.nunitoBold16,
                ),
                Text(
                  context.tr('Rate product to get 5 points for collect.'),
                  style: TextStyles.nunitoSemiBoldText10,
                )
              ],
            ),
            SvgPicture.asset(Assets.assetsImageDelivery)
          ],
        ),
      ),
    );
  }
}
