import 'package:flutter/material.dart';
import 'package:notes_app_version1/widgets/edit_view_body.dart';

import '../widgets/custom_appBar.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          CustomAppBar(text: 'Edit Note', icon: Icons.check, onTap: (){
            Navigator.pop(context);
          },),
          const EditViewBody(),
        ],
      )
    );
  }
}
