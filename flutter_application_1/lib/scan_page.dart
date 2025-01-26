import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 226, 228),
      // appBar: AppBar(
      //   title: const Text('Scan materials',
      //       style: TextStyle(color: Color.fromARGB(255, 29, 83, 95))),
      //   backgroundColor: const Color.fromARGB(255, 95, 171, 125),
      // ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/bottle.jpg'),
              fit: BoxFit.cover,
            )),
          ),
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
              icon: const Icon(Icons.arrow_back,
                  color: Color.fromARGB(255, 29, 83, 95)),
            ),
          ),
          Container(
            width: 370,
            height: 110,
            margin: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 100.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 110,
              top: 115,
            ),
            child: Text(
              'Glass',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
                color: Color.fromARGB(255, 29, 83, 95),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 110,
              top: 150,
            ),
            child: Text(
              'Recycle glass bottles that are\nclear, brown, and green',
              style: TextStyle(
                fontFamily: 'Poppins',
                //fontWeight: FontWeight.w600,
                fontSize: 13.0,
                color: Color.fromARGB(200, 29, 83, 95),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 130,
              left: 55,
            ),
            child: Container(
              width: 20,
              height: 50,
              color: Colors.white,
              child: Image.asset(
                'images/glass.png',
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }
}
