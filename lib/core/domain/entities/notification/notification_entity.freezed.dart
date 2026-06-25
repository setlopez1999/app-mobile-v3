// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationEntity {
  int get id;
  String get title;
  String get text;
  int get read;
  int get user_id;
  int get topic_id;
  String get created_at;
  String get updated_at;
  String get image_url;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationEntityCopyWith<NotificationEntity> get copyWith =>
      _$NotificationEntityCopyWithImpl<NotificationEntity>(
          this as NotificationEntity, _$identity);

  /// Serializes this NotificationEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.topic_id, topic_id) ||
                other.topic_id == topic_id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, text, read, user_id,
      topic_id, created_at, updated_at, image_url);

  @override
  String toString() {
    return 'NotificationEntity(id: $id, title: $title, text: $text, read: $read, user_id: $user_id, topic_id: $topic_id, created_at: $created_at, updated_at: $updated_at, image_url: $image_url)';
  }
}

/// @nodoc
abstract mixin class $NotificationEntityCopyWith<$Res> {
  factory $NotificationEntityCopyWith(
          NotificationEntity value, $Res Function(NotificationEntity) _then) =
      _$NotificationEntityCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String title,
      String text,
      int read,
      int user_id,
      int topic_id,
      String created_at,
      String updated_at,
      String image_url});
}

/// @nodoc
class _$NotificationEntityCopyWithImpl<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  _$NotificationEntityCopyWithImpl(this._self, this._then);

  final NotificationEntity _self;
  final $Res Function(NotificationEntity) _then;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? text = null,
    Object? read = null,
    Object? user_id = null,
    Object? topic_id = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? image_url = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _self.read
          : read // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _self.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      topic_id: null == topic_id
          ? _self.topic_id
          : topic_id // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _self.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _self.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      image_url: null == image_url
          ? _self.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [NotificationEntity].
extension NotificationEntityPatterns on NotificationEntity {
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
    TResult Function(_NotificationEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationEntity() when $default != null:
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
    TResult Function(_NotificationEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationEntity():
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
    TResult? Function(_NotificationEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationEntity() when $default != null:
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
            int id,
            String title,
            String text,
            int read,
            int user_id,
            int topic_id,
            String created_at,
            String updated_at,
            String image_url)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationEntity() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.text,
            _that.read,
            _that.user_id,
            _that.topic_id,
            _that.created_at,
            _that.updated_at,
            _that.image_url);
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
            int id,
            String title,
            String text,
            int read,
            int user_id,
            int topic_id,
            String created_at,
            String updated_at,
            String image_url)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationEntity():
        return $default(
            _that.id,
            _that.title,
            _that.text,
            _that.read,
            _that.user_id,
            _that.topic_id,
            _that.created_at,
            _that.updated_at,
            _that.image_url);
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
            int id,
            String title,
            String text,
            int read,
            int user_id,
            int topic_id,
            String created_at,
            String updated_at,
            String image_url)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationEntity() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.text,
            _that.read,
            _that.user_id,
            _that.topic_id,
            _that.created_at,
            _that.updated_at,
            _that.image_url);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationEntity implements NotificationEntity {
  const _NotificationEntity(
      {required this.id,
      required this.title,
      required this.text,
      required this.read,
      this.user_id = 0,
      this.topic_id = 0,
      required this.created_at,
      required this.updated_at,
      this.image_url =
          'https://cdn-icons-png.flaticon.com/512/4226/4226663.png'});
  factory _NotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntityFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String text;
  @override
  final int read;
  @override
  @JsonKey()
  final int user_id;
  @override
  @JsonKey()
  final int topic_id;
  @override
  final String created_at;
  @override
  final String updated_at;
  @override
  @JsonKey()
  final String image_url;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationEntityCopyWith<_NotificationEntity> get copyWith =>
      __$NotificationEntityCopyWithImpl<_NotificationEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.topic_id, topic_id) ||
                other.topic_id == topic_id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, text, read, user_id,
      topic_id, created_at, updated_at, image_url);

  @override
  String toString() {
    return 'NotificationEntity(id: $id, title: $title, text: $text, read: $read, user_id: $user_id, topic_id: $topic_id, created_at: $created_at, updated_at: $updated_at, image_url: $image_url)';
  }
}

/// @nodoc
abstract mixin class _$NotificationEntityCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$NotificationEntityCopyWith(
          _NotificationEntity value, $Res Function(_NotificationEntity) _then) =
      __$NotificationEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String text,
      int read,
      int user_id,
      int topic_id,
      String created_at,
      String updated_at,
      String image_url});
}

/// @nodoc
class __$NotificationEntityCopyWithImpl<$Res>
    implements _$NotificationEntityCopyWith<$Res> {
  __$NotificationEntityCopyWithImpl(this._self, this._then);

  final _NotificationEntity _self;
  final $Res Function(_NotificationEntity) _then;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? text = null,
    Object? read = null,
    Object? user_id = null,
    Object? topic_id = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? image_url = null,
  }) {
    return _then(_NotificationEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _self.read
          : read // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _self.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      topic_id: null == topic_id
          ? _self.topic_id
          : topic_id // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _self.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _self.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      image_url: null == image_url
          ? _self.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
