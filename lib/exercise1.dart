import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

List<Color> colors=[
  Colors.purple,
  Colors.indigo,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
];

class AvatarStack extends StatelessWidget {
  final int n;
  const AvatarStack({
    super.key,
    required this.n,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(n, (index) {
        return Positioned(
          top: 250,
          left: index*65+15,
          child: CircularContainer(
              color: colors[index%n],
          ),
        );
      },)
    );
  }
}

class CircularContainer extends StatelessWidget {
  final Color color;
  const CircularContainer({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color
      ),
    );
  }
}

