import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

class PESUHorizontalList extends StatelessWidget {
  final int n;
  const PESUHorizontalList({super.key, required this.n});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SampleContainer(color: Colors.green, label: 'Tile-$index');
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: 12,);
          },
          itemCount: n
      ),
    );
  }
}
