import 'package:flutter/material.dart';
import 'package:flutter_application_1/garbageday_page.dart';
import 'package:flutter_application_1/nearest_page.dart';
import 'package:flutter_application_1/news_page.dart';
import 'package:flutter_application_1/profile_page.dart';
import 'package:flutter_application_1/scan_page.dart';
import 'package:flutter_application_1/tips_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 226, 228),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            'wasteD',
            style: TextStyle(
                color: Color.fromARGB(255, 29, 83, 95),
                fontFamily: 'Poppins',
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 7.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const ProfilePage();
                }));
              },
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    //color: Colors.white, //remove this when you add image.
                  ),
                  child: Image.asset('images/community1.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const ProfilePage();
                }));
              },
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    //color: Colors.white, //remove this when you add image.
                  ),
                  child: Image.asset('images/account.png')),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(249, 248, 248, 248),
      ),
      body: Wrap(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const TipsPage();
              }));
            },
            child: Container(
              width: 156,
              height: 156,
              margin: const EdgeInsets.only(
                bottom: 15.0,
                top: 40.0,
                left: 28.0,
                right: 10.0,
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
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(10.0)),
                  Image.asset('images/bulbresize1.png'),
                  const ListTile(
                    title: Text(
                      'Tips',
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 83, 95),
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const NearestPage();
              }));
            },
            child: Container(
              width: 156,
              height: 156,
              margin: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 40.0,
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
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(10.0)),
                  Image.asset('images/trashbinresize.png'),
                  const ListTile(
                    title: Text(
                      'Nearest',
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 83, 95),
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const GarbageDayPage();
              }));
            },
            child: Container(
              width: 156,
              height: 156,
              margin: const EdgeInsets.only(
                bottom: 15.0,
                top: 10.0,
                left: 28.0,
                right: 10.0,
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
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(10.0)),
                  Image.asset('images/trashbagresize.png'),
                  const ListTile(
                    title: Text(
                      'Garbage day',
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 83, 95),
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const ScanPage();
              }));
            },
            child: Container(
              width: 156,
              height: 156,
              margin: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 10.0,
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
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(10.0)),
                  Image.asset('images/boxresize1.png'),
                  const ListTile(
                    title: Text(
                      'Scan material',
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 83, 95),
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
                left: 25,
                bottom: 0,
                right: 20,
                top: 35), //apply padding to some sides only
            child: Text(
              "Popular articles",
              style: TextStyle(
                color: Color.fromARGB(255, 29, 83, 95),
                fontFamily: 'Poppins',
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const NewsPage();
              }));
            },
            child: Container(
              width: 350,
              height: 150,
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 95, 171, 125),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  )
                ],
              ),
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.all(5.0)),
                  Image.asset('images/newsresize2.png'),
                  const Text(
                    'Read latest news about\nenvironmentalism\nand sustainability all over\nthe world in one place',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 29, 83, 95),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
