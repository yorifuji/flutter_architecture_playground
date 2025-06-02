import 'package:flutter/material.dart';
import 'package:flutter_architecture_playground/page/todo/todo_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoPage extends ConsumerWidget {
  const TodoPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(todoPageViewModelProvider(id));
    return Scaffold(
      appBar: AppBar(title: const Text('Todo Page')),
      body: viewModel.when(
        data:
            (data) => ListTile(
              title: Text(data.todo.title),
              trailing: Checkbox(
                value: data.todo.completed,
                onChanged:
                    (value) => ref
                        .read(todoPageViewModelProvider(id).notifier)
                        .toggleTodo(data.todo.id),
              ),
            ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
