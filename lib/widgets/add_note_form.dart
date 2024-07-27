import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_field.dart';

class AddNoteForm extends StatelessWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 16.0),
        child:Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            CustomField(text: 'Title',),
            SizedBox(height: 16.0,),
            CustomField(
              text: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 90.0,),
            CustomButton(),
          ],
        ),
    );
  }
}

