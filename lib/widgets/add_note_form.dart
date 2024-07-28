import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            const CustomTextField(
              text: 'Title',
            ),
            const SizedBox(
              height: 16.0,
            ),
            const CustomTextField(
              text: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 90.0,
            ),
            CustomButton(
              onTap: () {
                formKey.currentState!.validate();
                formKey.currentState!.save();
              },
            ),
          ],
        ),
      )),
    );
  }
}
