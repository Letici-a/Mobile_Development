// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GetStarted(),
    );
  }
}

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-1, -0.8),
            end: Alignment(1, 0.6),
            colors: [Color(0xFF3A6FE2), Color(0xFF9E7BF5)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Align(
                alignment: Alignment.topRight,
                child: Transform.translate(
                  offset: const Offset(58, -20),
                  child: Image.asset('assets/images/Group.png'),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Transform.translate(
                  offset: const Offset(-105, 70),
                  child: Image.asset('assets/images/Frame.png'),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.center,
                child: Transform.translate(
                  offset: const Offset(0, -160),
                  child: Transform.scale(
                    scale: 0.75,
                    child: Image.asset('assets/images/first.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.center,
                child: Transform.translate(
                  offset: const Offset(5, 10),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Welcome To',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Dash App',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.center,
                child: Transform.translate(
                  offset: const Offset(0, 245),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 35.0, top: 15.0, right: 35.0, bottom: 15.0),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF3C6FE2),
                        ),
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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'The Latest',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3F6FE3),
                    ),
                  ),
                ),
              ],
            ),
            Post(),
            Post(),
          ],
        ),
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: const Color(0xFF396EE2),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(7.0),
          ),
          child: Wrap(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Transform.scale(
                            scale: 0.1,
                            child: Image.asset('assets/images/first.png'),
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dash',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '@dash.dash',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 6,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF9E9E9E),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      '🎓 Exciting news! I\'m now a student at Flutter Training, learning more about mobile development with Flutter. Can\'t wait to gain new skills and become a skilled Flutter developer!',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Image.asset('assets/images/image 1.png'),
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/Frame 4.png'),
                              const SizedBox(width: 25),
                              Image.asset('assets/images/Frame 5.png'),
                              const SizedBox(width: 25),
                              Image.asset('assets/images/Frame 6.png'),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child:
                              Image.asset('assets/images/BookmarkSimple.png'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
