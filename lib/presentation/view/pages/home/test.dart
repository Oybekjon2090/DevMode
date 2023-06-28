import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      // navbarmWk (1:555)
      left: 0,
      top: 0,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
        width: 64,
        height: 1024,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-1, -0),
            end: Alignment(1, -0),
            colors: <Color>[Color(0xff1da1f2), Color(0xff003cc5)],
            stops: <double>[0, 1],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // shapenRr (1:557)
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 920),
              width: 28,
              height: 32,
            ),
            Container(
              // ellipse2606xL (1:763)
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
