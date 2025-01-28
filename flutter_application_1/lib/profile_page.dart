import 'package:flutter/material.dart';
import 'package:flutter_application_1/getstarted.dart';
import 'package:flutter_application_1/home_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 226, 228),
      body: SingleChildScrollView( // Add SingleChildScrollView
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40.0, left: 10.0),
              child: Padding(
                  padding: const EdgeInsets.all(0),
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
            const Padding(
              padding: EdgeInsets.only(
                top: 50.0,
                left: 170.0,
              ),
              child: Text(
                'Profile',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 29, 83, 95),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 33,
                top: 170,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                width: 330.0,
                height: 660.0,
              ),
            ),
            const SizedBox(
              height: 120,
              width: 120,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 156,
                top: 250,
              ),
              child: Text(
                'ID: W0910',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 29, 83, 95),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 70,
                top: 320,
              ),
              child: Text(
                'Name',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 29, 83, 95),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, top: 350),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 232, 226, 228),
                ),
                width: 250,
                height: 40,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Text('William Moriarty',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        color: Color.fromARGB(255, 29, 83, 95),
                      )),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 70,
                top: 410,
              ),
              child: Text(
                'Address',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 29, 83, 95),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, top: 440),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 232, 226, 228),
                ),
                width: 250,
                height: 100,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                      'G44 Asia City, Jalan Asia City, 8800, Kota Kinabalu, Sabah, Malaysia',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        color: Color.fromARGB(255, 29, 83, 95),
                      )),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 70,
                top: 560,
              ),
              child: Text(
                'Subscription',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 29, 83, 95),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, top: 590),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 95, 171, 125),
                ),
                width: 250,
                height: 100,
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: const [
                    Text(
                      'PREMIUM',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 19.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'RM10.50/MONTH',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 10.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140, top: 120),
              child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 95, 171, 125),
                    borderRadius: BorderRadius.circular(100)),
                child: Image.asset(
                  'images/williamreal.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const getstarted()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 720, left: 100),
                child: Container(
                  height: 45,
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 232, 226, 228),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "Log out",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 29, 83, 95),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}