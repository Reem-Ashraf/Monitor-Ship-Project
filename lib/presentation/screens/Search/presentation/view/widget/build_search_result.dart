import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:monitor_ship_project/presentation/screens/Search/presentation/view/widget/product_details.dart';

import '../../../../../../core/utils/constants/app_assets.dart';

class BuildSearchResult extends StatelessWidget {
  const BuildSearchResult({super.key});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetails()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              spreadRadius: 2, // Spread radius
              blurRadius: 6, // Blur radius
              offset: const Offset(0, 3), // Shadow offset
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
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
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              const Text("Filted Waist Dress",
                style: TextStyle(color:Colors.black,fontWeight: FontWeight.w600,),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
              const Row(
                children: [
                  Text("\$ 200", style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w600,),),
                  SizedBox(width: 8,),
                  Text("\$ 200", style: TextStyle(
                    decoration: TextDecoration.lineThrough, color:Colors.black,fontSize: 18,fontWeight: FontWeight.w600,),),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
              RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                itemSize: 12,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.indigoAccent,
                ),
                onRatingUpdate: (rating) {
                  // print(rating);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

