import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/app_routes/routes_name.dart';
import '../../../presentation/screens/auth_screens/login_screen/login_screen.dart';
import '../../../presentation/screens/auth_screens/onBoarding_screen/onBoarding_screen1.dart';
import '../../../presentation/screens/checkout_screen/checkout_screen1.dart';
import '../../../presentation/screens/checkout_screen/checkout_screen2.dart';
import '../../../presentation/screens/discover/screens/discover_full.dart';
import '../../../presentation/screens/home/screens/home_screen.dart';
import '../../../presentation/screens/home/widgets/bottom_navigation_bar.dart';
import '../../../presentation/screens/my_orders/my_orders.dart';
import '../../../presentation/screens/order/presentation/screens/rate_product.dart';
import '../../../presentation/screens/order/presentation/screens/track_order.dart';
import '../../../presentation/screens/welcome_screen/welcome_screen.dart';

class GroupRoutes {
   final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RoutesName.welcomeScreen,
        path: "/",
        builder: (context, state) => const WelcomeScreen(),
      ),
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
          path: RoutesName.discverScreen,
          builder: (context, state) => DiscoverFullScreen()),
    ],
  );
}

