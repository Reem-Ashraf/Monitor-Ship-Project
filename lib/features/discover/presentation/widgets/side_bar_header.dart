import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SidBarHeader extends StatelessWidget {
  const SidBarHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Filter",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(
          width: 25,
          height: 25,
          child: SvgPicture.asset(
            'assets/images/page_info.svg',
          ),
        ),
      ],
    );
  }
}
