import 'package:flutter/material.dart';

class PESURow extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const PESURow({super.key, required this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Hello world'),
        FilledButton(
          onPressed: (){},
          child: const Text('Click Me'),
        ),
        const SampleContainer(color: Colors.pink,label: 'Container',),
      ],
    );
  }
}

class SampleContainer extends StatelessWidget {
  final Color color;
  final String label;
  final double? padding;

  const SampleContainer({
    super.key,
    required this.color,
    required this.label,
    this.padding ,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: EdgeInsets.all(padding ?? 30),
      child: Text(label),
    );
  }
}
