part of '../../wird_book.dart';

enum AppRoutes {
  splash('splash', '/splash'),
  dashboard('dashboard', '/dashboard');

  final String name;
  final String path;

  const AppRoutes(this.name, this.path);

  static String get initialLocation => AppRoutes.dashboard.path;

  static List<AppRoutes> get publicRoutes => [splash];

  static bool isPublicRoute(GoRouterState state) {
    final fullPath = state.fullPath;

    return fullPath != null &&
        publicRoutes.any((p) {
          return fullPath.startsWith(p.path);
        });
  }
}
