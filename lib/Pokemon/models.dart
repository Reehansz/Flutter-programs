class Pokemon {
  String id;
  String name;

  Pokemon({
    required this.id,
    required this.name,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
        id: json['url'].split('/')[6], // Assuming the ID is in the URL
        name: json['name'],
        );
    }
}