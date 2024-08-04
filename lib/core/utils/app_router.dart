import 'package:food/features/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/splashScreen',
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
}
