import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/constants/app_routes/routes_name.dart';
import 'package:monitor_ship_project/features/discover/presentation/screens/discover_full.dart';
import 'package:monitor_ship_project/features/discover/presentation/screens/search_screen.dart';
import 'package:monitor_ship_project/features/home/presentation/screens/home_screen.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/bottom_navigation_bar.dart';

class RoutesPage {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
        GoRoute(
          path: RoutesName.bottomNavigationBarScreen,
          builder: (context, state) {
            return BottomNavigationBarScreen();
          }),
      GoRoute(
          path: RoutesName.homeScreen,
          builder: (context, state) {
            return Homescreen();
          }),
      GoRoute(
          path: RoutesName.searchScreen,
          builder: (context, state) => SearchScreen()),
      GoRoute(
          path: RoutesName.discverScreen,
          builder: (context, state) => DiscoverFullScreen()),
    ],
  );
}