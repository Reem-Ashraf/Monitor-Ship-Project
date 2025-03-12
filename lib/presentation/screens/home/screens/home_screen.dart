import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monitor_ship_project/presentation/screens/home/widgets/feature_product_section.dart';
import 'package:monitor_ship_project/presentation/screens/home/widgets/recommended_product_section.dart';
import 'package:monitor_ship_project/presentation/screens/home/widgets/top_collection_section.dart';
import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';
import '../widgets/home_image.dart';
import '../widgets/home_image_two.dart';
import '../widgets/list_category_item.dart';
import '../widgets/top_collection_row.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: Transform.scale(
          scale: .35,
          child: SvgPicture.asset(
            AppAssets.menu,
            height: 18.h,
            width: 17.w,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: Text(
          'Gemstore',
          style: TextStyles.appBarText,
        ),
        actions: [Container()],
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20.h,
            children: [
              const CategoryItemListView(),
              const HomeImage(),
              FeatureProductSection(),
              const HomeImage2(
                  textList: ['NEW COLLECTION', 'HANG OUT', '& PARTY'],
                  image: AppAssets.secondtHomeImage),
              RecommendedProductSection(),
              TopCollectionSection(),
              TopCollectionRow(),
            ],
          ),
        ),
      ),
    );
  }
}
