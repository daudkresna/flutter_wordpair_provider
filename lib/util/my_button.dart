import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final void Function() onPressed;

  const MyButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(text),
    );
  }
}
