
/// for  test package go router
import 'package:go_router/go_router.dart';
import 'package:nemoapp/presentation/onboarding/onboarding_screen.dart';
import 'package:nemoapp/presentation/splash/splash_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => OnboardingHome(),
    ),
  
    
  ],
);