import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_version1/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 16.0),
        child:Column(
      children: [
        SizedBox(height: 50.0,),
        CustomTextField(text: 'Title'),
        SizedBox(height: 32.0,),
        CustomTextField(text: 'Content', maxLines: 5,),
      ],
    ));
  }
}
