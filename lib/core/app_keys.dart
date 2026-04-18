part of '../../wird_book.dart';

class EnvKeys {
  static Future<void> load() async {
    await dotenv.load(fileName: '.env');
  }

  static String get googleApiKey => dotenv.env['google_api_key'] ?? '';
}
