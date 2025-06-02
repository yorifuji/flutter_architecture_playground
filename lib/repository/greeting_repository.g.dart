// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'greeting_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$greetingRepositoryHash() =>
    r'1eec53bd538bb0aa63cbde01ebaf154efad09ec5';

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

abstract class _$GreetingRepository
    extends BuildlessAutoDisposeAsyncNotifier<Greeting> {
  late final String target;

  FutureOr<Greeting> build(
    String target,
  );
}

/// See also [GreetingRepository].
@ProviderFor(GreetingRepository)
const greetingRepositoryProvider = GreetingRepositoryFamily();

/// See also [GreetingRepository].
class GreetingRepositoryFamily extends Family<AsyncValue<Greeting>> {
  /// See also [GreetingRepository].
  const GreetingRepositoryFamily();

  /// See also [GreetingRepository].
  GreetingRepositoryProvider call(
    String target,
  ) {
    return GreetingRepositoryProvider(
      target,
    );
  }

  @override
  GreetingRepositoryProvider getProviderOverride(
    covariant GreetingRepositoryProvider provider,
  ) {
    return call(
      provider.target,
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
  String? get name => r'greetingRepositoryProvider';
}

/// See also [GreetingRepository].
class GreetingRepositoryProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GreetingRepository, Greeting> {
  /// See also [GreetingRepository].
  GreetingRepositoryProvider(
    String target,
  ) : this._internal(
          () => GreetingRepository()..target = target,
          from: greetingRepositoryProvider,
          name: r'greetingRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$greetingRepositoryHash,
          dependencies: GreetingRepositoryFamily._dependencies,
          allTransitiveDependencies:
              GreetingRepositoryFamily._allTransitiveDependencies,
          target: target,
        );

  GreetingRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.target,
  }) : super.internal();

  final String target;

  @override
  FutureOr<Greeting> runNotifierBuild(
    covariant GreetingRepository notifier,
  ) {
    return notifier.build(
      target,
    );
  }

  @override
  Override overrideWith(GreetingRepository Function() create) {
    return ProviderOverride(
      origin: this,
      override: GreetingRepositoryProvider._internal(
        () => create()..target = target,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        target: target,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GreetingRepository, Greeting>
      createElement() {
    return _GreetingRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GreetingRepositoryProvider && other.target == target;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, target.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GreetingRepositoryRef on AutoDisposeAsyncNotifierProviderRef<Greeting> {
  /// The parameter `target` of this provider.
  String get target;
}

class _GreetingRepositoryProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GreetingRepository,
        Greeting> with GreetingRepositoryRef {
  _GreetingRepositoryProviderElement(super.provider);

  @override
  String get target => (origin as GreetingRepositoryProvider).target;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
