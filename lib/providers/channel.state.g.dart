// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$asyncChannelHash() => r'36928523816d14d6948ca50d67047b56811e350c';

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

abstract class _$AsyncChannel
    extends BuildlessAutoDisposeAsyncNotifier<Channel> {
  late final Channel channel;

  FutureOr<Channel> build(
    Channel channel,
  );
}

/// Channel State Provider
///
/// Copied from [AsyncChannel].
@ProviderFor(AsyncChannel)
const asyncChannelProvider = AsyncChannelFamily();

/// Channel State Provider
///
/// Copied from [AsyncChannel].
class AsyncChannelFamily extends Family<AsyncValue<Channel>> {
  /// Channel State Provider
  ///
  /// Copied from [AsyncChannel].
  const AsyncChannelFamily();

  /// Channel State Provider
  ///
  /// Copied from [AsyncChannel].
  AsyncChannelProvider call(
    Channel channel,
  ) {
    return AsyncChannelProvider(
      channel,
    );
  }

  @override
  AsyncChannelProvider getProviderOverride(
    covariant AsyncChannelProvider provider,
  ) {
    return call(
      provider.channel,
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
  String? get name => r'asyncChannelProvider';
}

/// Channel State Provider
///
/// Copied from [AsyncChannel].
class AsyncChannelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AsyncChannel, Channel> {
  /// Channel State Provider
  ///
  /// Copied from [AsyncChannel].
  AsyncChannelProvider(
    Channel channel,
  ) : this._internal(
          () => AsyncChannel()..channel = channel,
          from: asyncChannelProvider,
          name: r'asyncChannelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$asyncChannelHash,
          dependencies: AsyncChannelFamily._dependencies,
          allTransitiveDependencies:
              AsyncChannelFamily._allTransitiveDependencies,
          channel: channel,
        );

  AsyncChannelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.channel,
  }) : super.internal();

  final Channel channel;

  @override
  FutureOr<Channel> runNotifierBuild(
    covariant AsyncChannel notifier,
  ) {
    return notifier.build(
      channel,
    );
  }

  @override
  Override overrideWith(AsyncChannel Function() create) {
    return ProviderOverride(
      origin: this,
      override: AsyncChannelProvider._internal(
        () => create()..channel = channel,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        channel: channel,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AsyncChannel, Channel>
      createElement() {
    return _AsyncChannelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AsyncChannelProvider && other.channel == channel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, channel.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AsyncChannelRef on AutoDisposeAsyncNotifierProviderRef<Channel> {
  /// The parameter `channel` of this provider.
  Channel get channel;
}

class _AsyncChannelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AsyncChannel, Channel>
    with AsyncChannelRef {
  _AsyncChannelProviderElement(super.provider);

  @override
  Channel get channel => (origin as AsyncChannelProvider).channel;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
