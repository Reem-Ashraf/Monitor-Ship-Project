import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'build_rating.dart';
import 'build_stack_product_details.dart';
import 'custom_bottom.dart';
import 'review_card.dart';
import 'similar_product_list_view.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

    Future<void> _logAddToCart() async {
      await analytics.logEvent(
        name: 'add_to_cart',
        parameters: {
          'product_name': 'Sportwear Set',
          'price': 80.88,
          'currency': 'USD',
          'timestamp': DateTime.now().toIso8601String(),
        },
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const BuildStackProductDetails(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sportwear Set", style: TextStyle(fontSize: 18, color: Colors.black)),
                      BuildRating(),
                    ],
                  ),
                  Text("\$ 80.88", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black)),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Text("Description", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              const Text(
                "Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.",
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const ReviewCard(),
              const Text("Similar Product", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              const SimilarProductListView(),
              
            
              GestureDetector(
                onTap: _logAddToCart,
                child: const CustomBottom(color: Color(0xff343434), title: "Add To Cart"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
