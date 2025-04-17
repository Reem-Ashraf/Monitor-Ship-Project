
import 'package:flutter/material.dart';

import '../data/models/Product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

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
                width: double.infinity,
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
        Text(product.name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 4),
        Row(
          children: [
            Text(product.price,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            if (product.oldPrice != null) ...[
              SizedBox(width: 5),
              Text(product.oldPrice!,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough)),
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
