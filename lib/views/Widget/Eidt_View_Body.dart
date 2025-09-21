import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/cubits/add_notes_cubit/nots_cubit/notes_cubit_cubit.dart';
import 'package:test/models/note_model.dart';
import 'package:test/views/Widget/Custom_AppBar.dart';
import 'package:test/views/Widget/Custom_Text_feild.dart';

class EidtViewBody extends StatefulWidget {
  EidtViewBody({
    super.key,
    required this.note,
    this.contant,
    this.titel,
  });
  final NoteModels note;

  @override
  State<EidtViewBody> createState() => _EidtViewBodyState();
  String? titel, contant;
}

class _EidtViewBodyState extends State<EidtViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = widget.titel ?? widget.note.title;
              widget.note.supTitle = widget.contant ?? widget.note.supTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: ('Eidt Note'),
            icon: Icons.check,
          ),
          SizedBox(height: 50),
          CustomTextField(
            onChanged: (velue) {
              widget.titel = velue;
            },
            hintText: widget.note.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (velue) {
              widget.contant = velue;
            },
            hintText: widget.note.supTitle,
            maxLiens: 5,
          ),
        ],
      ),
    );
  }
}
