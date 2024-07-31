import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

class PESUStack extends StatelessWidget {
  const PESUStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        SampleContainer(
            color: Colors.lightGreenAccent,
            label: '1',
            padding: 90,
        ),
        SampleContainer(
            color: Colors.purple,
            label: '2',
            padding: 60,
        ),
        Positioned(
          bottom: 20,
          right: 10,
          child: SampleContainer(
              color: Colors.deepOrange,
              label: '3',
          ),
        ),
      ],
    );
  }
}
