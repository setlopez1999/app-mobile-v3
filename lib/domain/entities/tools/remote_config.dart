/// IPs de destino para los pings nativos del diagnostico.
class NetworkTargets {
  final String googlePingTarget;
  final String ispPingTarget;

  const NetworkTargets({
    required this.googlePingTarget,
    required this.ispPingTarget,
  });

  factory NetworkTargets.fromJson(Map<String, dynamic> json) => NetworkTargets(
        googlePingTarget: json['google_ping_target'] as String,
        ispPingTarget: json['isp_ping_target'] as String,
      );

  Map<String, dynamic> toJson() => {
        'google_ping_target': googlePingTarget,
        'isp_ping_target': ispPingTarget,
      };
}

/// Configuracion global de la app obtenida del backend.
class AppRemoteConfig {
  final String assetsVersion;
  final String assetsCdnUrl;
  final Map<String, String> icons;
  final NetworkTargets networkTargets;

  const AppRemoteConfig({
    required this.assetsVersion,
    required this.assetsCdnUrl,
    required this.icons,
    required this.networkTargets,
  });

  factory AppRemoteConfig.fromJson(Map<String, dynamic> json) =>
      AppRemoteConfig(
        assetsVersion: json['assets_version'] as String,
        assetsCdnUrl: json['assets_cdn_url'] as String,
        icons: Map<String, String>.from(json['icons'] as Map),
        networkTargets: NetworkTargets.fromJson(
            json['network_targets'] as Map<String, dynamic>),
      );
}
