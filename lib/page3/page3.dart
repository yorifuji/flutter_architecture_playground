import 'package:flutter/material.dart';
import 'package:flutter_architecture_playground/page3/view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Page3 extends ConsumerWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(viewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Page')),
      body: Center(
        child: asyncData.when(
          skipLoadingOnRefresh: false,
          skipLoadingOnReload: false,
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
                    child: const Text('Refresh Data'),
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
