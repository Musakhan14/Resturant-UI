import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    String name = 'John Doe';
    int age = 30;

    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second page with multiple data points
            Navigator.pushNamed(
              context,
              '/second',
              arguments: {
                'name': name,
                'age': age,
              },
            );
          },
          child: const Text('Go to Second Page'),
        ),
      ),
    );
  }
}
