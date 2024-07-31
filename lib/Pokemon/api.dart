import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokedex/Pokemon/models.dart';

Future<List<Pokemon>> getPokemons() async {
  var response = await http.get(
    Uri.parse('https://pokeapi.co/api/v2/pokemon/?limit=1025'),
  );

  if (response.statusCode > 399) {
    print('Failed to get pokemons!');
    print('${response.statusCode} ${response.reasonPhrase}');

    throw Exception('Failed to get pokemons!');
  }

  Map<String, dynamic> result = jsonDecode(response.body);

  var pokemons = result["results"] as List<dynamic>;

  return pokemons.map((pokeObj) {
    return Pokemon.fromJson(pokeObj);
  }).toList();

}
