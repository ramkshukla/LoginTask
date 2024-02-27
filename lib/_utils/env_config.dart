import 'package:net_carrot_task/_utils/enum.dart';

class EnvConfig {
  final String appTitle;
  final Flavor flavor;

  EnvConfig({
    required this.appTitle,
    required this.flavor,
  });

  EnvConfig copyWith({
    String? appTitle,
    Flavor? flavor,
  }) {
    return EnvConfig(
      appTitle: appTitle ?? this.appTitle,
      flavor: flavor ?? this.flavor,
    );
  }

  factory EnvConfig.fromJson(Map<String, dynamic> json) {
    return EnvConfig(
      appTitle: json["appTitle"],
      flavor: json["flavor"],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "appTitle": appTitle,
      "flavor": flavor,
    };
  }
}

final development = EnvConfig(appTitle: "Net Carrot Task", flavor: Flavor.dev);
final production = EnvConfig(appTitle: "Net Carrot Task", flavor: Flavor.prod);
final uat = EnvConfig(appTitle: "NEt Carrot Task", flavor: Flavor.uat);
