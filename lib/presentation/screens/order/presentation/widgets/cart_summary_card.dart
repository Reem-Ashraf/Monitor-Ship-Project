import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/language/app_translation_key.dart';
import '../../../../../core/utils/app_routes/routes_name.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/widgets/button_app.dart';
import '../../data/models/summary_cart_item.dart';
import 'summary_cart_row.dart';

class CartSummaryCard extends StatelessWidget {
  const CartSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final summaryItems = [
      SummaryItem(
        label: 'Product price',
        value: '\$ 80.00',
        isTotal: false,
      ),
      SummaryItem(
        label: 'Shipping',
        value: 'Freeship',
        isTotal: false,
      ),
      SummaryItem(
        label: 'Total',
        value: '\$ 90.00',
        isTotal: true,
      ),
    ];

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.r), topRight: Radius.circular(10.r)),
      ),
      shadowColor: AppColors.black.withValues(alpha: 0.1),
      color: AppColors.white,
      surfaceTintColor: AppColors.white,
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            ...List.generate(
              summaryItems.length,
              (index) => Column(
                children: [
                  SummaryRow(item: summaryItems[index]),
                  if (index < summaryItems.length - 1) const Divider(),
                ],
              ),
            ),
            const Divider(),
            SizedBox(height: 10.h),
            ButtonApp(
              onPressed: () => context.push(RoutesName.checkOutScreen1),
              text: context.tr(AppTranslationKeys.proceedtocheckout),
            ),
          ],
        ),
      ),
    );
  }
}
