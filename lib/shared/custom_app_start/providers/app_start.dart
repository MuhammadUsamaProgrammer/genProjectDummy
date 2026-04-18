import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../wird_book.dart';
import '../../../core/local/providers/shared_pref.dart';

part 'app_start.g.dart';

@Riverpod(keepAlive: true)
Future<void> appStartup(Ref ref) async {
  try {
    await EnvKeys.load();
    await ref.read(sharedPreferencesProvider.future);

    // Lock orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // Set system UI styles
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.colorF6F8FA,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.colorF6F8FA,
        systemNavigationBarIconBrightness: Brightness.light,
        systemStatusBarContrastEnforced: true,
        systemNavigationBarDividerColor: AppColors.colorF6F8FA,
      ),
    );
    await Future.delayed(const Duration(seconds: 2));
  } catch (e, stack) {
    debugPrint('❌ App startup failed: $e');
    debugPrint('$stack');
    rethrow; // Let the app handle it (e.g., splash screen error state)
  }
}
