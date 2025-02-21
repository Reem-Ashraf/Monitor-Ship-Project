import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';
import '../widgets/home_image.dart';
import '../widgets/home_image_two.dart';
import '../widgets/home_row_text.dart';
import '../widgets/list_category_item.dart';
import '../widgets/list_product_item.dart';
import '../widgets/recommended_item_list_view.dart';
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
            spacing: 10,
            children: [
              //  const CustomAppBar(text: 'Gemstore',),
              // TODO: Try to reduce repetition (Search about DRY principle) and how to handle repetitive code/widgets.
              const CategoryItemListView(),
              const HomeImage(),
              const CustomFeatureProductsRow(
                text: 'Feature Products',
              ),
              const ProductItemListView(),
              const HomeImage2(
                text1: 'NEW COLLECTION',
                text2: 'HANG OUT',
                text3: '& PARTY',
                image: AppAssets.secondtHomeImage,
              ),
              const CustomFeatureProductsRow(
                text: 'Recommended',
              ),

              const RecommendedItemListView(),

              const CustomFeatureProductsRow(
                text: 'Top Collection',
              ),

              const HomeImage2(
                text1: 'Sale up to 40%',
                text2: 'FOR SLIM ',
                image: AppAssets.thirdHomeImage,
                text3: '& BEAUTY',
              ),

              const HomeImage2(
                text1: 'Summer Collection',
                text2: 'Most sexy  ',
                image: AppAssets.fourthHomeImage,
                text3: '&design',
              ),

              TopCollectionRow(),
            ],
          ),
        ),
      ),
    );
  }
}
