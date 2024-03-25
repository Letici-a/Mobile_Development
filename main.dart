import 'package:flutter/material.dart';
import 'dart:math' as math;

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
      home: GetStarted(),
    );
  }
}

class GetStarted extends StatelessWidget {
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
                  offset: Offset(58, -20),
                  child: Image.asset('assets/images/Group.png'),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Transform.translate(
                  offset: Offset(-105, 70),
                  child: Image.asset('assets/images/Frame.png'),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.center,
                child: Transform.translate(
                  offset: Offset(0, -160),
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
                  offset: Offset(5, 10),
                  child: Column(
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
                  offset: Offset(0, 245),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Padding(
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
