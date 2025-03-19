import 'routes_exports.dart';
import 'routes_name.dart';

class GroupRoutes {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RoutesName.welcomeScreen,
        path: RoutesName.welcomeScreen,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        name: RoutesName.onBoardingScreen1,
        path: RoutesName.onBoardingScreen1,
        builder: (context, state) => OnboardingScreen(),
      ),
      GoRoute(
        name: RoutesName.loginScreen,
        path: RoutesName.loginScreen,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        name: RoutesName.checkOutScreen1,
        path: RoutesName.checkOutScreen1,
        builder: (context, state) => CheckoutScreen1(),
      ),
      GoRoute(
        name: RoutesName.orderDetails,
        path: RoutesName.orderDetails,
        builder: (context, state) => OrderDetails(order: 'Order'),
      ),
      GoRoute(
        name: RoutesName.checkOutScreen2,
        path: RoutesName.checkOutScreen2,
        builder: (context, state) => CheckOutScreen2(),
      ),
      GoRoute(
        name: RoutesName.rateProduct,
        path: RoutesName.rateProduct,
        builder: (context, state) => RateProduct(),
      ),
      GoRoute(
        name: RoutesName.orderScreen,
        path: RoutesName.orderScreen,
        builder: (context, state) => OrdersScreen(),
      ),
      GoRoute(
        name: RoutesName.searchScreen,
        path: RoutesName.searchScreen,
        builder: (context, state) => SearchScreen(),
      ),
      GoRoute(
        name: RoutesName.trackOrder,
        path: RoutesName.trackOrder,
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
      GoRoute(
        path: RoutesName.profileSetting,
        builder: (context, state) => ProfileApp(),
      ),
      GoRoute(
          path: RoutesName.myWishlist,
          builder: (context, state) => WishlistScreen()),
      GoRoute(
          path: RoutesName.wishlistItem,
          builder: (context, state) => WishlistItem()),
      GoRoute(
          path: RoutesName.settingsScreen,
          builder: (context, state) => SettingsScreen()),
      GoRoute(
          path: RoutesName.profileScreen,
          builder: (context, state) => ProfileScreen()),
      GoRoute(
         name: RoutesName.productDetails,
          path: RoutesName.productDetails,
          builder: (context, state) => ProductDetails()),
          GoRoute(
          name: RoutesName.foundResultScreen,
          path: RoutesName.foundResultScreen,
          builder: (context, state) {
            return FoundResultScreen();
          }),
    ],
  );
}
