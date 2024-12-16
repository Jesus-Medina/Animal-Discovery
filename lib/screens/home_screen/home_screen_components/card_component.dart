import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/details_screen/detail_screen.dart';
import 'package:flutter_application_1/services/animal_service.dart';

class AnimalCard extends StatelessWidget {
  final Animal animal;
  final int green = 0xFF285555;
  final int darkGreen = 0xFF1f4949;
  final int orange = 0xFFf67913;

  const AnimalCard({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(animal: animal),
            ),
          );
        },
        child: SizedBox(
          height: 210,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              Positioned(
                right: -30,
                bottom: -2,
                width: 200,
                height: 200,
                child: Image.asset(animal.image),
              ),
              Positioned(
                left: 30,
                top: 25,
                child: SizedBox(
                  child: Text(
                    animal.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(darkGreen)),
                  ),
                ),
              ),
              Positioned(
                right: -35,
                bottom: 10,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(animal: animal),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(60, 60),
                    shape: const CircleBorder(),
                    iconColor: Colors.white,
                    backgroundColor: Colors.blue[600],
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
