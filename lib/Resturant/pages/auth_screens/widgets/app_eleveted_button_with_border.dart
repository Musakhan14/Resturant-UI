import 'package:flutter/material.dart';

class BorderElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const BorderElevatedButton({
    Key? key,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent, // No background color
        minimumSize: const Size(double.infinity, 50), // Set width to double.infinity and height to 50
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0), // Set black border radius
          side: const BorderSide(color: Colors.black), // Set black border color
        ),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 16,
        color: Colors.black
        ),
      ),
    );
  }
}