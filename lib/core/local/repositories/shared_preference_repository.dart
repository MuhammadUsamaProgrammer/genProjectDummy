part of '../../../wird_book.dart';

class SharedPreferencesService implements SharedPrefService {
  SharedPreferencesService(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  final _tokenKey = 'access-token';
  final _isFirstTimeKey = 'is-first-time';
  final idKey = 'id-user';

  @override
  String get accessToken => sharedPreferences.getString(_tokenKey) ?? "";

  @override
  Future<bool> setAccessToken(String token) async {
    debugPrint("setAccessToken $token");

    return await sharedPreferences.setString(_tokenKey, token);
  }

  @override
  bool get isFirstTime {
    return sharedPreferences.getBool(_isFirstTimeKey) ?? true;
  }

  @override
  Future<void> setIsFirstTime(bool value) async {
    await sharedPreferences.setBool(_isFirstTimeKey, value);
  }

  @override
  Future<bool> clearAllData() async {
    return await sharedPreferences.clear();
  }

  @override
  String get getUserId => sharedPreferences.getString(idKey) ?? "";

  @override
  Future<void> saveUserId(String userId) {
    return sharedPreferences.setString(idKey, userId);
  }

  @override
  Future<void> removeUserId(String userId) {
    return sharedPreferences.remove(idKey);
  }
}
