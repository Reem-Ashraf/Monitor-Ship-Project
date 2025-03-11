import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/language/app_translation_key.dart';
import '../../../../../core/utils/app_routes/routes_name.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';
import '../../../../../core/utils/widgets/button_app.dart';

class OrderActionButtons extends StatelessWidget {
  const OrderActionButtons({
    super.key,
    required this.order,
  });

  final String order;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 14.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        spacing: 24.w,
        children: [
          Expanded(
            child: OutlinedButton(
                style: ButtonStyle(
                  side: WidgetStateProperty.all(
                      BorderSide(color: AppColors.lightGray)),
                ),
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  'Return home'.tr(),
                  textAlign: TextAlign.center,
                  style: TextStyles.buttonStyle
                      .copyWith(color: AppColors.lightGray),
                )),
          ),
          SizedBox(
            width: 120.w,
            height: 40.h,
            child: ButtonApp(
              onPressed: () {
                context.push(RoutesName.rateProduct);
              },
              text: context.tr(AppTranslationKeys.rate),
            ),
          ),
        ],
      ),
    );
  }
}
