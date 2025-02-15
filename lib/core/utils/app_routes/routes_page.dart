import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/app_routes/routes_name.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/screens/checkout_first.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/screens/checkout_second.dart';
import 'package:monitor_ship_project/features/order/presentation/screens/details_order.dart';
import 'package:monitor_ship_project/features/order/presentation/screens/my_order.dart';
import 'package:monitor_ship_project/features/order/presentation/screens/rate_product.dart';
import 'package:monitor_ship_project/features/order/presentation/screens/track_order.dart';

class RoutesPage {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          path: RoutesName.checkoutFirst,
          builder: (context, state) => CheckoutFirst()),
      GoRoute(
          path: RoutesName.checkoutSecond,
          builder: (context, state) => CheckoutSecond()),
      GoRoute(path: RoutesName.myOrder, builder: (context, state) => MyOrder()),
      GoRoute(
          path: RoutesName.orderDetails,
          builder: (context, state) {
            final String arg = state.extra as String;
            return OrderDetails(order: arg);
          }),
      GoRoute(
          path: RoutesName.rateProduct,
          builder: (context, state) => RateProduct()),
      GoRoute(
          path: RoutesName.trackOrder,
          builder: (context, state) => TrackOrder()),
    ],
  );
}
