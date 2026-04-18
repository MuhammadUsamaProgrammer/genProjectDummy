part of 'wird_book.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(context, ref) {
    final goRouter = ref.watch(routerConfigProvider);
    final locale = ref.watch(localizationProvider);

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp.router(
        theme: ThemeData(
          // canvasColor: AppColors.pageColor,
          brightness: Brightness.light,
          visualDensity: VisualDensity.standard,
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.white,
        ),
        title: 'Wird Book',
        debugShowCheckedModeBanner: false,
        // locale: locale,
        // supportedLocales: AppLocalizations.supportedLocales,
        // localizationsDelegates: AppLocalizations.localizationsDelegates,
        routerConfig: goRouter,
        builder: (_, child) {
          return AppStartupWidget(
            onLoaded: (_) => MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: const TextScaler.linear(1.0)),
              child: child!,
            ),
          );
        },
      ),
    );
  }
}
