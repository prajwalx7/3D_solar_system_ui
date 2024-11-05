import 'package:flutter/material.dart';
import 'package:flutter_ar/model/planets_model.dart';
import 'package:flutter_ar/planet_page.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = planets.map((planet) {
      return PlanetPage(planet: planet);
    }).toList();
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: pages,
            fullTransitionValue: 600,
            enableLoop: true,
            waveType: WaveType.liquidReveal,
            enableSideReveal: true,
            slideIconWidget: Icon(Icons.arrow_back_ios),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
            child: Icon(
              Icons.menu_rounded,
              color: Colors.black,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
