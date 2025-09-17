import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:test/Simple_Bloc_observer.dart';
import 'package:test/cubits/cubit/add_notes_cubit.dart';
import 'package:test/models/note_model.dart';
import 'package:test/views/NotsPage_View.dart';
import 'package:test/views/Widget/Constants.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();

  await Hive.openBox(knotesBox);
  Hive.registerAdapter(NoteModelsAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NotesCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: NotspageView(),
      ),
    );
  }
}
