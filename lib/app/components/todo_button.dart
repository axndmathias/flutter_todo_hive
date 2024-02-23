import 'package:flutter/material.dart';

class TodoButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const TodoButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.deepPurple,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
