import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:medical_e_learning_app/views/Appstyle.dart';

class showSub_widget extends StatelessWidget {
  String subjet;
  String lesson;
  String time;
  String Price;
  showSub_widget({
    required this.Price,
    required this.lesson,
    required this.subjet,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Column(
        children: [
          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.18,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 245, 241, 241),
                    spreadRadius: 1,
                    blurRadius: 0.6,
                    offset: Offset(1, 1),
                  )
                ],
              ),
            ),
            Positioned(
                right: 10,
                top: 10,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 134, 172, 168),
                          borderRadius: BorderRadius.circular(16)),
                      child: const Center(
                        child: Icon(
                          Icons.bookmark,
                          size: 10,
                        ),
                      )),
                ))
          ]),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.10,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 10,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            subjet,
                            style: appstyle(12, Colors.black, FontWeight.w700),
                          ),
                          const Gap(10),
                          Row(children: [
                            Text(
                              lesson,
                              style:
                                  appstyle(8, Colors.grey, FontWeight.normal),
                            ),
                            const Gap(10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.access_time_rounded,
                                  size: 10,
                                  color: Colors.teal,
                                ),
                                const Gap(4),
                                Text(
                                  time,
                                  style: appstyle(
                                      10, Colors.teal, FontWeight.normal),
                                )
                              ],
                            ),
                          ])
                        ]),
                  ),
                  const Spacer(),
                  Text(
                    Price,
                    style: appstyle(15, Colors.teal, FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
