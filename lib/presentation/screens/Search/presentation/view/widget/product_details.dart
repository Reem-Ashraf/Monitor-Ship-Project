import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'review_card.dart';
import 'similar_product_item.dart';

import '../../../../../../core/utils/constants/app_assets.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Stack(
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
                      Navigator.pop(context);
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
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Sportwear Set", style: TextStyle(fontSize: 18,color: Colors.black),),
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        itemSize: 16,
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
                  const Text("\$ 80.88", style: TextStyle(
                      fontSize: 26, fontWeight: FontWeight.w600,color: Colors.black),),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              const Text("Description", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
              const Text("Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.",
              maxLines: 4,overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16, color: Colors.grey),),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              const ReviewCard(),
              const Text("Similar Product", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.33,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                    itemBuilder: (context, index){
                      return const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: SimilarProductItem(),
                      );
                    }
                ),
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff343434),
                  // borderRadius: BorderRadius.circular(22),
                ),
                child: const Center(child: Text("add to cart", style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.w600,color: Colors.white),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

