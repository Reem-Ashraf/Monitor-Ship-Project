import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/colors.dart';

class RestOrApply extends StatelessWidget {
  const RestOrApply({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Reset",
            textScaler: TextScaler.noScaling,
            style: TextStyle(color: AppColors.black),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context); 
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          child: Text("Apply",
              textScaler: TextScaler.noScaling,
              style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
