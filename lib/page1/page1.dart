import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_architecture_playground/page1/view_model.dart';

class Page1 extends ConsumerWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(viewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Page')),
      body: Center(
        child: asyncData.when(
          data:
              (data) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Timestamp: ${data['timestamp']}',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'Message: ${data['message']}',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed:
                        () =>
                            ref.read(viewModelProvider.notifier).refreshData(),
                    child: const Text('fetch data'),
                  ),
                ],
              ),
          loading: () => const CircularProgressIndicator(),
          error: (error, stack) => Text('Error: $error'),
        ),
      ),
    );
  }
}
