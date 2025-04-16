import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageCart extends StatelessWidget {
  final String imageUrl;

  const ProductImageCart({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10.r),
        bottomLeft: Radius.circular(10.r),
      ),
      child: Image.network(
        imageUrl,
        width: 100.w,
        height: 100.h,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
