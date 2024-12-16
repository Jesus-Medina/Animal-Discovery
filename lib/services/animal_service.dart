import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Animal {
  final String title;
  final String description;
  final String image;
  final String image2;
  final String species;

  Animal(
      {required this.title,
      required this.description,
      required this.image,
      required this.image2,
      required this.species});

  factory Animal.fromJson(Map<String, dynamic> json) {
    return Animal(
        title: json['title'],
        description: json['description'],
        image: json['image'],
        image2: json['image2'],
        species: json['species']);
  }
}

class AnimalService {
  static Future<List<Animal>> loadAnimals() async {
    final jsonString =
        await rootBundle.loadString('lib/services/animal_data.json');
    final jsonData = json.decode(jsonString) as List;
    return jsonData.map((animalJson) => Animal.fromJson(animalJson)).toList();
  }
}
