import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_version1/constants.dart';
import 'package:notes_app_version1/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app_version1/models/note_model.dart';

class AddNoteCubit extends Cubit {
  AddNoteCubit(initialState) : super(AddNoteInitialState());
  addNote(NoteModel note) async {
    emit(AddNoteLoadingState());
    try {
      var notesBox = Hive.box(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccessState());
    } catch (e) {
      emit(
        AddNoteFailurState(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
