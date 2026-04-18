part of '../../../wird_book.dart';

abstract interface class SharedPrefService {
  Future<bool> setAccessToken(String token);

  String get accessToken;

  Future<void> setIsFirstTime(bool value);

  bool get isFirstTime;

  Future<bool> clearAllData();

  Future<void> saveUserId(String userId);

  Future<void> removeUserId(String userId);

  String get getUserId;
}

final localDataProvider = Provider<SharedPrefService>(
  (ref) => SharedPreferencesService(
    ref.read(sharedPreferencesProvider).requireValue,
  ),
);
