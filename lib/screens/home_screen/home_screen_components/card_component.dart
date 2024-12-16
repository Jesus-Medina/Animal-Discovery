import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/details_screen/detail_screen.dart';
import 'package:flutter_application_1/services/animal_service.dart';
import 'package:audioplayers/audioplayers.dart';

class AnimalCard extends StatefulWidget {
  final Animal animal;

  const AnimalCard({super.key, required this.animal});

  @override
  _AnimalCardState createState() => _AnimalCardState();
}

class _AnimalCardState extends State<AnimalCard> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _playBirdSound() async {
    await _audioPlayer.play(AssetSource('sounds/bird_chirp.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(animal: widget.animal),
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
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Positioned(
                right: -30,
                bottom: -2,
                width: 200,
                height: 200,
                child: Image.asset(widget.animal.image),
              ),
              Positioned(
                left: 30,
                top: 25,
                child: SizedBox(
                  child: Text(
                    widget.animal.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
              Positioned(
                right: -35,
                bottom: 10,
                child: ElevatedButton(
                  onPressed: () async {
                    await _playBirdSound();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen(animal: widget.animal),
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
