import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/cubits/add_notes_cubit/nots_cubit/notes_cubit_cubit.dart';
import 'package:test/views/Widget/Custom_AppBar.dart';
import 'package:test/views/Widget/Custom_Note_ListView.dart';

class NotsViewBody extends StatefulWidget {
  const NotsViewBody({super.key});

  @override
  State<NotsViewBody> createState() => _NotsViewBodyState();
}

class _NotsViewBodyState extends State<NotsViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
            onPressed: onPressed,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
