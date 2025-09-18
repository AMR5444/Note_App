import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:test/models/note_model.dart';
import 'package:test/views/Widget/Custom_Bottom.dart';
import 'package:test/views/Widget/Custom_Text_feild.dart';

class addNoteForm extends StatefulWidget {
  var supTitle;
  var title;

  addNoteForm({
    super.key,
    this.supTitle,
    this.title,
  });

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

class _addNoteFormState extends State<addNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, supTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      onChanged: () {},
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: 'content',
            onSaved: (value) {
              supTitle = value;
            },
            maxLiens: 5,
          ),
          SizedBox(height: 32),
          BlocBuilder<AddNotesCubit, NotesState>(
            builder: (context, state) {
              return customButtom(
                isLoding: state is NotesLoding ? true : false,
                text: 'Add',
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var noteModales = NoteModels(
                        title: title!,
                        supTitle: supTitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value);
                    BlocProvider.of<AddNotesCubit>(context)
                        .addNote(noteModales);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
