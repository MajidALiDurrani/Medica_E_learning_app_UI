import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:medical_e_learning_app/views/Appstyle.dart';
import 'package:medical_e_learning_app/views/ButtonsRow.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.arrow_circle_left_sharp),
                    Text(
                      "Subject",
                      style: appstyle(15, Colors.black, FontWeight.w700),
                    ),
                    const Icon(Icons.search)
                  ],
                ),
                const Gap(20),
                const ButtonsRow(),
                const Gap(10),
                Text(
                  "All Subject",
                  style: appstyle(15, Colors.black, FontWeight.w700),
                ),
                ClipRRect(
                  child: Container(),
                )
              ],
            )),
      ),
    );
  }
}
