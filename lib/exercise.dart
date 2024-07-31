import 'package:flutter/material.dart';

class PESUExercise extends StatelessWidget {
  const PESUExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left:550,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                padding: EdgeInsets.all(90),
              ),
            ),
            Positioned(
              left:650,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                padding: EdgeInsets.all(90),
              ),
            ),
            Positioned(
              left:750,
              child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                  padding: EdgeInsets.all(90),
                ),
            ),
          ],
    );
  }
}
