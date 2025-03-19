import 'package:flutter/material.dart';

class CustomBottomNav extends StatefulWidget {
  final int selectedIndex;
  const CustomBottomNav({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  _CustomBottomNavState createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int _selectedIndex = 3;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex; // تحديد العنصر المختار
  }

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
    // هنا ممكن تضيفي التنقل بين الشاشات حسب الزر المضغوط
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 10)],
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
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 28), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 28), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined, size: 28), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person, size: 28), label: 'Profile'),
        ],
      ),
    );
  }
}
