import 'package:flutter/material.dart';
import 'package:flutter_ar/model/planets_model.dart';
import 'package:flutter_ar/pages/planet_page.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            slideIconWidget: const Icon(Icons.arrow_back_ios),
          ),
        
        ],
      ),
    );
  }
}
