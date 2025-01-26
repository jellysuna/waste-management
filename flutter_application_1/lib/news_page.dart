import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 226, 228),
      // appBar: AppBar(
      //   title: const Text('News',
      //       style: TextStyle(color: Color.fromARGB(255, 29, 83, 95))),
      //   backgroundColor: const Color.fromARGB(255, 95, 171, 125),
      // ),
      body: Stack(
        children: [
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
          Padding(
            padding: const EdgeInsets.only(left: 70, top: 40),
            child: Container(
              width: 280.0,
              height: 50.0,
              color: const Color.fromARGB(255, 232, 226, 228),
              child: Image.asset(
                'images/searchbar.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 350,
            height: 130,
            margin: const EdgeInsets.only(
              top: 120.0,
              left: 20.0,
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
            child: Column(children: [
              const Padding(padding: EdgeInsets.all(8.0)),
              Image.asset('images/news11.png'),
            ]),
          ),
          Container(
            width: 350,
            height: 130,
            margin: const EdgeInsets.only(
              top: 270.0,
              left: 20.0,
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
            child: Column(children: [
              const Padding(padding: EdgeInsets.all(8.0)),
              Image.asset('images/news21.png'),
            ]),
          ),
          Container(
            width: 350,
            height: 130,
            margin: const EdgeInsets.only(
              top: 420.0,
              left: 20.0,
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
            child: Column(children: [
              const Padding(padding: EdgeInsets.all(10.0)),
              Image.asset('images/news31.png'),
            ]),
          ),
          Container(
            width: 350,
            height: 130,
            margin: const EdgeInsets.only(
              top: 570.0,
              left: 20.0,
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
            child: Column(children: [
              const Padding(padding: EdgeInsets.all(8.0)),
              Image.asset('images/news4.png'),
            ]),
          ),
          Container(
            width: 350,
            height: 130,
            margin: const EdgeInsets.only(
              top: 720.0,
              left: 20.0,
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
            // child: Column(children: [
            //   const Padding(padding: EdgeInsets.all(8.0)),
            //   Image.asset('images/news21.png'),
            // ]),
          ),
        ],
      ),
    );
  }
}
