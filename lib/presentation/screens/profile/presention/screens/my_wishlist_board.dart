import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../../../../core/utils/app_routes/routes_name.dart';
import '../../components/CategoryCard.dart';
import '../../components/buildBottomNavigationBar.dart';
import '../../components/bulidAppPar.dart';
import '../../components/drawer.dart';
import '../../data/models/category.dart';

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
      "assets/images/profile.jpg",
      "assets/images/profile.jpg",
      "assets/images/profile.jpg",
      "assets/images/profile.jpg",
      "assets/images/profile.jpg",
    ], "Going out outfits", 36),
    Category([
      "assets/images/profile.jpg",
      "assets/images/profile.jpg",
      "assets/images/profile.jpg",
      "assets/images/profile.jpg",
      "assets/images/profile.jpg",
    ], "Office Fashion", 20),
    Category([
      "assets/images/profile.jpg",
      "assets/images/profile.jpg",
      "assets/images/profile.jpg",
      "assets/images/profile.jpg", //todo: path to image not found
      "assets/images/profile.jpg",
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
                    onTap: () => context.push(RoutesName.wishlistItem),
                    child: CategoryCard(category: categories[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    //  bottomNavigationBar: CustomBottomNav(selectedIndex: 1),
    );
  }
}
