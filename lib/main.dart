import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.blueGrey,
        ),
        body: const BallPage(),
      ),
    ),
  );
}


class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Ball();
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int number = 1;


  void _bet() {
    setState(() {
      number = Random().nextInt(5) + 1;
      if (kDebugMode) {
        print(number);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  _bet();
                },
                child: Image.asset('images/ball$number.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


