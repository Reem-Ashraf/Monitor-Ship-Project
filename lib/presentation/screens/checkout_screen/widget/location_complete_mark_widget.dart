import 'package:flutter/cupertino.dart';

import '../../../../core/utils/constants/app_assets.dart';

class LocationCompleteMarkWidget extends StatelessWidget {
   LocationCompleteMarkWidget({super.key,required this.isCheckout1Screen});
  bool isCheckout1Screen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Image.asset(
            AppAssets.location,
            height: 22,
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            AppAssets.line,
            width: 61,
          ),
          Spacer(),
          Image.asset(
            AppAssets.line,
            width: 61,
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            isCheckout1Screen?AppAssets.completeMark1:AppAssets.completeMark2,
            height: 22,
          ),

        ],
      ),
    );
  }
}
