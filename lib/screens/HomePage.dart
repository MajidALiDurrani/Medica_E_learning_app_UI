import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gap/gap.dart';
import 'package:medical_e_learning_app/views/Appstyle.dart';
import 'package:medical_e_learning_app/views/CoursesCart.dart';

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
                    // boxShadow: [
                    //   new BoxShadow(
                    //     color: Colors.green,
                    //     offset: new Offset(6.0, 6.0),
                    //   ),
                    // ],
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
                        color: Color.fromARGB(255, 143, 140, 140), width: 0.5),
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
                Text(
                  "View All",
                  style: appstyle(10, Colors.grey, FontWeight.normal),
                ),
              ],
            ),
            const Gap(10),
            Container(
              color: Colors.amber,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.22,
            ),
            const Gap(6),
            Row(
              children: [
                Text(
                  "Popular Cources",
                  style: appstyle(12, Colors.black, FontWeight.w700),
                ),
                const Spacer(),
                Text(
                  "View All",
                  style: appstyle(10, Colors.grey, FontWeight.normal),
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
