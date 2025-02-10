import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/features/checkout_process/screens/checkout_first.dart';
import 'package:monitor_ship_project/features/checkout_process/screens/checkout_second.dart';
import 'package:monitor_ship_project/features/order/screen/details_order.dart';
import 'package:monitor_ship_project/features/order/screen/my_order.dart';

class AppRouter {
  static final String checkoutFirst = '/';
  static final String checkoutSecond = '/checkoutSecond';
  static final String myOrder = '/myOrder';
  static final String orderDetails = '/orderDetails';

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          path: checkoutFirst, builder: (context, state) => CheckoutFirst()),
      GoRoute(
          path: checkoutSecond, builder: (context, state) => CheckoutSecond()),
      GoRoute(path: myOrder, builder: (context, state) => MyOrder()),
      GoRoute(
          path: orderDetails,
          builder: (context, state) {
            final String arg = state.extra as String;
            return OrderDetails(order: arg);
          }),
    ],
  );
}
