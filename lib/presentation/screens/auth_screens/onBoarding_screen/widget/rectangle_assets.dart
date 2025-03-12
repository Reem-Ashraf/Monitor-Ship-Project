import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/constants/app_assets.dart';

class RectangleAssets extends StatelessWidget {
  const RectangleAssets({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(AppAssets.rectangle),
    );
  }
}
