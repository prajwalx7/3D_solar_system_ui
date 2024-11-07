import 'package:flutter/material.dart';
import 'package:flutter_ar/model/planets_model.dart';

class DetailsPage extends StatelessWidget {
  final PlanetsModel planet;

  const DetailsPage({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: planet.gradient,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    planet.name,
                    style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    planet.subtitle,
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Distance: ${planet.distance}",
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    "Diameter: ${planet.diameter}",
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    "Moons: ${planet.moons}",
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    "Atmosphere: ${planet.atmosphere}",
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    "Temperature: ${planet.temperature}",
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
