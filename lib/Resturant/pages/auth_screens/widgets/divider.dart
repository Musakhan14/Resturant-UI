import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1.0, // Adjust the height of the horizontal line
            color: Colors.grey,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            'Or',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 10,
            height: 1.0, // Adjust the height of the horizontal line
            color: Colors.grey,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
          ),
        ),
      ],
    );
  }
}
