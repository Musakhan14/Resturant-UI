import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const AppElevatedButton({
    Key? key,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity,
            50), // Set width to double.infinity and height to 50
      ),
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
