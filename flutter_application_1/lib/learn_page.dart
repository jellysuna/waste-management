import 'package:flutter/material.dart';
import 'package:flutter_application_1/tips.dart';

class Learn extends StatelessWidget {
  const Learn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 226, 228),
      // appBar: AppBar(
      //   title: const Text('Nearest',
      //       style: TextStyle(color: Color.fromARGB(255, 29, 83, 95))),
      //   backgroundColor: const Color.fromARGB(255, 95, 171, 125),
      // ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/recipe.jpg'),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 40.0, left: 10.0),
          child: IconButton(
            iconSize: 25,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const tips()),
              );
            },
            icon: const Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
      ]),
    );
  }
}