import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/language/app_translation_key.dart';

import '../../domain/models/cart_item_model.dart';
import '../widgets/cart_item.dart';
import '../widgets/cart_summary_card.dart';
import '../widgets/order_status_app_bar.dart';

class YourCart extends StatelessWidget {
  const YourCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrderStatusAppBar(title: context.tr(AppTranslationKeys.yourCart)),
      body: Padding(
        padding: EdgeInsetsDirectional.all(20.0.r),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return CartItem(
                    model: CartItemModel.forTest(),
                    onSelectionChanged: (value) {
                      log('Checkbox value: $value');
                    },
                    onIncrement: () {
                      log('Increment button pressed');
                    },
                    onDecrement: () {
                      log('Decrement button pressed');
                    },
                  );
                },
                itemCount: 50,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CartSummaryCard()
          ],
        ),
      ),
    );
  }
}
