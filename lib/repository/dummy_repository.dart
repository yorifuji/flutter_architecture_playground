import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dummy_repository.g.dart';

class DummyRepository {
  Future<Map<String, dynamic>> fetchData() async {
    await Future.delayed(const Duration(seconds: 2)); // 2秒のディレイ
    return {
      'timestamp': DateTime.now().toIso8601String(),
      'message': 'Hello from DummyRepository!',
    };
  }
}

@riverpod
DummyRepository dummyRepository(Ref ref) {
  return DummyRepository();
}
