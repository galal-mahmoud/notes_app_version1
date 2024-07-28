import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_version1/views/edit_view.dart';


import 'note_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
        child: ListView.builder(
          padding: EdgeInsetsDirectional.zero,
        itemBuilder: (context, index) =>  NoteItem(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>EditView(),),);
          },
        ),
    ),);
  }
}

