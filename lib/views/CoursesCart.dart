import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:medical_e_learning_app/views/Appstyle.dart';

class CoursesCart extends StatelessWidget {
  String cource;
  String lessons;
  String Time;

  CoursesCart({
    required this.Time,
    required this.cource,
    required this.lessons,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 104, 100, 100).withOpacity(0.3),
          offset: Offset(0, 3),
          blurRadius: 20,
        )
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.120,
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                blurRadius: 0.6,
                offset: Offset.zero),
          ]),
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.250,
                height: MediaQuery.of(context).size.height * 0.120,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cource,
                      style: appstyle(10, Colors.black, FontWeight.bold),
                    ),
                    const Gap(5),
                    Text(
                      lessons,
                      style: appstyle(
                          8,
                          const Color.fromARGB(255, 116, 114, 114),
                          FontWeight.normal),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time_rounded,
                          size: 10,
                          color: Colors.teal,
                        ),
                        const Gap(4),
                        Text(
                          Time,
                          style: appstyle(10, Colors.teal, FontWeight.normal),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.play_circle_fill,
                color: Colors.teal,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
