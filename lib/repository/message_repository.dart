import 'package:flutter_architecture_playground/domain/message.dart';
import 'package:flutter_architecture_playground/service/api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_repository.g.dart';

@riverpod
class MessageRepository extends _$MessageRepository {
  @override
  Future<Message> build() async {
    final data = await ref.watch(messageServiceProvider).fetchMessage();
    return Message.fromJson(data);
  }

  Future<void> refreshData() async {
    final data = await ref.read(messageServiceProvider).fetchMessage();
    state = AsyncData(Message.fromJson(data));
  }
}
