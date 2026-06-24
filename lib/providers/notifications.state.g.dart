// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$streamNotificationsHash() =>
    r'88d2881975569995bfa71c425cfb0c8c9b75cf9d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [streamNotifications].
@ProviderFor(streamNotifications)
const streamNotificationsProvider = StreamNotificationsFamily();

/// See also [streamNotifications].
class StreamNotificationsFamily
    extends Family<AsyncValue<List<Map<String, dynamic>>>> {
  /// See also [streamNotifications].
  const StreamNotificationsFamily();

  /// See also [streamNotifications].
  StreamNotificationsProvider call(
    String email,
  ) {
    return StreamNotificationsProvider(
      email,
    );
  }

  @override
  StreamNotificationsProvider getProviderOverride(
    covariant StreamNotificationsProvider provider,
  ) {
    return call(
      provider.email,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'streamNotificationsProvider';
}

/// See also [streamNotifications].
class StreamNotificationsProvider
    extends AutoDisposeStreamProvider<List<Map<String, dynamic>>> {
  /// See also [streamNotifications].
  StreamNotificationsProvider(
    String email,
  ) : this._internal(
          (ref) => streamNotifications(
            ref as StreamNotificationsRef,
            email,
          ),
          from: streamNotificationsProvider,
          name: r'streamNotificationsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$streamNotificationsHash,
          dependencies: StreamNotificationsFamily._dependencies,
          allTransitiveDependencies:
              StreamNotificationsFamily._allTransitiveDependencies,
          email: email,
        );

  StreamNotificationsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.email,
  }) : super.internal();

  final String email;

  @override
  Override overrideWith(
    Stream<List<Map<String, dynamic>>> Function(StreamNotificationsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StreamNotificationsProvider._internal(
        (ref) => create(ref as StreamNotificationsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        email: email,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<Map<String, dynamic>>> createElement() {
    return _StreamNotificationsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StreamNotificationsProvider && other.email == email;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StreamNotificationsRef
    on AutoDisposeStreamProviderRef<List<Map<String, dynamic>>> {
  /// The parameter `email` of this provider.
  String get email;
}

class _StreamNotificationsProviderElement
    extends AutoDisposeStreamProviderElement<List<Map<String, dynamic>>>
    with StreamNotificationsRef {
  _StreamNotificationsProviderElement(super.provider);

  @override
  String get email => (origin as StreamNotificationsProvider).email;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
