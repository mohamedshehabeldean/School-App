import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:iti_project/cubit/gpacalculate_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Notes/hive/boxes.dart';
import 'modules/splash_screen.dart';
import 'package:hive/hive.dart';
// import 'package:hive01/Notes/hive/boxes.dart';
// import 'package:hive01/Notes/note_screen.dart';
// import 'package:hive_flutter/hive_flutter.dart'


void main() async{
  await Hive.initFlutter();
  await Hive.openBox(noteBox);
  runApp(MyApp());
}


//statless and statefull

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GpacalculateCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    );
  }

}