import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen/home_screen.dart';

void main() {
  runApp(const AplicacionPrincipal());
}

class AplicacionPrincipal extends StatelessWidget {
  const AplicacionPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Animals App",
        home: HomeScreen());
  }
}