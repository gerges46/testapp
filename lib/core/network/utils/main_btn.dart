import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String txt;
  final VoidCallback onPressed;
  final Color color;
  final Color txtColor;

  MainButton({
    required this.txt,
    required this.onPressed,
    required this.color,
    required this.txtColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 42,
      minWidth: 342,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      onPressed: onPressed, // Use the passed callback here
      child: Text(
        txt,
        style: TextStyle(color: txtColor, fontSize: 16, fontWeight: FontWeight.w700),
      ),
    );
  }
}

