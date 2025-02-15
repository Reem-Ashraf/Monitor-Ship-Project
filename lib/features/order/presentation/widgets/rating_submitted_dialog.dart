import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/core/utils/widgets/button_app.dart';

class RatingSubmittedDialog extends StatelessWidget {
  const RatingSubmittedDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.all(22),
        child: Column(
          spacing: 25,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 41,
              backgroundColor: AppColors.paleGray.withValues(alpha: .8),
              child: CircleAvatar(
                radius: 29,
                backgroundColor: AppColors.mintGreen,
                child: Icon(
                  Icons.check_rounded,
                  color: Colors.white,
                  size: 40,
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
              padding: const EdgeInsets.symmetric(horizontal: 100),
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
