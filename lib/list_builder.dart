import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

import 'list_column.dart';

class PESUListBuilder extends StatelessWidget {
  final int n;
  const PESUListBuilder({super.key,required this.n});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: n,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('title-$index'),
            subtitle: Text('subtitle-$index'),
            leading: const Icon(
                Icons.run_circle,
                size: 40,
            ),
            trailing: const Icon(
                Icons.keyboard_arrow_right,
            ),
            onTap: (){
              print("$index tapped");
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10,);
        },
    );
  }
}
