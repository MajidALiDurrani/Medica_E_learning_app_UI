import 'package:flutter/material.dart';
import 'package:medical_e_learning_app/controlar/MainScreenControlar.dart';
import 'package:medical_e_learning_app/screens/HomePageSubScreens/courses.dart';
import 'package:medical_e_learning_app/screens/HomePageSubScreens/subjects.dart';
import 'package:medical_e_learning_app/screens/Mainscreens.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (contex) => MainScreenNotifier())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MainScreen());
  }
}
