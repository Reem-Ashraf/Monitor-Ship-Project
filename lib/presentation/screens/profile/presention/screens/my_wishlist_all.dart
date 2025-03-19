import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:monitor_ship_project/presentation/screens/profile/data/models/Product.dart';

class WishlistItem extends StatelessWidget {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  final List<Product> products = [
    Product('assets/images/profile.jpg', "Front Tie Mini Dress", "\$59.00", 4.5,
        38),
    Product('assets/images/profile.jpg', "Linen Dress", "\$52.00", 4.0, 64,
        oldPrice: "\$90.00"),
    Product('assets/images/profile.jpg', "Ohara Dress", "\$85.00", 4.8, 50),
    Product(
        'assets/images/profile.jpg', "Tie Back Mini Dress", "\$67.00", 4.3, 39),
    Product('assets/images/profile.jpg', "Ohara Dress", "\$85.00", 4.8, 50),
    Product(
        'assets/images/profile.jpg', "Tie Back Mini Dress", "\$67.00", 4.3, 39),
  ];

  WishlistItem({super.key});

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
                icon: Icon(Icons.search, size: 28), label: ""),
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

class ProductItem extends StatefulWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool isFavorite = false; 
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });

    analytics.logEvent(
      name: isFavorite ? 'added_to_wishlist' : 'removed_from_wishlist',
      parameters: {
        'product_name': widget.product.name,
        'price': widget.product.price,
        'timestamp': DateTime.now().toIso8601String(),
      },
    );
  }

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
                widget.product.image,
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
                radius: 18,
                child: IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                    size: 20,
                  ),
                  onPressed: _toggleFavorite,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          widget.product.name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Row(
          children: [
            Text(
              widget.product.price,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            if (widget.product.oldPrice != null) ...[
              SizedBox(width: 5),
              Text(
                widget.product.oldPrice!,
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
            Text(" ${widget.product.rating} ", style: TextStyle(fontSize: 14)),
            Text("(${widget.product.reviews})",
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
