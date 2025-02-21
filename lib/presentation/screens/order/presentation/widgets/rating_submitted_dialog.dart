import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';
import '../../../../../core/utils/widgets/button_app.dart';

class RatingSubmittedDialog extends StatelessWidget {
  const RatingSubmittedDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.all(22.r),
        child: Column(
          spacing: 25.h,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 41.r,
              backgroundColor: AppColors.paleGray.withValues(alpha: .8),
              child: CircleAvatar(
                radius: 29.r,
                backgroundColor: AppColors.mintGreen,
                child: Icon(
                  Icons.check_rounded,
                  color: Colors.white,
                  size: 40.sp,
                ),
              ),
            ),
            Text(context.tr('Thank you for your feedback!'),
                textAlign: TextAlign.center,
                style: TextStyles.buttonStyle.copyWith(
                  color: AppColors.darkGray,
                )),
            Text(
                '${context.tr('We appreciated your feedback.')} \n ${context.tr('We’ll use your feedback to improve your experience.')}',
                textAlign: TextAlign.center,
                style: TextStyles.inputStyle),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: ButtonApp(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: context.tr('Done'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
