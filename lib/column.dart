import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

class PESUColumn extends StatelessWidget {
  const PESUColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // SampleContainer(
        //     color: Colors.purple,
        //     label: '1 '
        // ),
        FilledButton(
            onPressed: (){},
            child: Text('Click Me'),
        ),
        const SampleContainer(
            color: Colors.green,
            label: '2'
        ),
        const SampleContainer(
            color: Colors.blue,
            label: '3'
        ),
      ],
    );
  }
}
