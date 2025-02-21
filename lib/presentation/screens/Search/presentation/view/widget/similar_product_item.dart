import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/app_assets.dart';

class SimilarProductItem extends StatelessWidget {
  const SimilarProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), color: Colors.grey),
          child: Image(
            image: const AssetImage(AppAssets.productImage),
            fit: BoxFit.fill,
            height: height * 0.24,
            width: width * 0.3,
          ),
        ),
        const Text(
          "Rise Crop Hoodie",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        const Text(
          "\$ 80.88",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
