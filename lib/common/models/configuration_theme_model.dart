class ConfigurationTheme {
  double paddingInnerScreen;

  ConfigurationTheme({
    required this.paddingInnerScreen
  });

  factory  ConfigurationTheme.fromMap(Map<String, dynamic> themeMap) {
    return ConfigurationTheme(
        paddingInnerScreen: themeMap['paddingInnerScreen'] as double
    );
  }
}