import 'package:flutter/material.dart';
import 'dart:math';

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ball = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text(
          "Ask me Anything",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        backgroundColor: const Color.fromARGB(255, 4, 70, 124),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: TextButton(
              onPressed: () {
                setState(() {
                  ball = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset(
                "assets/ball$ball.png",
                width: 300,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
