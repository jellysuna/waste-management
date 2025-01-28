import 'package:flutter_application_1/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/eco.dart';
import 'package:flutter_application_1/learn_page.dart';
import 'package:flutter/gestures.dart';
import 'dart:math' as math;

import 'package:flutter_application_1/recipe_page.dart';

// ignore: camel_case_types
class tips extends StatelessWidget {
  const tips({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: const Color.fromARGB(255, 232, 226, 228)),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: page4(),
      ),
    );
  }
}

// ignore: camel_case_types
class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

// ignore: camel_case_types
class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.36,
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
                    MaterialPageRoute(builder: (context) => const HomePage()),
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
                  "Save planet together",
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
                      "Save the planet by\n separating garbage into\n mixed waste and\n recyclables.",
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
                  const EdgeInsets.symmetric(horizontal: 2, vertical: 111.6),
              child: Container(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'images/earth.png',
                  height: 180,
                  width: 190,
                ),
              ),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 55, left: 20),
                  child: Text(
                    "Popular themes",
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
                  left: 40, right: 60, bottom: 60, top: 340),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const eco()),
                  );
                },
                child: Container(
                  height: 150,
                  width: 146,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "Eco friendly",
                          style: TextStyle(
                            fontFamily: 'Poppins-SemiBold',
                            fontSize: 16,
                            height: 4,
                            color: Color.fromARGB(123, 29, 83, 95),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            Transform.rotate(
              angle: -math.pi / 180 * 10,
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 50, right: 60, bottom: 60, top: 350),
                child: Padding(
                    padding: EdgeInsets.all(3),
                    child: Image(
                        image: ResizeImage(
                      AssetImage('images/recbag.png'),
                      width: 60,
                      height: 100,
                    ))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 210, right: 40, bottom: 60, top: 340),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const Recipe();
                  }));
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "Leftover recipes",
                          style: TextStyle(
                            fontFamily: 'Poppins-SemiBold',
                            fontSize: 16,
                            height: 4,
                            color: Color.fromARGB(123, 29, 83, 95),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 240, right: 70, bottom: 60, top: 360),
              child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Image(
                      image: ResizeImage(
                    AssetImage('images/apple.png'),
                    width: 90,
                    height: 90,
                  ))),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 8, top: 266),
                  child: Text(
                    "Recycling Tips",
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
                  left: 30, right: 30, bottom: 8, top: 555),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text("\t\t\t\t\t\t\t\tPlastic materials",
                              style: TextStyle(
                                fontFamily: 'Poppins-SemiBold',
                                fontSize: 16,
                                height: 2,
                                color: Color.fromARGB(123, 29, 83, 95),
                              ),
                              textAlign: TextAlign.left),
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 35, right: 30, bottom: 6, top: 605),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                          "\t\t\t\t\t\t\tLDPE is easily recyclable and\n \t\t\t\t\t\toften included in curbside\n \t\t\t\t\t\tpickup in its rigid form.",
                          style: TextStyle(
                            fontFamily: 'Poppins-Medium',
                            fontSize: 14,
                            color: Color.fromARGB(123, 29, 83, 95),
                          ),
                          textAlign: TextAlign.left),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 230, right: 10, bottom: 10, top: 660),
              child: Center(
                child: RichText(
                  text: TextSpan(
                      text: " ",
                      style: const TextStyle(
                          fontFamily: 'Poppins-Medium',
                          fontSize: 14,
                          color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Learn more >",
                            style: const TextStyle(
                              fontFamily: 'Poppins-Medium',
                              fontSize: 14,
                              color: Color.fromARGB(125, 30, 30, 30),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Learn()),
                                );
                              })
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 280, right: 10, bottom: 10, top: 570),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Image(
                          image: ResizeImage(
                        AssetImage('images/ldpe.png'),
                        width: 60,
                        height: 75,
                      ))
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 655.0,
                bottom: 0.0,
                left: 1.0,
                right: 0.0,
              ),
              child: Image.asset('images/plantresize2.png'),
            )
          ],
        ),
      ],
    );
  }
}