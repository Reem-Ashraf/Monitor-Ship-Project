import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/features/home/presentation/screens/home_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  @override
  _BottomNavigationBarScreenState createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const Homescreen(),
    const Center(child: Text('search Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('cart Page', style: TextStyle(fontSize: 24))),
   
    const Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.white,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/Vector (1).svg',colorFilter:ColorFilter.mode(_selectedIndex!=0? AppColors.lightgray:AppColors.black, BlendMode.srcIn),), label: ''),
          const BottomNavigationBarItem(icon:  Icon(CupertinoIcons.search), label: ''),
          const BottomNavigationBarItem(icon: Icon(CupertinoIcons.bag), label: ''),
          const BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: ''),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:AppColors.black,
        unselectedItemColor: AppColors.lightgray,
        onTap: _onItemTapped,
      ),
    );
  }
}


