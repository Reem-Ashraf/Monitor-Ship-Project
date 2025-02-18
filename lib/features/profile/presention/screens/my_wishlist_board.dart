import 'package:flutter/material.dart';


class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  int _selectedIndex = 3; //احدد التاب اللي انا فيه حاليا

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
        padding: EdgeInsets.fromLTRB(16, 50, 16, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(
                  builder: (context) {
                    return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(Icons.menu_outlined),
                    );
                  },
                ),
                Text(
                  "My Wishlist",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
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
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryCard(category: categories[index]);
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
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.2),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 28),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 28),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined, size: 28),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 28),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;

  CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WishlistItem()),
        );
      },
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
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
      ),
    );
  }
}

class Category {
  final List<String> images;
  final String name;
  final int itemCount;

  Category(this.images, this.name, this.itemCount);
}
