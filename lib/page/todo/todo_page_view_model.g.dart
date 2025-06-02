// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoPageViewModelHash() => r'33861b92ce26445b298099692cb6ce28746301de';

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

abstract class _$TodoPageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<TodoPageState> {
  late final String id;

  FutureOr<TodoPageState> build(
    String id,
  );
}

/// See also [TodoPageViewModel].
@ProviderFor(TodoPageViewModel)
const todoPageViewModelProvider = TodoPageViewModelFamily();

/// See also [TodoPageViewModel].
class TodoPageViewModelFamily extends Family<AsyncValue<TodoPageState>> {
  /// See also [TodoPageViewModel].
  const TodoPageViewModelFamily();

  /// See also [TodoPageViewModel].
  TodoPageViewModelProvider call(
    String id,
  ) {
    return TodoPageViewModelProvider(
      id,
    );
  }

  @override
  TodoPageViewModelProvider getProviderOverride(
    covariant TodoPageViewModelProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'todoPageViewModelProvider';
}

/// See also [TodoPageViewModel].
class TodoPageViewModelProvider extends AutoDisposeAsyncNotifierProviderImpl<
    TodoPageViewModel, TodoPageState> {
  /// See also [TodoPageViewModel].
  TodoPageViewModelProvider(
    String id,
  ) : this._internal(
          () => TodoPageViewModel()..id = id,
          from: todoPageViewModelProvider,
          name: r'todoPageViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$todoPageViewModelHash,
          dependencies: TodoPageViewModelFamily._dependencies,
          allTransitiveDependencies:
              TodoPageViewModelFamily._allTransitiveDependencies,
          id: id,
        );

  TodoPageViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<TodoPageState> runNotifierBuild(
    covariant TodoPageViewModel notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(TodoPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: TodoPageViewModelProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TodoPageViewModel, TodoPageState>
      createElement() {
    return _TodoPageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoPageViewModelProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TodoPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<TodoPageState> {
  /// The parameter `id` of this provider.
  String get id;
}

class _TodoPageViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TodoPageViewModel,
        TodoPageState> with TodoPageViewModelRef {
  _TodoPageViewModelProviderElement(super.provider);

  @override
  String get id => (origin as TodoPageViewModelProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
