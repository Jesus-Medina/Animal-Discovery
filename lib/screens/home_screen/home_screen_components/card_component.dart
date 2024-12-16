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
                top: 10,
                right: -30,
                width: 100,
                height: 100,
                child: Image.asset("assets/images/planta3.png"),
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
                bottom: 15,
                child: ElevatedButton(
                  onPressed: () {
                    /*
                    aqui deberia ir la logica del reproductor de sonidos
                  */
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(70, 70),
                    shape: const CircleBorder(),
                    iconColor: Colors.white,
                    backgroundColor: Color(orange),
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    size: 30,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                bottom: -24,
                width: 80,
                height: 80,
                child: Image.asset("assets/images/planta2.png"),
              ),
              Positioned(
                left: -20,
                bottom: -8,
                width: 80,
                height: 80,
                child: Image.asset("assets/images/planta1.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
