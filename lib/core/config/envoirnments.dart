part of '../../wird_book.dart';

enum EnvironmentType { development }

final envManagerProvider = Provider<EnvManagerService>((ref) {
  return EnvManagerService(environment: EnvironmentType.development);
});

class EnvManagerService {
  static const Map<EnvironmentType, String> environments = {
    EnvironmentType.development: 'https://cms.blueorbits.com',
  };

  EnvironmentType environment;
  EnvManagerService({this.environment = EnvironmentType.development});

  String get baseUrl => environments[environment] ?? '';
}
