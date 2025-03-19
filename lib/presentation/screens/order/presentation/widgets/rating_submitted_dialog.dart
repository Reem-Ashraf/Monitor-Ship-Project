import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/language/app_translation_key.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';
import '../../../../../core/utils/widgets/button_app.dart';

class RatingSubmittedDialog extends StatelessWidget {
  // TODO: Refactor this code, Note: Keep file, class, or function under 50 lines.

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
            Text(context.tr(AppTranslationKeys.thankYouForYourFeedback),
                textAlign: TextAlign.center,
                style: TextStyles.buttonStyle.copyWith(
                  color: AppColors.darkGray,
                )),
            Text(
                '${context.tr(AppTranslationKeys.weAppreciatedYourFeedback)} \n ${context.tr(AppTranslationKeys.wellUseYourFeedbackToImproveYourExperience)}',
                textAlign: TextAlign.center,
                style: TextStyles.inputStyle),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: ButtonApp(
                onPressed: () {
                  context.pop();
                },
                text: context.tr(AppTranslationKeys.done),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
