import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen/home_screen_components/card_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final int color1 = 0xFF285555;
  final int color2 = 0xFF1f4949;
  final int color3 = 0xFFf67913;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(color1),
      body: Stack(
        children: [
          Positioned(
              top: 350,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(15)),
                  color: Color(color2),
                ),
                width: 250,
                height: MediaQuery.of(context).size.height,
              )),
          Positioned(
              top: 260,
              left: 30,
              child: SizedBox(
                width: 180,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 10,
                  padding: const EdgeInsets.all(0),
                  clipBehavior: Clip.none,
                  itemBuilder: (BuildContext context, int index) {
                    return const AnimalCard();
                  },
                ),
              )),
          Positioned(
            top: 310,
            right: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height,
              child: const Column(
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 0, left: 55),
                      child: Text(
                        'Reptiles',
                        style: TextStyle(color: Colors.white70, fontSize: 18),
                      ),
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 0, left: 55),
                      child: Text(
                        'Birds',
                        style: TextStyle(color: Colors.white70, fontSize: 18),
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
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 23,
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
                        style: TextStyle(color: Colors.white70, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 200,
              left: 0,
              child: Container(
                width: 270,
                height: 60,
                color: Color(color1),
              )),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                color: Color(color1),
                child: const Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
              top: 90,
              left: 0,
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: Color(color1),
                child: const Padding(
                  padding: EdgeInsets.only(left: 30, bottom: 30),
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
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "Our majestic world together",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
