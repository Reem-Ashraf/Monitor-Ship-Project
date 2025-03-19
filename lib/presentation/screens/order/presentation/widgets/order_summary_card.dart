import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/language/app_translation_key.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/constants.dart';
import '../../../../../core/utils/constants/text_style.dart';
import '../../../../../core/utils/widgets/my_divider.dart';

import 'order_details_row.dart';
import 'order_item_details_row.dart';

class OrderSummaryCard extends StatelessWidget {
  const OrderSummaryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsetsDirectional.all(14.r),
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 14.r,
            offset: Offset(0, 5.h),
            spreadRadius: -8.r,
          )
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 150.h,
            child: ListView.separated(
                itemBuilder: (context, index) => OrderItemDetailsRow(
                    nameOrder: 'Maxi Dress',
                    quantity:
                        Constants.convertNumToArabic('${index + 1 * 2}', false),
                    price: (index + 1 * 2) * 4.5),
                separatorBuilder: (context, index) => SizedBox(
                      height: 21.h,
                    ),
                itemCount: 50),
          ),
          // MyDivider(),
          // TODO: Try to reduce repetition (Search about DRY principle) and how to handle repetitive code/widgets.
          SizedBox(
            height: 32.h,
          ),
          OrderDetailsRow(
            text1: context.tr(AppTranslationKeys.subtotal),
            text2: '120.00',
            style1: TextStyles.product14LightW400,
            style2: TextStyles.productBold16,
          ),
          OrderDetailsRow(
            text1: context.tr(AppTranslationKeys.shipping),
            text2: '0.00',
            style1: TextStyles.product14LightW400,
            style2: TextStyles.productBold16,
          ),

          SizedBox(
            height: 12.h,
          ),
          MyDivider(),
          OrderDetailsRow(
            text1: context.tr(AppTranslationKeys.total),
            text2: Constants.convertNumToArabic('120.00', false),
            style1: TextStyles.product14LightW400,
            style2: TextStyles.productBold16,
          ),
        ],
      ),
    );
  }
}
