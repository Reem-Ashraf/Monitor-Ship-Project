import 'package:flutter/material.dart';
import 'package:hello_world/components/CategoryCard.dart';
import 'package:hello_world/components/buildBottomNavigationBar.dart';
import 'package:hello_world/components/bulidAppPar.dart';
import 'package:hello_world/components/drawer.dart';
import 'package:hello_world/models/category.dart';
import 'package:hello_world/screens/my_wishlist_all.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  
     int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  final List<Category> categories = [
    Category([
      "images/profile.jpg",
      "images/profile.jpg",
      "images/profile.jpg",
      "images/profile.jpg",
      "images/profile.jpg",
    ], "Going out outfits", 36),
    Category([
      "images/profile.jpg",
      "images/profile.jpg",
      "images/profile.jpg",
      "images/profile.jpg",
      "images/profile.jpg",
    ], "Office Fashion", 20),
    Category([
      "images/profile.jpg",
      "images/profile.jpg",
      "images/profile.jpg",
      "images/profile.jpg",
      "images/profile.jpg",
    ], "Office Fashion", 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: CustomDrawer(
        isDarkMode: false,
        toggleTheme: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 50, 16, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildAppBar(context),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WishlistItem()),
                    ),
                    child: CategoryCard(category: categories[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNav(selectedIndex: 1),
    );
  }
}
