import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      height: 55.0,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
          color: Colors.cyanAccent
      ),
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    ));
  }
}

