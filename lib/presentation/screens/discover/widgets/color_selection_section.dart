import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/color_selection.dart';

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
      children: [
        Text("Color",
            textScaler: TextScaler.noScaling,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600)),
        ColorSelection(colors: colors),
      ],
    );
  }
}
