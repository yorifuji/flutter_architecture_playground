import 'package:flutter_architecture_playground/domain/todo.dart';
import 'package:flutter_architecture_playground/repository/todo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_page_view_model.g.dart';

class TodoPageState {
  final Todo todo;

  TodoPageState({required this.todo});
}

@riverpod
class TodoPageViewModel extends _$TodoPageViewModel {
  @override
  Future<TodoPageState> build(String id) async {
    ref.watch(todosRepositoryProvider);
    final todo = await ref
        .watch(todosRepositoryProvider.notifier)
        .fetchTodo(id);
    return TodoPageState(todo: todo);
  }

  Future<void> toggleTodo(String id) async {
    await ref.read(todosRepositoryProvider.notifier).toggleTodo(id);
  }
}
