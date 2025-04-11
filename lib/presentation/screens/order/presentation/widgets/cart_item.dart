import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/colors.dart';
import '../../domain/models/cart_item_model.dart';
import 'product_details_cart.dart';
import 'product_image_cart.dart';

class CartItem extends StatelessWidget {
  final CartItemModel model;
  final Function(bool?)? onSelectionChanged;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;

  const CartItem({
    super.key,
    required this.model,
    this.onSelectionChanged,
    this.onIncrement,
    this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      shadowColor: AppColors.black.withValues(alpha: 0.1),
      color: AppColors.white,
      surfaceTintColor: AppColors.white,
      child: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: Row(
          children: [
            ProductImageCart(imageUrl: model.imageUrl),
            SizedBox(width: 13.w),
            Expanded(
              child: ProductDetailsCart(
                title: model.title,
                price: model.price,
                size: model.size,
                color: model.color,
                quantity: model.quantity,
                isSelected: model.isSelected,
                onSelectionChanged: onSelectionChanged,
                onIncrement: onIncrement,
                onDecrement: onDecrement,
                context: context,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
