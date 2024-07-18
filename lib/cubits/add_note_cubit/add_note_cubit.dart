import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddnotecubitCubit extends Cubit<AddnotecubitState> {
  AddnotecubitCubit() : super(AddnotecubitInitial());

  addNote(NoteModel note) async {
    emit(AddnotecubitLoading());
    try {
      var notes = Hive.box<NoteModel>('notes_box');
      await notes.add(note);
      emit(AddnotecubitSuccess());
    } catch (e) {
      emit(AddnotecubitFailure(e.toString()));
    }
  }
}
