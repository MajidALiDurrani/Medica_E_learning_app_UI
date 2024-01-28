import 'package:flutter/material.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.teal,
              border: Border.all(
                  color: const Color.fromARGB(255, 194, 189, 189), width: 0.5),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          child: const Center(child: Text("All")),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.25,
          height: 40,
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 194, 189, 189), width: 0.5),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(1), bottomLeft: Radius.circular(1))),
          child: const Center(child: Text("Standing")),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: 40,
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 194, 189, 189), width: 0.5),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: const Center(child: Text("Save")),
        ),
      ],
    );
  }
}
