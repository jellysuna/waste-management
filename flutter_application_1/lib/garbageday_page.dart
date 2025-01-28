import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

class GarbageDayPage extends StatelessWidget {
  const GarbageDayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 171, 125),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 800, // Adjust height to fit your content or use dynamic constraints
          child: Stack(
            children: [
              // Back button
              Container(
                margin: const EdgeInsets.only(top: 40.0, left: 10.0),
                child: IconButton(
                  iconSize: 25,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 29, 83, 95),
                  ),
                ),
              ),
              // Title
              const Padding(
                padding: EdgeInsets.only(
                  top: 50.0,
                  left: 145.0,
                ),
                child: Text(
                  'Pick-up day',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    color: Color.fromARGB(255, 29, 83, 95),
                  ),
                ),
              ),
              // Calendar image
              Container(
                width: 330,
                height: 370,
                margin: const EdgeInsets.only(
                  top: 100.0,
                  left: 33.0,
                ),
                color: const Color.fromARGB(255, 232, 226, 228),
                child: Image.asset(
                  'images/calendar.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              // Upcoming section background
              Container(
                width: 415,
                height: 300,
                margin: const EdgeInsets.only(
                  top: 505.0,
                  left: 0.0,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 232, 226, 228),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              // Upcoming label
              const Padding(
                padding: EdgeInsets.only(
                  top: 540.0,
                  left: 30.0,
                ),
                child: Text(
                  'Upcoming',
                  style: TextStyle(
                    color: Color.fromARGB(255, 29, 83, 95),
                    fontFamily: 'Poppins',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // Upcoming details container
              Container(
                width: 330,
                height: 120,
                margin: const EdgeInsets.only(
                  top: 600.0,
                  left: 30.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        right: 210.0,
                      ),
                      child: Text(
                        '16 MARCH 2023\n',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 11.0,
                          color: Color.fromARGB(160, 29, 83, 95),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 110.0,
                      ),
                      child: Text(
                        'Tomorrow: Pick-up day',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(150, 29, 83, 95),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        right: 165.0,
                      ),
                      child: Text(
                        'Only Recyclable items',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 11.0,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(95, 255, 32, 2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Decorative garbage image
              Padding(
                padding: const EdgeInsets.only(
                  top: 610.0,
                  left: 220.0,
                ),
                child: Image.asset('images/cutegarbage1.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}