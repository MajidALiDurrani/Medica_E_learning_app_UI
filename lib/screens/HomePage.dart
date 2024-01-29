import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gap/gap.dart';
import 'package:medical_e_learning_app/screens/HomePageSubScreens/courses.dart';
import 'package:medical_e_learning_app/screens/HomePageSubScreens/subjects.dart';
import 'package:medical_e_learning_app/views/Appstyle.dart';
import 'package:medical_e_learning_app/views/CoursesCart.dart';
import 'package:medical_e_learning_app/views/Subjects_on_Home_screen.dart';

import 'package:medical_e_learning_app/views/cliprRact.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          child: Column(children: [
            const Row(
              children: [
                Icon(Icons.menu),
                Spacer(),
                CircleAvatar(
                  minRadius: 17,
                  backgroundImage: AssetImage("assets/majjjjj.JPG"),
                ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
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
                Container(
                  height: 38,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    border: Border.all(
                        color: const Color.fromARGB(255, 143, 140, 140),
                        width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    FontAwesome.sliders,
                    size: 15,
                  ),
                )
              ],
            ),
            const Gap(20),
            const CliprRact(),
            const Gap(15),
            Row(
              children: [
                Text(
                  "Subject",
                  style: appstyle(12, Colors.black, FontWeight.w700),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SubjectsScreen()));
                  },
                  child: Text(
                    "View All",
                    style: appstyle(10, Colors.grey, FontWeight.normal),
                  ),
                ),
              ],
            ),
            const Gap(10),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.22,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Row(children: [
                  Subjects_On_Home_Screen(
                    Subjects: "physics",
                    lessons: "23/34 Lessons",
                  ),
                  const Gap(15),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.29,
                    height: MediaQuery.of(context).size.height * 0.22,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 104, 100, 100)
                              .withOpacity(0.3),
                          offset: Offset(0, 3),
                          blurRadius: 20,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.amber,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                "Mathematics",
                                style:
                                    appstyle(9, Colors.black, FontWeight.w700),
                              ),
                              Text(
                                "23/24 Lesson",
                                style:
                                    appstyle(7, Colors.grey, FontWeight.normal),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Gap(15),
                  Subjects_On_Home_Screen(
                    Subjects: "physics",
                    lessons: "23/34 Lessons",
                  ),
                ]),
              ]),
            ),
            const Gap(6),
            Row(
              children: [
                Text(
                  "Popular Cources",
                  style: appstyle(12, Colors.black, FontWeight.w700),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CoursesPage()));
                  },
                  child: Text(
                    "View All",
                    style: appstyle(10, Colors.grey, FontWeight.normal),
                  ),
                ),
              ],
            ),
            const Gap(6),
            CoursesCart(
              Time: "4h 58m",
              cource: "Computer science",
              lessons: "23/34 Lessons",
            )
          ]),
        ),
      ),
    );
  }
}
