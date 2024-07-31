import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/Pokemon/models.dart';

class PokemonDetailsPage extends StatefulWidget {
  final Pokemon pokemon;
  const PokemonDetailsPage({super.key, required this.pokemon});

  @override
  State<PokemonDetailsPage> createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  ColorScheme? colorScheme;

  @override
  void initState() {
    super.initState();
    ColorScheme.fromImageProvider(
      brightness: Brightness.light,
      provider: NetworkImage(
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${widget.pokemon.id}.png',
      ),
    ).then(
      (value) {
        print(value.primary);
        setState(() {
          colorScheme = value;
        });
      },
    ).catchError((e, st) {
      print(e);
      debugPrintStack(stackTrace: st);
    });
  }

  @override
  Widget build(BuildContext context) {
    print(Theme.of(context).colorScheme.primary);
    return Scaffold(
      backgroundColor: colorScheme?.primary.withOpacity(0.5),
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.pokemon.name),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Hero(
          tag: widget.pokemon.id,
          child: Column(
            children: [
              SvgPicture.network(
                  width: 250,
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/${widget.pokemon.id}.svg'
              ),
            ],
          ),
        ),
      ),
    );
  }
}
