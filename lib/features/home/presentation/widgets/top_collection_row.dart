import 'package:flutter/material.dart';

class TopCollectionRow extends StatelessWidget {
  const TopCollectionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset('assets/images/banner 3.png'),
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            // width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset('assets/images/banner 4.png'),
          ),
        ),
      ],
    );
  }
}
