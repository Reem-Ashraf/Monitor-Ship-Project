import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorSelection extends StatelessWidget {
  const ColorSelection({
    super.key,
    required this.colors,
  });

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: colors.map((color) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: CircleAvatar(
            backgroundColor: color,
            radius: 14,
            child: color == Colors.black
                ? Icon(Icons.check, color: Colors.white, size: 16)
                : null,
          ),
        );
      }).toList(),
    );
  }
}
