import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

// ignore: camel_case_types
class community extends StatelessWidget {
  const community({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: const Color.fromARGB(255, 232, 226, 228)),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: page6(),
      ),
    );
  }
}

// ignore: camel_case_types
class page6 extends StatefulWidget {
  const page6({super.key});

  @override
  State<page6> createState() => _page6State();
}

// ignore: camel_case_types
class _page6State extends State<page6> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  height: size.height * 0.28,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(220, 63, 162, 106),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36)),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 30),
                      child: IconButton(
                        iconSize: 25,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        icon: const Icon(Icons.arrow_back,
                            color: Color.fromARGB(255, 29, 83, 95)),
                      )),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 70, top: 2),
                    child: Text(
                      "William",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 20,
                          height: 4),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 70, top: 50),
                  child: Text(
                    "Connect to people around you",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins-Medium',
                        fontSize: 16,
                        height: 4),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45, top: 130),
                  child: Container(
                    alignment: Alignment.center,
                    height: 135,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 140),
                  child: Container(
                    height: 43,
                    width: 43,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 95, 171, 125),
                        borderRadius: BorderRadius.circular(100)
                        //more than 50% of width makes circle
                        ),
                    child: Image.asset(
                      'images/williamreal.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 120, top: 140),
                    child: Text(
                      "Post to the community",
                      style: TextStyle(
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 16,
                        height: 2,
                        color: Color.fromARGB(171, 29, 83, 95),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 70, top: 190),
                  child: SizedBox(
                    height: 45,
                    width: 240,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: "What's happening?",
                          labelStyle: const TextStyle(
                            fontFamily: 'Poppins-Medium',
                            fontSize: 14,
                            height: 2,
                            color: Color.fromARGB(123, 29, 83, 95),
                          )),
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 320, top: 195),
                    child: Icon(
                      Icons.post_add,
                      color: Color.fromARGB(123, 29, 83, 95),
                      size: 33,
                    )),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 210, top: 30),
              child: Text(
                "Popular posts",
                style: TextStyle(
                  fontFamily: 'Poppins-SemiBold',
                  fontSize: 18,
                  height: 2,
                  color: Color.fromARGB(171, 29, 83, 95),
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: Container(
                    height: 160,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 40),
                  child: Container(
                    height: 43,
                    width: 43,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 95, 171, 125),
                        borderRadius: BorderRadius.circular(100)
                        //more than 50% of width makes circle
                        ),
                    child: Image.asset(
                      'images/sherlockreal.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      right: 220, left: 95, bottom: 70, top: 50),
                  child: Text(
                    "Sherlock",
                    style: TextStyle(
                      fontFamily: 'Poppins-SemiBold',
                      fontSize: 16,
                      color: Color.fromARGB(255, 30, 30, 30),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 320, top: 45),
                  child: Icon(
                    Icons.comment_rounded,
                    color: Color.fromARGB(125, 30, 30, 30),
                    size: 33,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      right: 110, left: 90, bottom: 70, top: 90),
                  child: Text(
                    "I'm looking for advice on how to properly dispose of old paint cans. Any suggestions?",
                    style: TextStyle(
                      fontFamily: 'Poppins-Medium',
                      fontSize: 14,
                      color: Color.fromARGB(125, 30, 30, 30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 220),
                  child: Container(
                    height: 160,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 230),
                  child: Container(
                    height: 43,
                    width: 43,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 95, 171, 125),
                        borderRadius: BorderRadius.circular(100)
                        //more than 50% of width makes circle
                        ),
                    child: Image.asset(
                      'images/timmiereal.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 95, top: 240),
                  child: Text(
                    "Timmie",
                    style: TextStyle(
                      fontFamily: 'Poppins-SemiBold',
                      fontSize: 16,
                      color: Color.fromARGB(255, 30, 30, 30),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 320, top: 240),
                  child: Icon(
                    Icons.comment_rounded,
                    color: Color.fromARGB(125, 30, 30, 30),
                    size: 33,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      right: 60, left: 70, bottom: 10, top: 280),
                  child: Text(
                    "\t\t\t\t\t\tReminder: plastic bags cannot be \n\t\t\t\t\t\trecycled in our town. \n\t\t\t\t\t\tPlease dispose of them properly.",
                    style: TextStyle(
                      fontFamily: 'Poppins-Medium',
                      fontSize: 14,
                      color: Color.fromARGB(125, 30, 30, 30),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}