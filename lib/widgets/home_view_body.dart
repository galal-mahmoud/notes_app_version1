import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'note_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
        child: ListView.builder(
          padding: EdgeInsetsDirectional.zero,
        itemBuilder: (context, index) => const NoteItem(),
    ),);
  }
}

