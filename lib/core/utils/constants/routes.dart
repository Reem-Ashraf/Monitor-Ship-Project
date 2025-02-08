import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/features/checkout_process/screens/checkout_first.dart';
import 'package:monitor_ship_project/features/checkout_process/screens/checkout_second.dart';

class AppRouter {
  static final String checkoutFirst = '/';
  static final String checkoutSecond = '/checkoutSecond';

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          path: checkoutFirst, builder: (context, state) => CheckoutFirst()),
      GoRoute(
          path: checkoutSecond, builder: (context, state) => CheckoutSecond()),
    ],
  );
}
