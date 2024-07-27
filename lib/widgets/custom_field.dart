import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key, required this.text,  this.maxLines = 1,
  });
  final String text;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: text,
          hintStyle: const TextStyle(
            color: Colors.cyanAccent,
          ),
          enabledBorder: buildOutlineInputBorder(
            color: Colors.white60
          ),
        focusedBorder: buildOutlineInputBorder(color: Colors.cyanAccent),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
            borderSide: BorderSide(
                color: color
            ),
        );
  }
}