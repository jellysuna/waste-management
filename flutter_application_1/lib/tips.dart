import 'package:flutter_application_1/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/eco.dart';
import 'package:flutter_application_1/learn_page.dart';
import 'package:flutter/gestures.dart';
import 'dart:math' as math;

import 'package:flutter_application_1/recipe_page.dart';


class tips extends StatelessWidget {
  const tips({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: Color.fromARGB(255, 232, 226, 228)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: page4(),
      ),
    );
  }
}

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.37,
              decoration: BoxDecoration(
                color: Color.fromARGB(220, 63, 162, 106),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36)),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: IconButton(
                    iconSize: 25,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    icon: Icon(Icons.arrow_back,
                        color: Color.fromARGB(255, 29, 83, 95)),
                  )),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Text(
                "Save planet together",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins-SemiBold',
                    fontSize: 20,
                    height: 4),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(38),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
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
                  const EdgeInsets.symmetric(horizontal: 2, vertical: 73.6),
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
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                      "Popular themes",
                      style: TextStyle(
                          color: Color.fromARGB(255, 29, 83, 95),
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 32),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 60, bottom: 60, top: 310),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => eco()),
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
                      children: [
                        Text(
                          "Eco friendly",
                          style: TextStyle(
                            fontFamily: 'Poppins-SemiBold',
                            fontSize: 14,
                            height: 3,
                            color: Color.fromARGB(123, 29, 83, 95),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            Transform.rotate(
              angle: -math.pi / 180 * 10,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 50, right: 60, bottom: 60, top: 320),
                child: Padding(
                    padding: const EdgeInsets.all(3),
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
                  left: 220, right: 40, bottom: 60, top: 310),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Recipe()),
                  );
                },
                child: Container(
                  height: 150,
                  width: 146,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
                      Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      "Leftover recipes",
                      style: TextStyle(
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 14,
                        height: 3,
                        color: Color.fromARGB(123, 29, 83, 95),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 245, right: 60, bottom: 60, top: 320),
              child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: Image(
                      image: ResizeImage(
                    AssetImage('images/apple.png'),
                    width: 90,
                    height: 90,
                  ))),
            ),
            Column(
              children: [
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 8, top: 310),
                    child: Text(
                      "Recycling Tips",
                      style: TextStyle(
                          color: Color.fromARGB(255, 29, 83, 95),
                          fontFamily: 'Poppins-SemiBold',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          height: 23),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, bottom: 8, top: 525),
              child: Container(
                height: 120,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("\t\t\t\t\t\t\tPlastic materials",
                            style: TextStyle(
                              fontFamily: 'Poppins-SemiBold',
                              fontSize: 16,
                              height: 2,
                              color: Color.fromARGB(123, 29, 83, 95),
                            ),
                            textAlign: TextAlign.left),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, bottom: 6, top: 565),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          "\t\t\t\t\t\t\tLDPE is easily recyclable and\n \t\t\t\t\t\toften included in curbside\n \t\t\t\t\t\tpickup in its rigid form.",
                          style: TextStyle(
                            fontFamily: 'Poppins-Medium',
                            fontSize: 14,
                            color: const Color.fromARGB(123, 29, 83, 95),
                          ),
                          textAlign: TextAlign.left),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 230, right: 10, bottom: 7, top: 620),
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
                  left: 285, right: 10, bottom: 10, top: 540),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                          image: const ResizeImage(
                        AssetImage('images/ldpe.png'),
                        width: 60,
                        height: 75,
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
