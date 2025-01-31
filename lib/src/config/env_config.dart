// ignore_for_file: prefer_constructors_over_static_methods

class EnvConfig {
  EnvConfig({
    this.flavorName,
    this.apiBaseUrl,
    this.apiSentry,
    this.apiComproUrl,
    this.xenditKey,
    this.apiBaseUrlV2,
  });

  final String? flavorName;
  final String? apiBaseUrl;
  final String? apiBaseUrlV2;
  final String? apiComproUrl;
  final String? apiSentry;
  final String? xenditKey;

  static EnvConfig? _instance;

  static EnvConfig getInstance({
    String? flavorName,
    String? apiBaseUrl,
    String? apiBaseUrlV2,
    String? apiComproUrl,
    String? apiSentry,
    String? xenditKey,
  }) {
    if (_instance == null) {
      _instance = EnvConfig(
        flavorName: flavorName,
        apiBaseUrl: apiBaseUrl,
        apiSentry: apiSentry,
        apiComproUrl: apiComproUrl,
        xenditKey: xenditKey,
        apiBaseUrlV2: apiBaseUrlV2,
      );
      return _instance!;
    }
    return _instance!;
  }
}
