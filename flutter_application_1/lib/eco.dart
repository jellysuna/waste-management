import 'package:flutter_application_1/tips.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

// ignore: camel_case_types
class eco extends StatelessWidget {
  const eco({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: const Color.fromARGB(255, 232, 226, 228)),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: page5(),
      ),
    );
  }
}

// ignore: camel_case_types
class page5 extends StatefulWidget {
  const page5({super.key});

  @override
  State<page5> createState() => _page5State();
}

// ignore: camel_case_types
class _page5State extends State<page5> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.35,
              decoration: const BoxDecoration(
                color: Color.fromARGB(220, 63, 162, 106),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                alignment: Alignment.topCenter,
                child: const Text(
                  "Eco friendly",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins-SemiBold',
                      fontSize: 20,
                      height: 4),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(39),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Eco friendly refers to\n products or practices that\n are environmentally\n friendly and have a\n reduced impact on the\n planet.",
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
            Transform.rotate(
              angle: math.pi / 180 * 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 70),
                child: Container(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'images/eco.png',
                    height: 150,
                    width: 160,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: const EdgeInsets.only(top: 35, left: 10),
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
                  )),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 55),
                  child: Text(
                    "Some tips",
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
              padding: const EdgeInsets.only(left: 40, top: 337),
              child: Container(
                  height: 50,
                  width: 45,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(155, 185, 155, 0.573),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Image(
                      image: ResizeImage(
                    AssetImage('images/plastic.png'),
                    width: 25,
                    height: 30,
                  ))),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 110, top: 352),
              child: Text(
                'Use biodegradable trash bags',
                style: TextStyle(
                  color: Color.fromARGB(171, 29, 83, 95),
                  fontFamily: 'Poppins-Medium',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 397),
              child: Container(
                  height: 50,
                  width: 45,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(155, 185, 155, 0.573),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Image(
                      image: ResizeImage(
                    AssetImage('images/wood.png'),
                    width: 20,
                    height: 40,
                  ))),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 110, top: 412),
              child: Text(
                'Compostable cutlery and bowls ',
                style: TextStyle(
                  color: Color.fromARGB(171, 29, 83, 95),
                  fontFamily: 'Poppins-Medium',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 457),
              child: Container(
                  height: 50,
                  width: 45,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(155, 185, 155, 0.573),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Image(
                      image: ResizeImage(
                    AssetImage('images/netbag.png'),
                    width: 20,
                    height: 40,
                  ))),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 110, top: 472),
              child: Text(
                'Reusable grocery bags  ',
                style: TextStyle(
                  color: Color.fromARGB(171, 29, 83, 95),
                  fontFamily: 'Poppins-Medium',
                  fontSize: 14,
                ),
              ),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 280),
                  child: Text(
                    "More",
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
              padding: const EdgeInsets.only(left: 40, top: 565),
              child: Container(
                height: 150,
                width: 146,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "\t\t\t\tEco bag",
                    style: TextStyle(
                      fontFamily: 'Poppins-Medium',
                      fontSize: 14,
                      height: 2,
                      color: Color.fromARGB(171, 29, 83, 95),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 80, top: 595),
              child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Image(
                      image: ResizeImage(
                    AssetImage('images/ecobag.png'),
                    width: 60,
                    height: 90,
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 220, top: 565),
              child: Container(
                height: 150,
                width: 146,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "\t\t\t\tBamboo cutlery",
                    style: TextStyle(
                      fontFamily: 'Poppins-Medium',
                      fontSize: 14,
                      height: 2,
                      color: Color.fromARGB(171, 29, 83, 95),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 260, top: 595),
              child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Image(
                      image: ResizeImage(
                    AssetImage('images/bamboo.png'),
                    width: 70,
                    height: 90,
                  ))),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 110, top: 685),
              child: Text(
                "Buy now",
                style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 14,
                  height: 2,
                  color: Color.fromARGB(123, 29, 83, 95),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 290, top: 685),
              child: Text(
                "Buy now",
                style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 14,
                  height: 2,
                  color: Color.fromARGB(123, 29, 83, 95),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}