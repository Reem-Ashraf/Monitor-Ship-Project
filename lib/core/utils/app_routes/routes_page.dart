import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/app_routes/routes_name.dart';
import 'package:monitor_ship_project/presentation/screens/auth_screens/login_screen/login_screen.dart';
import 'package:monitor_ship_project/presentation/screens/my_orders/my_orders.dart';
import 'package:monitor_ship_project/presentation/screens/welcome_screen/welcome_screen.dart';
import '../../../features/discover/presentation/screens/search_screen.dart';
import '../../../presentation/screens/auth_screens/onBoarding_screen/onBoarding_screen1.dart';
import '../../../presentation/screens/checkout_screen/checkout_screen1.dart';
import '../../../presentation/screens/checkout_screen/checkout_screen2.dart';

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
      GoRoute(
        name: RoutesName.checkOutScreen2,
        path: "/checkOutScreen2",
        builder: (context, state) => CheckOutScreen2(),
      ),
      GoRoute(
        name: RoutesName.orderScreen,
        path: "/orderScreen",
        builder: (context, state) => OrdersScreen(),
      ),
      GoRoute(
        name: RoutesName.searchScreen,
        path: "/searchScreen",
        builder: (context, state) => SearchScreen(),
      ),
    ],
  );
}
