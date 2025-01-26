import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

class GarbageDayPage extends StatelessWidget {
  const GarbageDayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 171, 125),
      // appBar: AppBar(
      //   title: const Text('Garbage day',
      //       style: TextStyle(color: Color.fromARGB(255, 29, 83, 95))),
      //   backgroundColor: const Color.fromARGB(255, 95, 171, 125),
      // ),
      body: Stack(
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
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  icon: const Icon(Icons.arrow_back,
                      color: Color.fromARGB(255, 29, 83, 95)),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 50.0,
              left: 145.0,
            ),
            child: Text(
              'Garbage day',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
                color: Color.fromARGB(255, 29, 83, 95),
              ),
            ),
          ),
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
          Container(
            width: 400,
            height: 300,
            margin: const EdgeInsets.only(
              top: 505.0,
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 232, 226, 228),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
                top: 540.0, bottom: 0.0, left: 30.0, right: 0.0),
            child: Text('Upcoming',
                style: TextStyle(
                  color: Color.fromARGB(255, 29, 83, 95),
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                )),
          ),
          Container(
            width: 330,
            height: 100,
            margin: const EdgeInsets.only(
              top: 600.0,
              bottom: 0.0,
              left: 30.0,
              right: 0.0,
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
                  )
                ]),
            child: Column(children: const [
              //Padding(padding: EdgeInsets.all(8.0)),
              //Image.asset('images/news21.png'),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                  bottom: 0.0,
                  left: 0.0,
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
                  top: 0.0,
                  bottom: 0.0,
                  left: 0.0,
                  right: 110.0,
                ),
                child: Text(
                  'Tomorrow: Garbage day',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(150, 29, 83, 95),
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 610.0,
              bottom: 0.0,
              left: 220.0,
              right: 0.0,
            ),
            child: Image.asset('images/cutegarbage1.png'),
          )
        ],
      ),
    );
  }
}
