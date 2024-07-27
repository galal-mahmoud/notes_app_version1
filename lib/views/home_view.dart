import 'package:flutter/material.dart';
import 'package:notes_app_version1/widgets/custom_appBar.dart';
import 'package:notes_app_version1/widgets/home_view_body.dart';

import '../widgets/add_note_form.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
        children: [
          CustomAppBar(
            text: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(
            height: 8.0,
          ),
          HomeViewBody(),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsetsDirectional.only(end: 8.0),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) =>  const AddNoteForm(),
            );
          },
          shape: const CircleBorder(),
          backgroundColor: Colors.cyanAccent,
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}


