import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';
import 'package:monitor_ship_project/presentation/screens/home/widgets/home_image_two.dart';
import 'package:monitor_ship_project/presentation/screens/home/widgets/show_all_row.dart';

class TopCollectionSection extends StatelessWidget {
  const TopCollectionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ShowAllRow(text: 'Top Collection'),
        const HomeImage2(
          textList: ['Sale up to 40%', 'FOR SLIM', '&BEAUTY'],
          image: AppAssets.thirdHomeImage,
        ),
 
        SizedBox(
          height: 20.h,
        ),
        const HomeImage2(
          textList: [
            'Summer Collection',
            'Most sexy',
            '&design',
          ],
          image: AppAssets.fourthHomeImage,
        ),
      ],
    );
  }
}
