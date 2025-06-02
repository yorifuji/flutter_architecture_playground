import 'package:flutter_architecture_playground/domain/greeting.dart';
import 'package:flutter_architecture_playground/domain/message.dart';
import 'package:flutter_architecture_playground/repository/greeting_repository.dart';
import 'package:flutter_architecture_playground/repository/message_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page1_view_model.g.dart';

class Page1State {
  final Greeting greeting;
  final Message message;

  Page1State({required this.message, required this.greeting});
}

@riverpod
class Page1ViewModel extends _$Page1ViewModel {
  @override
  Future<Page1State> build() async {
    final message = await ref.watch(messageRepositoryProvider.future);
    final greeting = await ref.watch(
      greetingRepositoryProvider(message.message).future,
    );
    return Page1State(greeting: greeting, message: message);
  }
}
