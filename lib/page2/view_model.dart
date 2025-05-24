import 'package:flutter_architecture_playground/repository/dummy_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class ViewModel extends _$ViewModel {
  @override
  Future<Map<String, dynamic>> build() async {
    return ref.watch(dummyRepositoryProvider).fetchData();
  }

  Future<void> refreshViewModel() async {
    ref.invalidateSelf();
  }

  Future<void> refreshProvider() async {
    ref.invalidate(dummyRepositoryProvider);
  }
}
