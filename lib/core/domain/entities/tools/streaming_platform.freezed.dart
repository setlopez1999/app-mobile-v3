// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'streaming_platform.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StreamingPlatform {
  String get id;
  String get name;
  String get logoAsset;
  String get downloadSpeed;
  String get uploadSpeed;
  String get serverName;
  String get serverLocation;

  /// Create a copy of StreamingPlatform
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StreamingPlatformCopyWith<StreamingPlatform> get copyWith =>
      _$StreamingPlatformCopyWithImpl<StreamingPlatform>(
          this as StreamingPlatform, _$identity);

  /// Serializes this StreamingPlatform to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StreamingPlatform &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoAsset, logoAsset) ||
                other.logoAsset == logoAsset) &&
            (identical(other.downloadSpeed, downloadSpeed) ||
                other.downloadSpeed == downloadSpeed) &&
            (identical(other.uploadSpeed, uploadSpeed) ||
                other.uploadSpeed == uploadSpeed) &&
            (identical(other.serverName, serverName) ||
                other.serverName == serverName) &&
            (identical(other.serverLocation, serverLocation) ||
                other.serverLocation == serverLocation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logoAsset,
      downloadSpeed, uploadSpeed, serverName, serverLocation);

  @override
  String toString() {
    return 'StreamingPlatform(id: $id, name: $name, logoAsset: $logoAsset, downloadSpeed: $downloadSpeed, uploadSpeed: $uploadSpeed, serverName: $serverName, serverLocation: $serverLocation)';
  }
}

/// @nodoc
abstract mixin class $StreamingPlatformCopyWith<$Res> {
  factory $StreamingPlatformCopyWith(
          StreamingPlatform value, $Res Function(StreamingPlatform) _then) =
      _$StreamingPlatformCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String logoAsset,
      String downloadSpeed,
      String uploadSpeed,
      String serverName,
      String serverLocation});
}

/// @nodoc
class _$StreamingPlatformCopyWithImpl<$Res>
    implements $StreamingPlatformCopyWith<$Res> {
  _$StreamingPlatformCopyWithImpl(this._self, this._then);

  final StreamingPlatform _self;
  final $Res Function(StreamingPlatform) _then;

  /// Create a copy of StreamingPlatform
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoAsset = null,
    Object? downloadSpeed = null,
    Object? uploadSpeed = null,
    Object? serverName = null,
    Object? serverLocation = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoAsset: null == logoAsset
          ? _self.logoAsset
          : logoAsset // ignore: cast_nullable_to_non_nullable
              as String,
      downloadSpeed: null == downloadSpeed
          ? _self.downloadSpeed
          : downloadSpeed // ignore: cast_nullable_to_non_nullable
              as String,
      uploadSpeed: null == uploadSpeed
          ? _self.uploadSpeed
          : uploadSpeed // ignore: cast_nullable_to_non_nullable
              as String,
      serverName: null == serverName
          ? _self.serverName
          : serverName // ignore: cast_nullable_to_non_nullable
              as String,
      serverLocation: null == serverLocation
          ? _self.serverLocation
          : serverLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [StreamingPlatform].
extension StreamingPlatformPatterns on StreamingPlatform {
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
    TResult Function(_StreamingPlatform value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StreamingPlatform() when $default != null:
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
    TResult Function(_StreamingPlatform value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamingPlatform():
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
    TResult? Function(_StreamingPlatform value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamingPlatform() when $default != null:
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
    TResult Function(
            String id,
            String name,
            String logoAsset,
            String downloadSpeed,
            String uploadSpeed,
            String serverName,
            String serverLocation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StreamingPlatform() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.logoAsset,
            _that.downloadSpeed,
            _that.uploadSpeed,
            _that.serverName,
            _that.serverLocation);
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
    TResult Function(
            String id,
            String name,
            String logoAsset,
            String downloadSpeed,
            String uploadSpeed,
            String serverName,
            String serverLocation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamingPlatform():
        return $default(
            _that.id,
            _that.name,
            _that.logoAsset,
            _that.downloadSpeed,
            _that.uploadSpeed,
            _that.serverName,
            _that.serverLocation);
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
    TResult? Function(
            String id,
            String name,
            String logoAsset,
            String downloadSpeed,
            String uploadSpeed,
            String serverName,
            String serverLocation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamingPlatform() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.logoAsset,
            _that.downloadSpeed,
            _that.uploadSpeed,
            _that.serverName,
            _that.serverLocation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StreamingPlatform implements StreamingPlatform {
  const _StreamingPlatform(
      {required this.id,
      required this.name,
      required this.logoAsset,
      required this.downloadSpeed,
      required this.uploadSpeed,
      required this.serverName,
      required this.serverLocation});
  factory _StreamingPlatform.fromJson(Map<String, dynamic> json) =>
      _$StreamingPlatformFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String logoAsset;
  @override
  final String downloadSpeed;
  @override
  final String uploadSpeed;
  @override
  final String serverName;
  @override
  final String serverLocation;

  /// Create a copy of StreamingPlatform
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StreamingPlatformCopyWith<_StreamingPlatform> get copyWith =>
      __$StreamingPlatformCopyWithImpl<_StreamingPlatform>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StreamingPlatformToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StreamingPlatform &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoAsset, logoAsset) ||
                other.logoAsset == logoAsset) &&
            (identical(other.downloadSpeed, downloadSpeed) ||
                other.downloadSpeed == downloadSpeed) &&
            (identical(other.uploadSpeed, uploadSpeed) ||
                other.uploadSpeed == uploadSpeed) &&
            (identical(other.serverName, serverName) ||
                other.serverName == serverName) &&
            (identical(other.serverLocation, serverLocation) ||
                other.serverLocation == serverLocation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logoAsset,
      downloadSpeed, uploadSpeed, serverName, serverLocation);

  @override
  String toString() {
    return 'StreamingPlatform(id: $id, name: $name, logoAsset: $logoAsset, downloadSpeed: $downloadSpeed, uploadSpeed: $uploadSpeed, serverName: $serverName, serverLocation: $serverLocation)';
  }
}

/// @nodoc
abstract mixin class _$StreamingPlatformCopyWith<$Res>
    implements $StreamingPlatformCopyWith<$Res> {
  factory _$StreamingPlatformCopyWith(
          _StreamingPlatform value, $Res Function(_StreamingPlatform) _then) =
      __$StreamingPlatformCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String logoAsset,
      String downloadSpeed,
      String uploadSpeed,
      String serverName,
      String serverLocation});
}

/// @nodoc
class __$StreamingPlatformCopyWithImpl<$Res>
    implements _$StreamingPlatformCopyWith<$Res> {
  __$StreamingPlatformCopyWithImpl(this._self, this._then);

  final _StreamingPlatform _self;
  final $Res Function(_StreamingPlatform) _then;

  /// Create a copy of StreamingPlatform
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoAsset = null,
    Object? downloadSpeed = null,
    Object? uploadSpeed = null,
    Object? serverName = null,
    Object? serverLocation = null,
  }) {
    return _then(_StreamingPlatform(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoAsset: null == logoAsset
          ? _self.logoAsset
          : logoAsset // ignore: cast_nullable_to_non_nullable
              as String,
      downloadSpeed: null == downloadSpeed
          ? _self.downloadSpeed
          : downloadSpeed // ignore: cast_nullable_to_non_nullable
              as String,
      uploadSpeed: null == uploadSpeed
          ? _self.uploadSpeed
          : uploadSpeed // ignore: cast_nullable_to_non_nullable
              as String,
      serverName: null == serverName
          ? _self.serverName
          : serverName // ignore: cast_nullable_to_non_nullable
              as String,
      serverLocation: null == serverLocation
          ? _self.serverLocation
          : serverLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
