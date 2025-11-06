// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_store_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DataStore)
const dataStoreProvider = DataStoreProvider._();

final class DataStoreProvider extends $AsyncNotifierProvider<DataStore, void> {
  const DataStoreProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dataStoreProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dataStoreHash();

  @$internal
  @override
  DataStore create() => DataStore();
}

String _$dataStoreHash() => r'40ac6bb166c3271309a837e5005b72ca5229d996';

abstract class _$DataStore extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}
