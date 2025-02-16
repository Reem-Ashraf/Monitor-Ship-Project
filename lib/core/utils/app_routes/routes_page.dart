import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/app_routes/routes_name.dart';
import 'package:monitor_ship_project/features/order/presentation/screens/details_order.dart';
import 'package:monitor_ship_project/features/order/presentation/screens/rate_product.dart';
import 'package:monitor_ship_project/features/order/presentation/screens/track_order.dart';

class RoutesPage {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          path: RoutesName.orderDetails,
          builder: (context, state) {
            return OrderDetails(order: 'Order');
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
