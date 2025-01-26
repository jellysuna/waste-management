import 'package:flutter/material.dart';
import 'package:flutter_application_1/getstarted.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/register.dart';

// ignore: camel_case_types
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: const Color.fromARGB(255, 232, 226, 228)),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: page3(),
      ),
    );
  }
}

// ignore: camel_case_types
class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

// ignore: camel_case_types
class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 25,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: const Text(
                  "wasteD",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 83, 95),
                      fontFamily: 'Poppins-Bold',
                      fontSize: 16),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: IconButton(
                      iconSize: 25,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const getstarted()),
                        );
                      },
                      icon: const Icon(Icons.arrow_back,
                          color: Color.fromARGB(255, 29, 83, 95)),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        color: Color.fromARGB(255, 29, 83, 95),
                        fontFamily: 'Poppins-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        height: 3),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Welcome back! Please enter your details.",
                    style: TextStyle(
                        color: Color.fromARGB(123, 29, 83, 95),
                        fontFamily: 'Poppins-Medium',
                        fontSize: 14,
                        height: 1.6),
                  ),
                ),
              ),
              Container(
                width: w,
                margin: const EdgeInsets.only(left: 30, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email",
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 83, 95),
                        fontFamily: 'Poppins-Medium',
                        fontSize: 15,
                        height: 4,
                      ),
                    ),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            labelText: 'Enter your email',
                            labelStyle: const TextStyle(
                              fontFamily: 'Poppins-Medium',
                              fontSize: 15,
                              color: Color.fromARGB(123, 29, 83, 95),
                            )),
                      ),
                    ),
                    const Text(
                      "Password",
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 83, 95),
                        fontFamily: 'Poppins-Medium',
                        fontSize: 15,
                        height: 4,
                      ),
                    ),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            labelText: 'Enter your password',
                            labelStyle: const TextStyle(
                              fontFamily: 'Poppins-Medium',
                              fontSize: 15,
                              color: Color.fromARGB(123, 29, 83, 95),
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: const Text("Forgot password?",
                          style: TextStyle(
                              fontFamily: 'Poppins-Medium',
                              fontSize: 14,
                              height: 2,
                              color: Color.fromARGB(123, 29, 83, 95))),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: Container(
                        height: 45,
                        width: 315,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(220, 63, 162, 106),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "Log in",
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
                            text: "\nDon't have an acount?",
                            style: const TextStyle(
                                fontFamily: 'Poppins-Medium',
                                fontSize: 14,
                                color: Color.fromARGB(125, 30, 30, 30)),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "\tSign up",
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
                                            builder: (context) =>
                                                const register()),
                                      );
                                    })
                            ]),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}