import 'package:flutter/material.dart';

void main(){
  runApp(const NotesAppV1());
}

class NotesAppV1 extends StatelessWidget {
  const NotesAppV1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

    );
  }
}
