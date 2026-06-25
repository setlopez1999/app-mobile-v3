// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkTargets {
  String get googlePingTarget;
  String get ispPingTarget;

  /// Create a copy of NetworkTargets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkTargetsCopyWith<NetworkTargets> get copyWith =>
      _$NetworkTargetsCopyWithImpl<NetworkTargets>(
          this as NetworkTargets, _$identity);

  /// Serializes this NetworkTargets to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkTargets &&
            (identical(other.googlePingTarget, googlePingTarget) ||
                other.googlePingTarget == googlePingTarget) &&
            (identical(other.ispPingTarget, ispPingTarget) ||
                other.ispPingTarget == ispPingTarget));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, googlePingTarget, ispPingTarget);

  @override
  String toString() {
    return 'NetworkTargets(googlePingTarget: $googlePingTarget, ispPingTarget: $ispPingTarget)';
  }
}

/// @nodoc
abstract mixin class $NetworkTargetsCopyWith<$Res> {
  factory $NetworkTargetsCopyWith(
          NetworkTargets value, $Res Function(NetworkTargets) _then) =
      _$NetworkTargetsCopyWithImpl;
  @useResult
  $Res call({String googlePingTarget, String ispPingTarget});
}

/// @nodoc
class _$NetworkTargetsCopyWithImpl<$Res>
    implements $NetworkTargetsCopyWith<$Res> {
  _$NetworkTargetsCopyWithImpl(this._self, this._then);

  final NetworkTargets _self;
  final $Res Function(NetworkTargets) _then;

  /// Create a copy of NetworkTargets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? googlePingTarget = null,
    Object? ispPingTarget = null,
  }) {
    return _then(_self.copyWith(
      googlePingTarget: null == googlePingTarget
          ? _self.googlePingTarget
          : googlePingTarget // ignore: cast_nullable_to_non_nullable
              as String,
      ispPingTarget: null == ispPingTarget
          ? _self.ispPingTarget
          : ispPingTarget // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkTargets].
extension NetworkTargetsPatterns on NetworkTargets {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NetworkTargets value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkTargets() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NetworkTargets value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkTargets():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NetworkTargets value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkTargets() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String googlePingTarget, String ispPingTarget)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkTargets() when $default != null:
        return $default(_that.googlePingTarget, _that.ispPingTarget);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String googlePingTarget, String ispPingTarget) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkTargets():
        return $default(_that.googlePingTarget, _that.ispPingTarget);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String googlePingTarget, String ispPingTarget)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkTargets() when $default != null:
        return $default(_that.googlePingTarget, _that.ispPingTarget);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkTargets implements NetworkTargets {
  const _NetworkTargets(
      {required this.googlePingTarget, required this.ispPingTarget});
  factory _NetworkTargets.fromJson(Map<String, dynamic> json) =>
      _$NetworkTargetsFromJson(json);

  @override
  final String googlePingTarget;
  @override
  final String ispPingTarget;

  /// Create a copy of NetworkTargets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkTargetsCopyWith<_NetworkTargets> get copyWith =>
      __$NetworkTargetsCopyWithImpl<_NetworkTargets>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkTargetsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkTargets &&
            (identical(other.googlePingTarget, googlePingTarget) ||
                other.googlePingTarget == googlePingTarget) &&
            (identical(other.ispPingTarget, ispPingTarget) ||
                other.ispPingTarget == ispPingTarget));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, googlePingTarget, ispPingTarget);

  @override
  String toString() {
    return 'NetworkTargets(googlePingTarget: $googlePingTarget, ispPingTarget: $ispPingTarget)';
  }
}

/// @nodoc
abstract mixin class _$NetworkTargetsCopyWith<$Res>
    implements $NetworkTargetsCopyWith<$Res> {
  factory _$NetworkTargetsCopyWith(
          _NetworkTargets value, $Res Function(_NetworkTargets) _then) =
      __$NetworkTargetsCopyWithImpl;
  @override
  @useResult
  $Res call({String googlePingTarget, String ispPingTarget});
}

/// @nodoc
class __$NetworkTargetsCopyWithImpl<$Res>
    implements _$NetworkTargetsCopyWith<$Res> {
  __$NetworkTargetsCopyWithImpl(this._self, this._then);

  final _NetworkTargets _self;
  final $Res Function(_NetworkTargets) _then;

  /// Create a copy of NetworkTargets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? googlePingTarget = null,
    Object? ispPingTarget = null,
  }) {
    return _then(_NetworkTargets(
      googlePingTarget: null == googlePingTarget
          ? _self.googlePingTarget
          : googlePingTarget // ignore: cast_nullable_to_non_nullable
              as String,
      ispPingTarget: null == ispPingTarget
          ? _self.ispPingTarget
          : ispPingTarget // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AppRemoteConfig {
  String get assetsVersion;
  String get assetsCdnUrl;
  Map<String, String> get icons;
  NetworkTargets get networkTargets;

  /// Create a copy of AppRemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppRemoteConfigCopyWith<AppRemoteConfig> get copyWith =>
      _$AppRemoteConfigCopyWithImpl<AppRemoteConfig>(
          this as AppRemoteConfig, _$identity);

  /// Serializes this AppRemoteConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppRemoteConfig &&
            (identical(other.assetsVersion, assetsVersion) ||
                other.assetsVersion == assetsVersion) &&
            (identical(other.assetsCdnUrl, assetsCdnUrl) ||
                other.assetsCdnUrl == assetsCdnUrl) &&
            const DeepCollectionEquality().equals(other.icons, icons) &&
            (identical(other.networkTargets, networkTargets) ||
                other.networkTargets == networkTargets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, assetsVersion, assetsCdnUrl,
      const DeepCollectionEquality().hash(icons), networkTargets);

  @override
  String toString() {
    return 'AppRemoteConfig(assetsVersion: $assetsVersion, assetsCdnUrl: $assetsCdnUrl, icons: $icons, networkTargets: $networkTargets)';
  }
}

/// @nodoc
abstract mixin class $AppRemoteConfigCopyWith<$Res> {
  factory $AppRemoteConfigCopyWith(
          AppRemoteConfig value, $Res Function(AppRemoteConfig) _then) =
      _$AppRemoteConfigCopyWithImpl;
  @useResult
  $Res call(
      {String assetsVersion,
      String assetsCdnUrl,
      Map<String, String> icons,
      NetworkTargets networkTargets});

  $NetworkTargetsCopyWith<$Res> get networkTargets;
}

/// @nodoc
class _$AppRemoteConfigCopyWithImpl<$Res>
    implements $AppRemoteConfigCopyWith<$Res> {
  _$AppRemoteConfigCopyWithImpl(this._self, this._then);

  final AppRemoteConfig _self;
  final $Res Function(AppRemoteConfig) _then;

  /// Create a copy of AppRemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetsVersion = null,
    Object? assetsCdnUrl = null,
    Object? icons = null,
    Object? networkTargets = null,
  }) {
    return _then(_self.copyWith(
      assetsVersion: null == assetsVersion
          ? _self.assetsVersion
          : assetsVersion // ignore: cast_nullable_to_non_nullable
              as String,
      assetsCdnUrl: null == assetsCdnUrl
          ? _self.assetsCdnUrl
          : assetsCdnUrl // ignore: cast_nullable_to_non_nullable
              as String,
      icons: null == icons
          ? _self.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      networkTargets: null == networkTargets
          ? _self.networkTargets
          : networkTargets // ignore: cast_nullable_to_non_nullable
              as NetworkTargets,
    ));
  }

  /// Create a copy of AppRemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkTargetsCopyWith<$Res> get networkTargets {
    return $NetworkTargetsCopyWith<$Res>(_self.networkTargets, (value) {
      return _then(_self.copyWith(networkTargets: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AppRemoteConfig].
extension AppRemoteConfigPatterns on AppRemoteConfig {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppRemoteConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppRemoteConfig() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppRemoteConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppRemoteConfig():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppRemoteConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppRemoteConfig() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String assetsVersion, String assetsCdnUrl,
            Map<String, String> icons, NetworkTargets networkTargets)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppRemoteConfig() when $default != null:
        return $default(_that.assetsVersion, _that.assetsCdnUrl, _that.icons,
            _that.networkTargets);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String assetsVersion, String assetsCdnUrl,
            Map<String, String> icons, NetworkTargets networkTargets)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppRemoteConfig():
        return $default(_that.assetsVersion, _that.assetsCdnUrl, _that.icons,
            _that.networkTargets);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String assetsVersion, String assetsCdnUrl,
            Map<String, String> icons, NetworkTargets networkTargets)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppRemoteConfig() when $default != null:
        return $default(_that.assetsVersion, _that.assetsCdnUrl, _that.icons,
            _that.networkTargets);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppRemoteConfig implements AppRemoteConfig {
  const _AppRemoteConfig(
      {required this.assetsVersion,
      required this.assetsCdnUrl,
      required final Map<String, String> icons,
      required this.networkTargets})
      : _icons = icons;
  factory _AppRemoteConfig.fromJson(Map<String, dynamic> json) =>
      _$AppRemoteConfigFromJson(json);

  @override
  final String assetsVersion;
  @override
  final String assetsCdnUrl;
  final Map<String, String> _icons;
  @override
  Map<String, String> get icons {
    if (_icons is EqualUnmodifiableMapView) return _icons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_icons);
  }

  @override
  final NetworkTargets networkTargets;

  /// Create a copy of AppRemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppRemoteConfigCopyWith<_AppRemoteConfig> get copyWith =>
      __$AppRemoteConfigCopyWithImpl<_AppRemoteConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppRemoteConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppRemoteConfig &&
            (identical(other.assetsVersion, assetsVersion) ||
                other.assetsVersion == assetsVersion) &&
            (identical(other.assetsCdnUrl, assetsCdnUrl) ||
                other.assetsCdnUrl == assetsCdnUrl) &&
            const DeepCollectionEquality().equals(other._icons, _icons) &&
            (identical(other.networkTargets, networkTargets) ||
                other.networkTargets == networkTargets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, assetsVersion, assetsCdnUrl,
      const DeepCollectionEquality().hash(_icons), networkTargets);

  @override
  String toString() {
    return 'AppRemoteConfig(assetsVersion: $assetsVersion, assetsCdnUrl: $assetsCdnUrl, icons: $icons, networkTargets: $networkTargets)';
  }
}

/// @nodoc
abstract mixin class _$AppRemoteConfigCopyWith<$Res>
    implements $AppRemoteConfigCopyWith<$Res> {
  factory _$AppRemoteConfigCopyWith(
          _AppRemoteConfig value, $Res Function(_AppRemoteConfig) _then) =
      __$AppRemoteConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String assetsVersion,
      String assetsCdnUrl,
      Map<String, String> icons,
      NetworkTargets networkTargets});

  @override
  $NetworkTargetsCopyWith<$Res> get networkTargets;
}

/// @nodoc
class __$AppRemoteConfigCopyWithImpl<$Res>
    implements _$AppRemoteConfigCopyWith<$Res> {
  __$AppRemoteConfigCopyWithImpl(this._self, this._then);

  final _AppRemoteConfig _self;
  final $Res Function(_AppRemoteConfig) _then;

  /// Create a copy of AppRemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? assetsVersion = null,
    Object? assetsCdnUrl = null,
    Object? icons = null,
    Object? networkTargets = null,
  }) {
    return _then(_AppRemoteConfig(
      assetsVersion: null == assetsVersion
          ? _self.assetsVersion
          : assetsVersion // ignore: cast_nullable_to_non_nullable
              as String,
      assetsCdnUrl: null == assetsCdnUrl
          ? _self.assetsCdnUrl
          : assetsCdnUrl // ignore: cast_nullable_to_non_nullable
              as String,
      icons: null == icons
          ? _self._icons
          : icons // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      networkTargets: null == networkTargets
          ? _self.networkTargets
          : networkTargets // ignore: cast_nullable_to_non_nullable
              as NetworkTargets,
    ));
  }

  /// Create a copy of AppRemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkTargetsCopyWith<$Res> get networkTargets {
    return $NetworkTargetsCopyWith<$Res>(_self.networkTargets, (value) {
      return _then(_self.copyWith(networkTargets: value));
    });
  }
}

// dart format on
