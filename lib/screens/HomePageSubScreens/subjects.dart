import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:medical_e_learning_app/views/Appstyle.dart';
import 'package:medical_e_learning_app/views/ButtonsRow.dart';
import 'package:medical_e_learning_app/views/ShowSub_wiget.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
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
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.70,
                  child: ListView(children: [
                    Column(
                      children: [
                        showSub_widget(
                          Price: "\$235",
                          lesson: "20/30 lesson",
                          subjet: "Forensic Medical and Toxicoligy",
                          time: "4h 5m",
                        ),
                        const Gap(10),
                        showSub_widget(
                          Price: "\$235",
                          lesson: "20/30 lesson",
                          subjet: "Forensic Medical and Toxicoligy",
                          time: "4h 5m",
                        ),
                        const Gap(10),
                        showSub_widget(
                          Price: "\$235",
                          lesson: "20/30 lesson",
                          subjet: "Forensic Medical and Toxicoligy",
                          time: "4h 5m",
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
