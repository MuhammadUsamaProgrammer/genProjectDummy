part of '../../wird_book.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final routerConfigProvider = Provider((ref) {
  // Watch sharedPreferencesProvider to rebuild router when it becomes available
  // final sharedPrefsAsync = ref.watch(sharedPreferencesProvider);
  //   // Determine initial location based on saved user data
  String initialLocation = AppRoutes.dashboard.path;

  // if (sharedPrefsAsync.hasValue) {
  //   final localData = ref.read(localDataProvider);
  //   final userId = localData.getUserId;

  //   if (userId.isNotEmpty) {
  //     initialLocation = AppRoutes.dashboard.path;
  //   }
  // }

  return GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: initialLocation,
    routes: [
      GoRoute(
        path: AppRoutes.splash.path,
        name: AppRoutes.splash.name,
        builder: (context, state) => const SplashView(),
      ),
      // Bottom Navigation Shell Routes
      ShellRoute(
        builder: (context, state, child) {
          return BottomNavShell(child: child);
        },
        routes: [
          GoRoute(
            path: AppRoutes.dashboard.path,
            name: AppRoutes.dashboard.name,
            builder: (context, state) => const DashboardPage(),
          ),
          // GoRoute(
          //   path: AppRoutes.appointments.path,
          //   name: AppRoutes.appointments.name,
          //   builder: (context, state) => const AppointmentsPage(),
          //   routes: [
          //     GoRoute(
          //       parentNavigatorKey: navigatorKey,
          //       path: AppRoutes.clientProfile.path,
          //       name: AppRoutes.clientProfile.name,
          //       builder: (context, state) {
          //         return ClientProfilePage(clientId: clientId);
          //       },
          //     ),
          //   ],
          // ),
        ],
      ),
    ],
  );
});
