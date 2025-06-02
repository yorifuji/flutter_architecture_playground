import 'package:flutter_architecture_playground/domain/greeting.dart';
import 'package:flutter_architecture_playground/service/api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'greeting_repository.g.dart';

@riverpod
class GreetingRepository extends _$GreetingRepository {
  @override
  Future<Greeting> build(String target) async {
    final data = await ref.watch(greetingServiceProvider).fetchGreeting(target);
    return Greeting.fromJson(data);
  }

  // Future<void> refreshData() async {
  //   final data = await ref.read(greetingServiceProvider).fetchGreeting('John');
  //   state = AsyncData(Greeting.fromJson(data));
  // }
}
