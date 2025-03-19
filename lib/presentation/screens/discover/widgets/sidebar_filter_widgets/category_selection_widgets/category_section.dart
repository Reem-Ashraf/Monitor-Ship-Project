import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedCategory = "Crop Tops";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15.h,
      children: [
        Text(
          'Category',
          textScaler: TextScaler.noScaling,
          style: TextStyles.textw500,
        ),
        DropdownButtonFormField<String>(
          value: selectedCategory,
          items: ["Crop Tops", "Dresses", "Jeans", "Sweaters"]
              .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(
                    item,
                    textScaler: TextScaler.noScaling,
                  )))
              .toList(),
          onChanged: (value) {
            selectedCategory = value!;
          },
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.r)),
          ),
        ),
      ],
    );
  }
}
