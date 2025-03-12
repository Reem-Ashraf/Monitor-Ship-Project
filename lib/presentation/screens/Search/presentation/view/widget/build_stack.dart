import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/app_assets.dart';


class BuildStack extends StatelessWidget {
  const BuildStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child:  const AspectRatio(
              aspectRatio: 1.6/2,
              child:Image(image: AssetImage(AppAssets.productImage),
                fit: BoxFit.fill,)
          ),
        ),
        Positioned(
          top: 2,right: 2,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border,color: Colors.grey,size: 30,),
          ),
        ),
      ],
    );
  }
}
