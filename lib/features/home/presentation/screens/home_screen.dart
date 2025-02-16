import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/home_image.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/home_image_two.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/home_row_text.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/list_category_item.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/list_product_item.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/recommended_item_list_view.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/top_collection_row.dart';

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
        title: Text('Gemstore'),
        actions: [Container()],
      ),
      body: Padding(
        padding:  EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              //  const CustomAppBar(text: 'Gemstore',),
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

