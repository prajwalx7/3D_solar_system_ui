import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_ar/widgets/animated_button.dart';
import 'package:flutter_ar/widgets/animated_planet.dart';
import 'package:flutter_ar/model/planets_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class PlanetPage extends StatelessWidget {
  final PlanetsModel planet;

  const PlanetPage({
    super.key,
    required this.planet,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: planet.gradient,
      ),
      child: Stack(
        children: [
          Positioned(
            right: 120, // left/Right
            top: MediaQuery.of(context).size.height * 0.28, // up/down
            child: Lottie.asset(
              "assets/animations/astronaut.json",
              height: 400,
              width: 300,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AnimatedPlanet(
                      imagePath: planet.imagePath,
                      width: planet.width,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      planet.name.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 42,
                          color: Colors.white,
                          fontFamily: 'gothic',
                          letterSpacing: 3.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      planet.subtitle,
                      style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontFamily: 'zen',
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
              const SizedBox(height: 35),
            ],
          ),
          Positioned(
            left: 25,
            right: 50.0,
            bottom: 85,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white.withOpacity(0.3)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        planetFacts("assets/icons/distance.svg",
                            planet.distance, "Distance from Sun"),
                        const SizedBox(height: 8),
                        planetFacts("assets/icons/diameter.svg",
                            planet.diameter, "Diameter"),
                        const SizedBox(height: 8),
                        planetFacts(
                            "assets/icons/orbit.svg", planet.moons, "Moons"),
                        const SizedBox(height: 8),
                        planetFacts("assets/icons/cloud.svg", planet.atmosphere,
                            "Atmosphere"),
                        const SizedBox(height: 8),
                        planetFacts("assets/icons/thermometer.svg",
                            planet.temperature, "Temperature"),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: AnimatedButton(
              planet: planet,
            ),
          ),
        ],
      ),
    );
  }

  Widget planetFacts(String svgPath, String value, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(svgPath, height: 35, width: 35),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'kanit',
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontFamily: 'kanit',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
