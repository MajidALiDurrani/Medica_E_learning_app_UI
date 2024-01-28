import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:medical_e_learning_app/controlar/MainScreenControlar.dart';
import 'package:medical_e_learning_app/views/BottomNavWidget.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, _) {
      return SafeArea(
          child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BotomNavWidget(
              onTap: () {
                mainScreenNotifier.pageindex = 0;
              },
              icon: mainScreenNotifier.pageIndex == 0
                  ? MaterialCommunityIcons.home
                  : MaterialCommunityIcons.home_outline,
            ),
            BotomNavWidget(
                onTap: () {
                  mainScreenNotifier.pageindex = 1;
                },
                icon: mainScreenNotifier.pageIndex == 1
                    ? MaterialCommunityIcons.comment
                    : MaterialCommunityIcons.comment_account_outline),
            BotomNavWidget(
                onTap: () {
                  mainScreenNotifier.pageindex = 2;
                },
                icon: mainScreenNotifier.pageIndex == 2
                    ? MaterialCommunityIcons.video
                    : MaterialCommunityIcons.video_plus_outline),
            BotomNavWidget(
                onTap: () {
                  mainScreenNotifier.pageindex = 3;
                },
                icon: mainScreenNotifier.pageIndex == 3
                    ? MaterialCommunityIcons.heart
                    : MaterialCommunityIcons.heart_outline),
            BotomNavWidget(
                onTap: () {
                  mainScreenNotifier.pageindex = 4;
                },
                icon: mainScreenNotifier.pageIndex == 4
                    ? Ionicons.person
                    : Ionicons.person_outline),
          ],
        ),
      ));
    });
  }
}
