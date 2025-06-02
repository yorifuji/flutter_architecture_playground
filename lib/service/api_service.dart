import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_service.g.dart';

@riverpod
MessageService messageService(Ref ref) => MessageService();

class MessageService {
  Future<Map<String, dynamic>> fetchMessage() async {
    await Future.delayed(const Duration(seconds: 1));
    return {
      'timestamp': DateTime.now().toIso8601String(),
      'message': 'Hello from MessageService!',
    };
  }
}

@riverpod
GreetingService greetingService(Ref ref) => GreetingService();

class GreetingService {
  Future<Map<String, dynamic>> fetchGreeting(String name) async {
    await Future.delayed(const Duration(seconds: 1));
    return {'greeting': 'Hello $name!'};
  }
}
