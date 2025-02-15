import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/pages/checkout_first.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/pages/checkout_second.dart';
import 'package:monitor_ship_project/features/order/presentation/screens/details_order.dart';
import 'package:monitor_ship_project/features/order/presentation/screens/my_order.dart';
import 'package:monitor_ship_project/features/order/presentation/screens/rate_product.dart';
import 'package:monitor_ship_project/features/order/presentation/screens/track_order.dart';

class AppRouter {
  static final String checkoutFirst = '/';
  static final String checkoutSecond = '/checkoutSecond';
  static final String myOrder = '/myOrder';
  static final String orderDetails = '/orderDetails';
  static final String rateProduct = '/rateProduct';
  static final String trackOrder = '/trackOrder';

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
      GoRoute(path: rateProduct, builder: (context, state) => RateProduct()),
      GoRoute(path: trackOrder, builder: (context, state) => TrackOrder()),
    ],
  );
}
