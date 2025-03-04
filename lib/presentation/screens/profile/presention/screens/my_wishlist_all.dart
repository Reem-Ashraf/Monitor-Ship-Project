import 'package:flutter/material.dart';

import '../../../home/widgets/product_item.dart';
import '../../components/buildBottomNavigationBar.dart';
import '../../data/models/Product.dart';

class WishlistItem extends StatelessWidget {
  final List<Product> products = [
    Product('images/profile.jpg', "Front Tie Mini Dress", "59.00", 4.5, 38),
    Product('images/profile.jpg', "Linen Dress", "52.00", 4.0, 64,
        oldPrice: "90.00"),
    Product('images/profile.jpg', "Ohara Dress", "85.00", 4.8, 50),
    Product('images/profile.jpg', "Tie Back Mini Dress", "67.00", 4.3, 39),
  ];

  WishlistItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("My Wishlist",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu, size: 28, color: Colors.black),
        actions: [
          Stack(
            children: [
              Icon(Icons.notifications, size: 28, color: Colors.black),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 15,
            childAspectRatio: 0.65,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductItem();
          },
        ),
      ),
      bottomNavigationBar: CustomBottomNav(selectedIndex: 3),
    );
  }
}
