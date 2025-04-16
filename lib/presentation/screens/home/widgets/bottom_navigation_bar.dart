import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/svg.dart';
import 'package:monitor_ship_project/presentation/screens/my_orders/my_orders.dart';
import 'package:monitor_ship_project/presentation/screens/profile/presention/screens/profile.dart';
import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../core/initializer/injection_container.dart';
import '../../auth_screens/login_screen/domain/usecases/login_usecase.dart';
import '../../auth_screens/login_screen/presentation/cubit/auth_cubit.dart';
import '../../discover/screens/discover_full.dart';
import '../screens/home_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  _BottomNavigationBarScreenState createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const Homescreen(),
    const DiscoverFullScreen(),
    OrdersScreen(),
    BlocProvider(
      create: (context) => AuthCubit(getIt<LoginUseCase>()),
      child: ProfileScreen(),
    ),
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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppAssets.homeIcon,
                colorFilter: ColorFilter.mode(
                    _selectedIndex != 0 ? AppColors.gray : AppColors.black,
                    BlendMode.srcIn),
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: ''),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bag), label: ''),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: ''),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.neutralGray,
        onTap: _onItemTapped,
      ),
    );
  }
}
