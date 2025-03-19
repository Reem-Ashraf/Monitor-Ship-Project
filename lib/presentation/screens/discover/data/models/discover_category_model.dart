import 'dart:ui';

import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';

class DiscoverCategoryModel {
  final String text1;
  final String image;
  final Color backgroundColor;
  final Color smallCircleColor;
  final Color bigCircleColor;

  DiscoverCategoryModel(
      {required this.text1,
      required this.image,
      required this.backgroundColor,
      required this.smallCircleColor,
      required this.bigCircleColor});
static final List<DiscoverCategoryModel> discoverCategoryModellist = [
  DiscoverCategoryModel(
    text1: 'CLOTHING',
    image: AppAssets.thirdHomeImage,
    backgroundColor: AppColors.colothingbackground,
    smallCircleColor: AppColors.colothingsmallcircle,
    bigCircleColor: AppColors.colothingbackground,
  ),
  DiscoverCategoryModel(
    text1: 'Accesory',
    image: AppAssets.acessoryImage,
    backgroundColor: AppColors.accessoryBackground,
    smallCircleColor: AppColors.accessorySmallCircle,
    bigCircleColor: AppColors.accessoryBigCircle,
  ),
  DiscoverCategoryModel(
    text1: 'SHOES',
    image: AppAssets.shoesImage,
    backgroundColor: AppColors.shoesBackground,
    smallCircleColor: AppColors.shoesSmallCircle,
    bigCircleColor: AppColors.shoesBigCircle,
  ),
  DiscoverCategoryModel(
    text1: 'Collection',
    image: AppAssets.collectionImage,
    backgroundColor: AppColors.collectionBackground,
    smallCircleColor: AppColors.collectionSmallCircle,
    bigCircleColor: AppColors.collectionBigCircle,
  ),
];


}
