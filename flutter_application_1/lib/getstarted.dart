import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class getstarted extends StatelessWidget {
  const getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: Color.fromARGB(255, 232, 226, 228)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: page1(),
      ),
    );
  }
}

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(children: [
        Container(
          child: Text(
            "wasteD",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 29, 83, 95),
                fontFamily: 'Poppins-Bold',
                fontSize: 14),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: Image.asset(
            'assets/image/greengren.png',
            height: 300,
            width: 500,
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Text(
              "\nWelcome to\n wasteD!",
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
            children: <Widget>[
              Text(
                " ",
                style: TextStyle(fontSize: 8),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Text(
                  "Conveniently manage your waste\n and help protect the environment\n with just a few taps.\n\n",
                  style: TextStyle(
                      fontFamily: 'Poppins-Medium',
                      fontSize: 16,
                      color: Color.fromARGB(123, 29, 83, 95)),
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => register()),
            );
          },
          child: Container(
            height: 40,
            width: 310,
            decoration: BoxDecoration(
              color: Color.fromARGB(220, 63, 162, 106),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
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
                text: "\nAlready have an acoount?",
                style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: 14,
                    color: Color.fromARGB(125, 30, 30, 30)),
                children: <TextSpan>[
                  TextSpan(
                      text: "\tLog in",
                      style: TextStyle(
                        fontFamily: 'Poppins-Medium',
                        fontSize: 14,
                        color: Color.fromARGB(123, 29, 83, 95),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => login()),
                          );
                        })
                ]),
          ),
        )
      ]),
    ));
  }
}
