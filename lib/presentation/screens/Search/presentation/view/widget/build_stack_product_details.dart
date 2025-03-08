import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/constants/app_assets.dart';

class BuildStackProductDetails extends StatelessWidget {
  const BuildStackProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AspectRatio(
          aspectRatio: 2.5/3,
          child: Image(image: AssetImage(AppAssets.productImage),
            fit: BoxFit.fill,),
        ),
        Positioned(
            top: 20,
            left: 10,
            child: IconButton(onPressed: ()
            {
                  context.pop();
            }, icon: const Icon(Icons.arrow_back_ios))
        ),
        const Positioned(
          top: 20,
          right: 10,
          child: Icon(
            Icons.favorite,
            size: 34,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
