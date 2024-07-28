import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.text,  this.maxLines = 1, this.onSave,
  });
  final String text;
  final int maxLines;
  final Function(String?)? onSave;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onSaved: onSave,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'this field is required';
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: text,
          hintStyle: const TextStyle(
            color: Colors.cyanAccent,
          ),
          enabledBorder: buildOutlineInputBorder(
            color: Colors.white
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