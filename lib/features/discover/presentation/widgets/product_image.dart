import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 126,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/image 55.png'),
            ),
          ),
        ),
        Positioned(
          right: 5,
          top: 8,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColors.white),
            child: const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 22,
            ),
          ),
        ),
      ],
    );
  }
}
