import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' as context;
import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';

import '../../../../../core/language/app_translation_key.dart';

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
      text1: context.tr(AppTranslationKeys.clothing),
      image: AppAssets.thirdHomeImage,
      backgroundColor: AppColors.colothingbackground,
      smallCircleColor: AppColors.colothingsmallcircle,
      bigCircleColor: AppColors.colothingbackground,
    ),
    DiscoverCategoryModel(
      text1: context.tr(AppTranslationKeys.accesory),
      image: AppAssets.acessoryImage,
      backgroundColor: AppColors.accessoryBackground,
      smallCircleColor: AppColors.accessorySmallCircle,
      bigCircleColor: AppColors.accessoryBigCircle,
    ),
    DiscoverCategoryModel(
      text1: context.tr(AppTranslationKeys.shoes),
      image: AppAssets.shoesImage,
      backgroundColor: AppColors.shoesBackground,
      smallCircleColor: AppColors.shoesSmallCircle,
      bigCircleColor: AppColors.shoesBigCircle,
    ),
    DiscoverCategoryModel(
      text1: context.tr(AppTranslationKeys.collection),
      image: AppAssets.collectionImage,
      backgroundColor: AppColors.collectionBackground,
      smallCircleColor: AppColors.collectionSmallCircle,
      bigCircleColor: AppColors.collectionBigCircle,
    ),
  ];
}
