import 'package:flutter_architecture_playground/domain/todo.dart';
import 'package:flutter_architecture_playground/repository/todo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todos_page_view_model.g.dart';

class TodosPageState {
  final List<Todo> todos;

  TodosPageState({required this.todos});
}

@riverpod
class TodosPageViewModel extends _$TodosPageViewModel {
  @override
  Future<TodosPageState> build() async {
    final todos = await ref.watch(todosRepositoryProvider.future);
    return TodosPageState(todos: todos);
  }

  Future<void> addTodo(String title) async {
    await ref.read(todosRepositoryProvider.notifier).addTodo(title: title);
  }

  Future<void> toggleTodo(String id) async {
    await ref.read(todosRepositoryProvider.notifier).toggleTodo(id);
  }
}
