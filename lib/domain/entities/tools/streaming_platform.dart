class StreamingPlatform {
  final String id;
  final String name;
  final String logoAsset;
  final String downloadSpeed;
  final String uploadSpeed;
  final String serverName;
  final String serverLocation;

  const StreamingPlatform({
    required this.id,
    required this.name,
    required this.logoAsset,
    required this.downloadSpeed,
    required this.uploadSpeed,
    required this.serverName,
    required this.serverLocation,
  });

  factory StreamingPlatform.fromJson(Map<String, dynamic> json) =>
      StreamingPlatform(
        id: json['id'] as String,
        name: json['name'] as String,
        logoAsset: json['logo_asset'] as String,
        downloadSpeed: json['download_speed'] as String,
        uploadSpeed: json['upload_speed'] as String,
        serverName: json['server_name'] as String,
        serverLocation: json['server_location'] as String,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'logo_asset': logoAsset,
        'download_speed': downloadSpeed,
        'upload_speed': uploadSpeed,
        'server_name': serverName,
        'server_location': serverLocation,
      };

  StreamingPlatform copyWith({
    String? id,
    String? name,
    String? logoAsset,
    String? downloadSpeed,
    String? uploadSpeed,
    String? serverName,
    String? serverLocation,
  }) =>
      StreamingPlatform(
        id: id ?? this.id,
        name: name ?? this.name,
        logoAsset: logoAsset ?? this.logoAsset,
        downloadSpeed: downloadSpeed ?? this.downloadSpeed,
        uploadSpeed: uploadSpeed ?? this.uploadSpeed,
        serverName: serverName ?? this.serverName,
        serverLocation: serverLocation ?? this.serverLocation,
      );
}
