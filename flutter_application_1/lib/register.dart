import 'package:flutter_application_1/getstarted.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: const Color.fromARGB(255, 232, 226, 228)),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: page2(),
      ),
    );
  }
}

// ignore: camel_case_types
class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

// ignore: camel_case_types
class _page2State extends State<page2> {
  bool isChecked = false;

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
                height: 2,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        color: Color.fromARGB(255, 29, 83, 95),
                        fontFamily: 'Poppins-Bold',
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
                    "Hello! Sign up to get started",
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
                      "Name",
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
                            labelText: 'Enter your name',
                            labelStyle: const TextStyle(
                              fontFamily: 'Poppins-Medium',
                              fontSize: 15,
                              color: Color.fromARGB(123, 29, 83, 95),
                            )),
                      ),
                    ),
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
                            labelText: 'example@mail.com',
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
                            labelText: 'at least 8 characters',
                            labelStyle: const TextStyle(
                              fontFamily: 'Poppins-Medium',
                              fontSize: 15,
                              color: Color.fromARGB(123, 29, 83, 95),
                            )),
                      ),
                    ),
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Icon(
                              isChecked
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank,
                              color: isChecked ? Colors.green : Colors.grey,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 12),
                          child: Text(
                            "I agree to the              and",
                            style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                fontSize: 13,
                                color: Color.fromARGB(125, 30, 30, 30)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 12),
                          child: Text(
                            "\t\t\t\t\t\t\t\t\t\t\t\t            terms\t\t\t\t\t\t\t\t\t\tpolicy",
                            style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                fontSize: 13,
                                color: Color.fromARGB(123, 29, 83, 95)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 26,
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
                            "Sign up",
                            style: TextStyle(
                              fontFamily: 'Poppins-Medium',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
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