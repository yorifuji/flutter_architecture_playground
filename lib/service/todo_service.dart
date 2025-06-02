import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'todo_service.g.dart';

@Riverpod(keepAlive: true)
TodoService todoService(Ref ref) => TodoService();

class TodoService {
  final List<Map<String, dynamic>> _todos = [
    {'id': '1', 'title': 'Buy groceries', 'completed': false},
    {'id': '2', 'title': 'Buy vegetables', 'completed': false},
    {'id': '3', 'title': 'Buy fruits', 'completed': false},
  ];

  Future<Map<String, dynamic>> fetchTodo(String id) async {
    return _todos.firstWhere((element) => element['id'] == id);
  }

  Future<List<Map<String, dynamic>>> fetchTodos() async {
    return _todos;
  }

  Future<void> addTodo({required String title}) async {
    _todos.add({'id': Uuid().v4(), 'title': title, 'completed': false});
  }

  Future<void> toggleTodo(String id) async {
    final todo = _todos.firstWhere((element) => element['id'] == id);
    todo['completed'] = !todo['completed'];
  }

  Future<void> deleteTodo(String id) async {
    _todos.removeWhere((element) => element['id'] == id);
  }
}
