import 'package:flutter/material.dart';

import '../data/models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: category.images.map((image) {
                return Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: ClipRRect(
                    child: Image.asset(image,
                        width: 110, height: 160, fit: BoxFit.cover),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 8),
                  Text(category.name,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ],
              ),
              Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
            ],
          ),
          Text("  ${category.itemCount} items",
              style: TextStyle(color: Colors.grey)),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}

