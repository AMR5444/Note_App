import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:test/Simple_Bloc_observer.dart';
import 'package:test/cubits/add_notes_cubit/nots_cubit/notes_cubit_cubit.dart';
import 'package:test/models/note_model.dart';
import 'package:test/views/NotsPage_View.dart';
import 'package:test/views/Widget/Constants.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelsAdapter());
  await Hive.openBox<NoteModels>(knotesBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: NotspageView(),
      ),
    );
  }
}
