import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/color_selection.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/discount_off.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/range_price.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/rest_or_apply_btn.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/side_bar_header.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/star_rating.dart';

class FilterSidBar extends StatelessWidget {
  const FilterSidBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Colors.orange,
      Colors.red,
      Colors.black,
      Colors.grey,
      Colors.brown,
      Colors.pink
    ];

    String selectedCategory = "Crop Tops";
    return Drawer(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 10,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              SidBarHeader(),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 1,
                color: AppColors.lightgray,
              ),

              Text(
                'Price',
                style: TextStyles.text20,
              ),
              RangeWidget(),

              // Color Selection
              Text("Color",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              ColorSelection(colors: colors),
              Text(
                'Star Rating',
                style: TextStyles.text20,
              ),
              StarRating(selectedRating: 3),
              Text(
                'Category',
                style: TextStyles.text20,
              ),
              DropdownButtonFormField<String>(
                value: selectedCategory,
                items: ["Crop Tops", "Dresses", "Jeans", "Sweaters"]
                    .map((item) =>
                        DropdownMenuItem(value: item, child: Text(item)))
                    .toList(),
                onChanged: (value) {
                  (selectedCategory = value!);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              Text(
                'Discount',
                style: TextStyles.text20,
              ),
              Row(
                spacing: 10,
                children: [
                  DiscountOff(),
                  DiscountOff(),
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  DiscountOff(),
                  DiscountOff(),
                ],
              ),

              // Reset & Apply Buttons
              RestOrApply()
            ],
          ),
        ),
      ),
    );
  }
}






