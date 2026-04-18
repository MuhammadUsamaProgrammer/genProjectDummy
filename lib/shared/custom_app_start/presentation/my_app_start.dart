part of '../../../wird_book.dart';

/// Widget class to manage asynchronous app initialization
class AppStartupWidget extends ConsumerWidget {
  const AppStartupWidget({super.key, required this.onLoaded});

  final WidgetBuilder onLoaded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(appStartupProvider);
    return (appStartupState).when(
      loading: () => SplashView(),
      error: (e, st) => SizedBox(),
      data: (_) => onLoaded(context),
    );
  }
}
