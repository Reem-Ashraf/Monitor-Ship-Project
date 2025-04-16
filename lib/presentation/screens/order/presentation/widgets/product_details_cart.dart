import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/language/app_translation_key.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';
import 'quantity_selector_cart.dart';

class ProductDetailsCart extends StatelessWidget {
  final String title;
  final double price;
  final String size;
  final String color;
  final int quantity;
  final bool isSelected;
  final Function(bool?)? onSelectionChanged;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;
  final BuildContext context;

  const ProductDetailsCart({super.key, 
    required this.title,
    required this.price,
    required this.size,
    required this.color,
    required this.quantity,
    required this.isSelected,
    required this.onSelectionChanged,
    required this.onIncrement,
    required this.onDecrement,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyles.text13w700),
            Transform.scale(
              scale: 1.25,
              child: Checkbox(
                value: isSelected,
                fillColor: WidgetStateProperty.all<Color>(
                    AppColors.accessorySmallCircle),
                onChanged: onSelectionChanged ?? (_) {},
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
            ),
          ],
        ),
        Text('\$ ${price.toStringAsFixed(2)}',
            style: TextStyles.textw700.copyWith(color: AppColors.blackGray)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                '${context.tr(AppTranslationKeys.size)}: $size  |  ${context.tr(AppTranslationKeys.color)}: $color',
                style: TextStyles.text10w500),
            QuantitySelectorCart(
              quantity: quantity,
              onIncrement: onIncrement ?? () => log('add to cart'),
              onDecrement: onDecrement ?? () => log('remove from cart'),
            ),
          ],
        ),
      ],
    );
  }
}
