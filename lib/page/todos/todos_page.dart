import 'package:flutter/material.dart';
import 'package:flutter_architecture_playground/page/todo/todo_page.dart';
import 'package:flutter_architecture_playground/page/todos/todos_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodosPage extends ConsumerWidget {
  const TodosPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(todosPageViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Todos Page')),
      body: viewModel.when(
        data:
            (data) => ListView.builder(
              itemCount: data.todos.length,
              itemBuilder:
                  (context, index) => ListTile(
                    title: Text(data.todos[index].title),
                    leading: Checkbox(
                      value: data.todos[index].completed,
                      onChanged:
                          (value) => ref
                              .read(todosPageViewModelProvider.notifier)
                              .toggleTodo(data.todos[index].id),
                    ),
                    trailing: IconButton(
                      onPressed:
                          () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      TodoPage(id: data.todos[index].id),
                            ),
                          ),
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
            ),
        loading: () => const CircularProgressIndicator(),
        error: (error, stack) => Text('Error: $error'),
      ),
    );
  }
}
