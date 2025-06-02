import 'package:flutter/material.dart';
import 'package:flutter_architecture_playground/page/page1/page1_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Page1 extends ConsumerWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(page1ViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Page')),
      body: Center(
        child: asyncData.when(
          data:
              (data) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Message: ${data.message.message}',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  // ElevatedButton(
                  //   onPressed:
                  //       () =>
                  //           ref.read(page1ViewModelProvider.notifier).refreshData(),
                  //   child: const Text('fetch data'),
                  // ),
                ],
              ),
          loading: () => const CircularProgressIndicator(),
          error: (error, stack) => Text('Error: $error'),
        ),
      ),
    );
  }
}
