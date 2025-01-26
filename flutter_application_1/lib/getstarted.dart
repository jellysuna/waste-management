import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class getstarted extends StatelessWidget {
  const getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: const Color.fromARGB(255, 232, 226, 228)),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: page1(),
      ),
    );
  }
}

// ignore: camel_case_types
class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

// ignore: camel_case_types
class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "wasteD",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 29, 83, 95),
                fontFamily: 'Poppins-Bold',
                fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Image.asset(
            'assets/image/greengren.png',
            height: 400,
            width: 600,
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Text(
              "\nWelcome to\nwasteD!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 29, 83, 95),
                  fontFamily: 'Poppins-Bold',
                  fontSize: 22,
                  height: 1.2),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Column(
            children: const <Widget>[
              Text(
                " ",
                style: TextStyle(fontSize: 8),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Text(
                  "Conveniently manage your waste\nand help protect the environment\nwith just a few taps.\n\n",
                  style: TextStyle(
                      fontFamily: 'Poppins-Medium',
                      fontSize: 15,
                      color: Color.fromARGB(125, 29, 83, 95)),
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const register()),
            );
          },
          child: Container(
            height: 40,
            width: 310,
            decoration: BoxDecoration(
              color: const Color.fromARGB(220, 63, 162, 106),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                "Get Started",
                style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Center(
          child: RichText(
            text: TextSpan(
                text: "\nAlready have an acount?",
                style: const TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: 14,
                    color: Color.fromARGB(125, 30, 30, 30)),
                children: <TextSpan>[
                  TextSpan(
                      text: "\tLog in",
                      style: const TextStyle(
                        fontFamily: 'Poppins-Medium',
                        fontSize: 14,
                        color: Color.fromARGB(123, 29, 83, 95),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const login()),
                          );
                        })
                ]),
          ),
        )
      ]),
    ));
  }
}