import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/language/app_translation_key.dart';
import '../../../../../core/utils/app_routes/routes_name.dart';
import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryStatusBanner extends StatelessWidget {
  const DeliveryStatusBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(RoutesName.trackOrder);
      },
      child: Container(
        width: double.infinity,
        height: 92.h,
        decoration: ShapeDecoration(
          color: AppColors.mediumGray,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context.tr(AppTranslationKeys.yourOrderIsDelivered),
                  style: TextStyles.nunitoBold16,
                ),
                Text(
                  context
                      .tr(AppTranslationKeys.rateProductToGet5PointsForCollect),
                  style: TextStyles.nunitoSemiBoldText10,
                )
              ],
            ),
            SvgPicture.asset(
              AppAssets.assetsImageDelivery,
              width: 48.w,
              height: 48.h,
            )
          ],
        ),
      ),
    );
  }
}
