import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

import 'list_column.dart';

class PESUListView extends StatelessWidget {
  final int n;
  const PESUListView({super.key,required this.n});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:List.generate(n, (index) {
        return Tile(label: 'Tile-${index+1}');
      },)
    );
  }
}
