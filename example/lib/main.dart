import 'package:flutter/material.dart';
import 'package:glassmorphismcard/glassmorphism_card.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Test(),
    );
  }
}

class Test extends StatefulWidget {
  @override
  TestState createState() => TestState();
}

class TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              'images/bg.jpeg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              scale: 1,
            ),
            SafeArea(
              child: Center(
                child: GlassmorphismCard(
                  backgroundColor: Colors.blue,
                  title: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Hello world',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  body: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      'images/sample.png',
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
