import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        const SizedBox(height: 16,),
        Text('Turtleneck Sweater ',style: TextStyles.textw500,),
     Text(r'$ 39.99 ',style: TextStyles.textw700,),
    
      ],
    );
  }
}
