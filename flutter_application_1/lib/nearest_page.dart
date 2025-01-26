import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

class NearestPage extends StatelessWidget {
  const NearestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 226, 228),
      // appBar: AppBar(
      //   title: const Text('Nearest',
      //       style: TextStyle(color: Color.fromARGB(255, 29, 83, 95))),
      //   backgroundColor: const Color.fromARGB(255, 95, 171, 125),
      // ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/Map.jpg'),
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
          width: 400,
          height: 220,
          margin: const EdgeInsets.only(
            top: 620.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Padding(
            padding: EdgeInsets.only(
              top: 40.0,
              left: 120.0,
            ),
            child: Text(
              'Nearest dumpster is 200m away.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(150, 29, 83, 95),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 720.0,
            left: 140,
          ),
          child: SizedBox(
              width: 200.0,
              height: 35.0,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 95, 171, 125)),
                  child: const Text(
                    'Direction',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0),
                  ))),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 650, left: 20),
          child: Container(
            width: 80.0,
            height: 130,
            color: Colors.white,
            child: Image.asset(
              'images/eyesdumpster.png',
              fit: BoxFit.fill,
            ),
          ),
        )
      ]),
    );
  }
}
