import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/animal_service.dart';

class DetailScreen extends StatelessWidget {
  final Animal animal;
  final int green = 0xFF285555;
  final int lightGreen = 0xFF2d6060;
  final int darkGreen = 0xFF1f4949;
  final int orange = 0xFFf67913;

  const DetailScreen({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              color: Color(green),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                    const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 35,
                    )
                  ],
                ),
              ),
            )),
        Positioned(
            top: 80,
            left: 0,
            child: Container(
              color: Color(green),
              height: 450,
              width: MediaQuery.of(context).size.width,
            )),
        Positioned(
            top: 110,
            right: 0,
            height: 420,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(darkGreen),
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(35))),
            )),
        Positioned(
            top: 510,
            left: 0,
            child: Row(
              children: [
                Container(
                  color: Color(green),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      animal.description,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  )),
                )
              ],
            )),
        Positioned(
            top: 680,
            left: 0,
            child: Container(
              color: Color(green),
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(lightGreen),
                          foregroundColor: Colors.white,
                          minimumSize: const Size(40, 70),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Icon(
                        Icons.favorite_border,
                        size: 35,
                      )),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(orange),
                        minimumSize: const Size(250, 70),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text(
                      "Get started",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            )),
        Positioned(
            top: 140,
            left: 40,
            width: 400,
            height: 400,
            child: Image.asset("assets/images/gato2.png")),
        Positioned(
            top: 130,
            left: 30,
            width: 200,
            height: 100,
            child: Text(
              animal.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.w900),
            )),
        Positioned(
            top: 455,
            left: 28,
            width: 200,
            height: 100,
            child: Text(
              animal.species,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900),
            )),
        const Positioned(
            top: 505,
            left: 25,
            width: 200,
            height: 100,
            child: Text(
              "Species",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
            )),
      ],
    ));
  }
}


/*

Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                animal.image,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              animal.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              animal.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),

*/