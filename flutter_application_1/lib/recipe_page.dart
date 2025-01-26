import 'package:flutter/material.dart';
import 'package:flutter_application_1/tips.dart';

// ignore: camel_case_types
class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: const Color.fromARGB(255, 232, 226, 228)),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: page7(),
      ),
    );
  }
}

// ignore: camel_case_types
class page7 extends StatefulWidget {
  const page7({super.key});

  @override
  State<page7> createState() => _page7State();
}

// ignore: camel_case_types
class _page7State extends State<page7> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.32,
              decoration: const BoxDecoration(
                color: Color.fromARGB(220, 63, 162, 106),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 35.0, left: 10.0),
              child: IconButton(
                iconSize: 25,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const tips()),
                  );
                },
                icon: const Icon(Icons.arrow_back,
                    color: Color.fromARGB(255, 29, 83, 95)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                alignment: Alignment.topCenter,
                child: const Text(
                  "Leftover Recipes",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins-SemiBold',
                      fontSize: 20,
                      height: 4),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 35),
              child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Transform everyday\n leftovers into tempting\n new dishes.",
                      style: TextStyle(
                        color: Color.fromARGB(184, 255, 255, 255),
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 108),
              child: Container(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'images/leftover.png',
                  height: 120,
                  width: 140,
                ),
              ),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 20),
                  child: Text(
                    "Popular",
                    style: TextStyle(
                        color: Color.fromARGB(255, 29, 83, 95),
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 16,
                        height: 23),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, bottom: 8, top: 330),
              child: Container(
                height: 140,
                width: 410,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 150, bottom: 8),
                          child: Text("Leftover vegetable\nstir-fry",
                              style: TextStyle(
                                fontFamily: 'Poppins-SemiBold',
                                fontSize: 16,
                                color: Color.fromARGB(123, 29, 83, 95),
                              ),
                              textAlign: TextAlign.center),
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 50, right: 60, bottom: 60, top: 360),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Image(
                          image: ResizeImage(
                        AssetImage('images/vege.png'),
                        width: 100,
                        height: 75,
                      ))
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 490),
              child: Container(
                height: 140,
                width: 410,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 150, top: 8),
                          child: Text(
                              "Sandwiches made\nwith leftover meat\nor vegetables",
                              style: TextStyle(
                                fontFamily: 'Poppins-SemiBold',
                                fontSize: 16,
                                color: Color.fromARGB(123, 29, 83, 95),
                              ),
                              textAlign: TextAlign.center),
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 60, top: 520),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Image(
                          image: ResizeImage(
                        AssetImage('images/sandwiches.png'),
                        width: 90,
                        height: 90,
                      ))
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 650),
              child: Container(
                height: 140,
                width: 410,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 150, top: 8),
                          child: Text("Porridge bread",
                              style: TextStyle(
                                fontFamily: 'Poppins-SemiBold',
                                fontSize: 16,
                                color: Color.fromARGB(123, 29, 83, 95),
                              ),
                              textAlign: TextAlign.center),
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 60, top: 690),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Image(
                          image: ResizeImage(
                        AssetImage('images/porridge.png'),
                        width: 90,
                        height: 65,
                      ))
                    ]),
              ),
            ),
          ],
        ),
      ],
    );
  }
}