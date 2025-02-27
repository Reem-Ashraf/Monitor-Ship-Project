import 'dart:ui';

import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';

class DiscoverCategoryModel {
  final String text1;
  final String image;
  final Color backgroundColor;
  final Color smallCircleColor;
  final Color bigCircleColor;

  DiscoverCategoryModel({required this.text1, required this.image, required this.backgroundColor, required this.smallCircleColor, required this.bigCircleColor});
  
 static  final List<DiscoverCategoryModel> discoverCategoryModellist = [
      DiscoverCategoryModel(
        text1: 'CLOTHING',
        image: AppAssets.thirdHomeImage,
        backgroundColor: Color(0xFF999E87),
        smallCircleColor: Color(0xFF8A8F7A),
        bigCircleColor: Color(0xFFA4AC8A),
      ),
      DiscoverCategoryModel(
        text1: 'COLLECTION',
        image: AppAssets.collectionImage,
        backgroundColor: Color(0xFF999E87),
        smallCircleColor: Color(0xFF8A8F7A),
        bigCircleColor: Color(0xFFA4AC8A),
      ),
      DiscoverCategoryModel(
        text1: 'ACCESSORIE',
        image: AppAssets.acessoryImage,
        backgroundColor: Color(0xFFA79F9D),
        smallCircleColor: Color(0xFF8D8785),
        bigCircleColor: Color(0xFFA79F9D),
      ),
      DiscoverCategoryModel(
        text1: 'SHOES',
        image: AppAssets.shoesImage,
        backgroundColor: Color(0xFFA79F9D),
        smallCircleColor: Color(0xFF8D8785),
        bigCircleColor: Color(0xFFA79F9D),
      ),
    ];

  }