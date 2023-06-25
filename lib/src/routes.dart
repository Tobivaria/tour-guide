import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:tour_guide/src/editing/editing_screen.dart';
import 'package:tour_guide/src/start_screen/start_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  routes: [
    /// Home
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const StartScreen(),
    ),
    GoRoute(
      path: '/edit',
      name: 'editing',
      builder: (context, state) => const EditingScreen(),
    ),
  ],
);
