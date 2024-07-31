import 'package:flutter/material.dart';

class PESUContainer extends StatelessWidget {
  const PESUContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 30, 50, 70),
      margin: const EdgeInsets.symmetric(
        vertical: 200,
        horizontal: 200,
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(
          color: Colors.blue,
          width: 10,
        ),
        borderRadius: const BorderRadius.all(
            Radius.circular(20)
        ),
      ),
      child: const Text('Hello world'),
    );
  }
}
