import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_version1/constants.dart';
import 'package:notes_app_version1/models/note_model.dart';
import 'package:notes_app_version1/views/home_view.dart';

void main()async{
  await Hive.initFlutter();
  Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesAppV1());
}

class NotesAppV1 extends StatelessWidget {
  const NotesAppV1({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark,
      ),
      home: const HomeView(),
    );
  }
}
