import 'package:flutter/material.dart';
import 'package:medical_e_learning_app/views/Appstyle.dart';

class CliprRact extends StatelessWidget {
  const CliprRact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.23,
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 245, 241, 241),
            spreadRadius: 1,
            blurRadius: 0.6,
            offset: Offset(1, 1),
          )
        ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "20/30 lesson",
                style: appstyle(10, Colors.teal, FontWeight.normal),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Online Virtual cources",
                style: appstyle(15, Colors.black, FontWeight.w700),
              ),
              Text(
                "125 sudent",
                style: appstyle(10, Colors.grey, FontWeight.normal),
              ),
              Container(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.22,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 0.5)),
                child: Center(
                  child: Text(
                    "Enroll Now",
                    style: appstyle(10, Colors.white, FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
