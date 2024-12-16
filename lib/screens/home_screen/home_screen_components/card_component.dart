import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 200,
        width: 200,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            Positioned(
                right: -30,
                bottom: -10,
                width: 200,
                height: 200,
                child: Image.asset("assets/images/pajaro.png")),
            const Positioned(
                left: 30,
                top: 25,
                child: SizedBox(
                  child: Text(
                    "Pajaro",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                )),
            Positioned(
                right: -5,
                bottom: 15,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        iconColor: Colors.white,
                        backgroundColor: Colors.blue[600]),
                    child: const Icon(Icons.play_arrow)))
          ],
        ),
      ),
    );
  }
}
