import 'package:go_router/go_router.dart';
import '../../presentation/screens/screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardScreen(),
    ),
    GoRoute(
        path: '/progress', builder: (context, state) => const ProgressScrenn()),
    GoRoute(
      path: '/snackbars',
      builder: (context, state) => const SnackBarScreen(),
    ),
    GoRoute(
      path: '/animated',
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
        path: '/ui-controls',
        builder: (context, state) => const UiControlsScreen()),
    GoRoute(
        path: '/tutorial',
        builder: (context, state) => const AppTutorialScreen()),
    GoRoute(
        path: '/scroll',
        builder: (context, state) => const InfiniteScrollScreen()),
    GoRoute(
        path: '/counter', builder: (context, state) => const CounterScreenn()),
    GoRoute(
        path: '/theme',
        builder: (context, state) => const ThemeChangerScreen()),
  ],
);
