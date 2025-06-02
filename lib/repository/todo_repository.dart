import 'package:collection/collection.dart';
import 'package:flutter_architecture_playground/domain/todo.dart';
import 'package:flutter_architecture_playground/service/todo_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_repository.g.dart';

@riverpod
class TodosRepository extends _$TodosRepository {
  @override
  Future<List<Todo>> build() async {
    final data = await ref.watch(todoServiceProvider).fetchTodos();
    return data.map((e) => Todo.fromJson(e)).toList();
  }

  Future<Todo> fetchTodo(String id) async {
    final cache = state.valueOrNull?.firstWhereOrNull(
      (element) => element.id == id,
    );
    if (cache != null) {
      return cache;
    }
    final todo = await ref.read(todoServiceProvider).fetchTodo(id);
    return Todo.fromJson(todo);
  }

  Future<void> addTodo({required String title}) async {
    await ref.read(todoServiceProvider).addTodo(title: title);
    ref.invalidateSelf();
  }

  Future<void> toggleTodo(String id) async {
    await ref.watch(todoServiceProvider).toggleTodo(id);
    ref.invalidateSelf();
  }
}
