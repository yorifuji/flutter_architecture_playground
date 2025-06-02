// import 'package:flutter/material.dart';
// import 'package:flutter_architecture_playground/page2/view_model.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class Page2 extends HookConsumerWidget {
//   const Page2({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final asyncData = ref.watch(viewModelProvider);

//     final skipLoadingOnReload = useState(false);
//     final skipLoadingOnRefresh = useState(true);

//     return Scaffold(
//       appBar: AppBar(title: const Text('Page')),
//       body: Center(
//         child: asyncData.when(
//           skipLoadingOnReload: skipLoadingOnReload.value,
//           skipLoadingOnRefresh: skipLoadingOnRefresh.value,
//           data:
//               (data) => Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Timestamp: ${data['timestamp']}',
//                     style: Theme.of(context).textTheme.bodyLarge,
//                   ),
//                   Text(
//                     'Message: ${data['message']}',
//                     style: Theme.of(context).textTheme.bodyLarge,
//                   ),
//                   const SizedBox(height: 16),
//                   ElevatedButton(
//                     onPressed:
//                         () =>
//                             ref
//                                 .read(viewModelProvider.notifier)
//                                 .refreshViewModel(),
//                     child: const Text('Invalidate ViewModel'),
//                   ),
//                   const SizedBox(height: 16),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text('Skip Loading on Refresh:'),
//                       const SizedBox(width: 8),
//                       Switch(
//                         value: skipLoadingOnRefresh.value,
//                         onChanged:
//                             (value) => skipLoadingOnRefresh.value = value,
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 16),
//                   ElevatedButton(
//                     onPressed:
//                         () =>
//                             ref
//                                 .read(viewModelProvider.notifier)
//                                 .refreshProvider(),
//                     child: const Text('Invalidate dependency provider'),
//                   ),
//                   const SizedBox(height: 16),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text('Skip Loading on Reload:'),
//                       const SizedBox(width: 8),
//                       Switch(
//                         value: skipLoadingOnReload.value,
//                         onChanged: (value) => skipLoadingOnReload.value = value,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//           loading: () => const CircularProgressIndicator(),
//           error: (error, stack) => Text('Error: $error'),
//         ),
//       ),
//     );
//   }
// }
