import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:medical_e_learning_app/views/Appstyle.dart';
import 'package:medical_e_learning_app/views/CoursesCart.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.arrow_circle_left_sharp),
                Text(
                  "Subject",
                  style: appstyle(15, Colors.black, FontWeight.w700),
                ),
                const Icon(Icons.notifications)
              ],
            ),
            const Gap(10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 38,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 109, 108, 108),
                    width: 0.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Text("Search your lesson..."),
                  ],
                ),
              ),
            ),
            const Gap(20),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.77,
              child: ListView(children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Column(
                    children: [
                      CoursesCart(
                        Time: "4h 58m",
                        cource: "Computer science",
                        lessons: "23/34 Lessons",
                      ),
                      Gap(20),
                      CoursesCart(
                        Time: "4h 58m",
                        cource: "Computer science",
                        lessons: "23/34 Lessons",
                      ),
                      Gap(20),
                      CoursesCart(
                        Time: "4h 58m",
                        cource: "Computer science",
                        lessons: "23/34 Lessons",
                      ),
                      Gap(20),
                      CoursesCart(
                        Time: "4h 58m",
                        cource: "Computer science",
                        lessons: "23/34 Lessons",
                      ),
                      Gap(20),
                      CoursesCart(
                        Time: "4h 58m",
                        cource: "Computer science",
                        lessons: "23/34 Lessons",
                      ),
                      CoursesCart(
                        Time: "4h 58m",
                        cource: "Computer science",
                        lessons: "23/34 Lessons",
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
