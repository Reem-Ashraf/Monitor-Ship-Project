import 'package:flutter/material.dart';

class WishlistItem extends StatelessWidget {
  final List<Product> products = [
    Product('images/profile.jpg', "Front Tie Mini Dress", "\$59.00", 4.5, 38),
    Product('images/profile.jpg', "Linen Dress", "\$52.00", 4.0, 64,
        oldPrice: "\$90.00"),
    Product('images/profile.jpg', "Ohara Dress", "\$85.00", 4.8, 50),
    Product('images/profile.jpg', "Tie Back Mini Dress", "\$67.00", 4.3, 39),
    Product('images/profile.jpg', "Ohara Dress", "\$85.00", 4.8, 50),
    Product('images/profile.jpg', "Tie Back Mini Dress", "\$67.00", 4.3, 39),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 50, 16, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, size: 28),
                Text("My Wishlist",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Stack(
                  children: [
                    Icon(Icons.notifications, size: 28),
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
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.6,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductItem(product: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: 3,
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.2),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: 28), label: ""),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 28),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined, size: 28), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline, size: 28), label: ""),
          ],
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                product.image,
                height: 200,
                width: 170,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.favorite, color: Colors.red),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          product.name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Row(
          children: [
            Text(
              product.price,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            if (product.oldPrice != null) ...[
              SizedBox(width: 5),
              Text(
                product.oldPrice!,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ],
        ),
        SizedBox(height: 4),
        Row(
          children: [
            Icon(Icons.star, color: Colors.amber, size: 16),
            Text(" ${product.rating} ", style: TextStyle(fontSize: 14)),
            Text("(${product.reviews})",
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}

class Product {
  final String image;
  final String name;
  final String price;
  final double rating;
  final int reviews;
  final String? oldPrice;

  Product(this.image, this.name, this.price, this.rating, this.reviews,
      {this.oldPrice});
}
