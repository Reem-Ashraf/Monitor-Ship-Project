import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/home_image.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/home_image_two.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/home_row_text.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/list_category_item.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/list_product_item.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/recommended_item_list_view.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(text: 'Gemstore',),
              const CategoryItemListView(),
              const SizedBox(
                height: 5,
              ),
              const HomeImage(),
              const SizedBox(
                height: 10,
              ),
              const CustomFeatureProductsRow(
                text: 'Feature Products',
              ),
              const SizedBox(
                height: 10,
              ),
              const ProductItemListView(),
              const SizedBox(
                height: 10,
              ),
              const HomeImage2(
                text1: 'NEW COLLECTION',
                text2: 'HANG OUT',
                text3: '& PARTY',
                image: 'assets/images/image 64.png',
              ),
              const CustomFeatureProductsRow(
                text: 'Recommended',
              ),
              const SizedBox(
                height: 10,
              ),
              const RecommendedItemListView(),
              const SizedBox(
                height: 10,
              ),
              const CustomFeatureProductsRow(
                text: 'Top Collection',
              ),
              const SizedBox(
                height: 10,
              ),
              const HomeImage2(
                text1: 'Sale up to 40%',
                text2: 'FOR SLIM ',
                image: 'assets/images/image 48.png',
                text3: '& BEAUTY',
              ),
              const SizedBox(
                height: 15,
              ),
              const HomeImage2(
                text1: 'Summer Collection 2021',
                text2: 'Most sexy  ',
                image: 'assets/images/image 69.png',
                text3: '&design',
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(12), ),
                      child: Image.asset('assets/images/banner 3.png'),
                    ),
                  ),
                    Expanded(
                      child: Container(
                                      height: 200,
                                     // width: 200,
                                      decoration: BoxDecoration(
                                        
                                        borderRadius: BorderRadius.circular(12), ),
                                      child: Image.asset('assets/images/banner 4.png'),
                                    ),
                    ),
                ],
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
