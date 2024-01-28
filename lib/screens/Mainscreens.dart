import 'package:flutter/material.dart';
import 'package:medical_e_learning_app/controlar/MainScreenControlar.dart';
import 'package:medical_e_learning_app/screens/FavoritsPage.dart';
import 'package:medical_e_learning_app/screens/HomePage.dart';
import 'package:medical_e_learning_app/screens/LilkePage.dart';
import 'package:medical_e_learning_app/screens/commentsPage.dart';
import 'package:medical_e_learning_app/screens/videosScreen.dart';
import 'package:medical_e_learning_app/views/BottomNav.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pageList = const [
    Homepage(),
    commentsPage(),
    videosPage(),
    LikePage(),
    FavoritsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, _) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 231, 231),
        body: pageList[mainScreenNotifier.pageIndex],
        bottomNavigationBar: const BottomNavBar(),
      );
    });
  }
}
