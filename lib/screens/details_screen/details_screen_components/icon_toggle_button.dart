import 'package:flutter/material.dart';

class IconToggleButton extends StatefulWidget {
  const IconToggleButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IconToggleButtonState createState() => _IconToggleButtonState();
}

class _IconToggleButtonState extends State<IconToggleButton> {
  bool _isFavorite = false;
  final int lightGreen = 0xFF2d6060;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _isFavorite = !_isFavorite;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(lightGreen),
        foregroundColor: Colors.white,
        minimumSize: const Size(40, 70),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Icon(
        _isFavorite ? Icons.favorite : Icons.favorite_border,
        size: 35,
      ),
    );
  }
}
