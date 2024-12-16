import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen/home_screen_components/card_component.dart';
import 'package:flutter_application_1/services/animal_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final int green = 0xFF285555;
  final int darkGreen = 0xFF1f4949;
  final int orange = 0xFFf67913;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(green),
      body: FutureBuilder<List<Animal>>(
        future: AnimalService.loadAnimals(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No animals found'));
          }

          final animals = snapshot.data!;

          return Stack(
            children: [
              Positioned(
                  top: 320,
                  left: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(35)),
                      color: Color(darkGreen),
                    ),
                  )),
              Positioned(
                  top: 240,
                  left: 40,
                  child: SizedBox(
                    width: 200,
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      itemCount: animals.length,
                      padding: const EdgeInsets.all(0),
                      clipBehavior: Clip.none,
                      itemBuilder: (BuildContext context, int index) {
                        return AnimalCard(animal: animals[index]);
                      },
                    ),
                  )),
              Positioned(
                top: 310,
                right: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height,
                  child: const Column(
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 0, left: 55),
                          child: Text(
                            'Reptiles',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 3,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 0, left: 55),
                          child: Text(
                            'Birds',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 3,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 0, left: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Animals',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: 19,
                                ),
                                child: Text(
                                  "●",
                                  style: TextStyle(color: Color(0xFFf67913)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 3,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 0, right: 30),
                          child: Text(
                            'Fishes',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    color: Color(green),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 35,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 35,
                          )
                        ],
                      ),
                    ),
                  )),
              Positioned(
                  top: 75,
                  left: 0,
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    color: Color(green),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 35, bottom: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "Discover",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Text(
                            "Our majestic world together",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          );
        },
      ),
    );
  }
}
