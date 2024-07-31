import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/Layout.dart';
import 'package:pokedex/Pokemon/index.dart';
import 'package:pokedex/column.dart';
import 'package:pokedex/container.dart';
import 'package:pokedex/exercise.dart';
import 'package:pokedex/exercise1.dart';
import 'package:pokedex/expanded.dart';
import 'package:pokedex/list.dart';
import 'package:pokedex/list_builder.dart';
import 'package:pokedex/list_column.dart';
import 'package:pokedex/list_horizontal.dart';
import 'package:pokedex/row.dart';
import 'package:pokedex/stack.dart';
import 'package:pokedex/stateful_counter.dart';
import 'package:pokedex/stateful_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex App',
      // theme: ThemeData.dark(),
      home: PokemonsListPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 160, 145),
        foregroundColor: const Color.fromARGB(255, 227, 227, 32),
        title: const Text('Pokedex By Reehan'),
        elevation: 10.0,
        shadowColor: Colors.red[900],
      ),
      drawer: Drawer(
        child: SafeArea(
            child: SafeArea(
                child: TextButton.icon(
          onPressed: () {
            Navigator.of(context).pop();
          },
          label: const Text('Close'),
          icon: const Icon(Icons.close),
        ))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.yellowAccent,
        child: const Icon(Icons.search),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red[900],
        child: Container(
          height: 100,
        ),
      ),
      body: const MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AvatarStack(n: 7);
  }
}
