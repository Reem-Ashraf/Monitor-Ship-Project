import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/app_routes/routes_name.dart';
import 'package:monitor_ship_project/presentation/screens/auth_screens/login_screen/login_screen.dart';
import 'package:monitor_ship_project/presentation/screens/welcome_screen/welcome_screen.dart';
import '../../../presentation/screens/auth_screens/onBoarding_screen/onBoarding_screen1.dart';

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
    ],
  );
}
