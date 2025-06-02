import 'package:flutter/material.dart';
import 'package:flutter_architecture_playground/page/page1/page1.dart';
import 'package:flutter_architecture_playground/page/todos/todos_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => const Page1()));
              },
              child: const Text('Go to Page 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const TodosPage()),
                );
              },
              child: const Text('Go to Todos Page'),
            ),

            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(
            //       context,
            //     ).push(MaterialPageRoute(builder: (context) => const Page2()));
            //   },
            //   child: const Text('Go to Page 2'),
            // ),
          ],
        ),
      ),
    );
  }
}
