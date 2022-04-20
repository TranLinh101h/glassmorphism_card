import 'package:flutter/material.dart';
import 'package:glassmorphismcard/glassmorphismcard.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
            Image.network(
              'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              scale: 1,
            ),
            SafeArea(
              child: Center(
                child: GlassmorphismCard(
                  color_Header: Colors.white,
                  color_Body: Colors.blue,
                  leading: Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  title: Text('Example Card'),
                  trailing: Icon(
                    Icons.add_circle,
                    color: Colors.white,
                  ),
                  body: ListTile(
                      leading: Icon(
                        Icons.done,
                        color: Colors.green[900],
                      ),
                      title: Text('Hello world'),
                      trailing: Icon(
                        Icons.remove,
                        color: Colors.grey[900],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
