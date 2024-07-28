
class AddNoteStates{}

class AddNoteInitialState extends AddNoteStates{}

class AddNoteLoadingState extends AddNoteStates{}

class AddNoteSuccessState extends AddNoteStates{}

class AddNoteFailurState extends AddNoteStates{
  final String errorMessage;
  AddNoteFailurState({
    required this.errorMessage,
});
}