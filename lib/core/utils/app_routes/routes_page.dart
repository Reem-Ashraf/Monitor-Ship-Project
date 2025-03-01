import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/app_routes/routes_exports.dart';
import 'package:monitor_ship_project/presentation/screens/discover/screens/found_result_search_screen.dart';
import 'routes_name.dart';

class GroupRoutes {
  final GoRouter router = GoRouter(
    routes: [
      // GoRoute(
      //   name: RoutesName.welcomeScreen,
      //   path: "/",
      //   builder: (context, state) => const WelcomeScreen(),
      // ),
      GoRoute(
        name: RoutesName.onBoardingScreen1,
        path: "/onboardingScreen",
        builder: (context, state) => OnboardingScreen(),
      ),
      GoRoute(
        name: RoutesName.loginScreen,
        path: "/loginScreen",
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        name: RoutesName.checkOutScreen1,
        path: "/checkOutScreen1",
        builder: (context, state) => CheckoutScreen1(),
      ),
      // GoRoute(
      //   name: RoutesName.orderDetails,
      //   path: "/orderDetails",
      //   builder: (context, state) => OrderDetails(order: 'Order'),
      // ),
      GoRoute(
        name: RoutesName.checkOutScreen2,
        path: "/checkOutScreen2",
        builder: (context, state) => CheckOutScreen2(),
      ),
      GoRoute(
        name: RoutesName.rateProduct,
        path: "/rateProduct",
        builder: (context, state) => RateProduct(),
      ),
      GoRoute(
        name: RoutesName.orderScreen,
        path: "/orderScreen",
        builder: (context, state) => OrdersScreen(),
      ),
      // GoRoute(
      //   name: RoutesName.searchScreen,
      //   path: "/searchScreen",
      //   builder: (context, state) => SearchScreen(),
      // ),
      GoRoute(
        name: RoutesName.trackOrder,
        path: "/trackOrder",
        builder: (context, state) => TrackOrder(),
      ),
      GoRoute(
          name: RoutesName.bottomNavigationBarScreen,
          path: "/",
          builder: (context, state) {
            return BottomNavigationBarScreen();
          }),
      GoRoute(
          path: RoutesName.homeScreen,
          builder: (context, state) {
            return Homescreen();
          }),
      GoRoute(
          name: RoutesName.foundResultScreen,
          path: RoutesName.foundResultScreen,
          builder: (context, state) {
            return FoundResultScreen();
          }),
      GoRoute(
          path: RoutesName.discverScreen,
          builder: (context, state) => DiscoverFullScreen()),
    ],
  );
}
