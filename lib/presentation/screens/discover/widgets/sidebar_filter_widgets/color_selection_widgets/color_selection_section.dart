import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/sidebar_filter_widgets/color_selection_widgets/color_selection.dart';

class ColorSelectionSection extends StatelessWidget {
  const ColorSelectionSection({
    super.key,
  });

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15.h,
      children: [
        Text("Color",
            textScaler: TextScaler.noScaling,
            style: TextStyles.textw500),
        ColorSelection(colors: colors),
      ],
    );
  }
}
