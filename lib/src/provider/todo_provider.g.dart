// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TodoProvider)
const todoProviderProvider = TodoProviderProvider._();

final class TodoProviderProvider
    extends $AsyncNotifierProvider<TodoProvider, List<Todo>?> {
  const TodoProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todoProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todoProviderHash();

  @$internal
  @override
  TodoProvider create() => TodoProvider();
}

String _$todoProviderHash() => r'6b7d8de28826ede08535fe3722f2dfa09325c6e1';

abstract class _$TodoProvider extends $AsyncNotifier<List<Todo>?> {
  FutureOr<List<Todo>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Todo>?>, List<Todo>?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Todo>?>, List<Todo>?>,
              AsyncValue<List<Todo>?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
