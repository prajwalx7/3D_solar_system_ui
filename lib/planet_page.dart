import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_ar/animated_planet.dart';
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
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 50.0),
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
                            planetFacts(
                                "assets/icons/distance.svg", planet.distance),
                            const SizedBox(height: 8),
                            planetFacts(
                                "assets/icons/diameter.svg", planet.diameter),
                            const SizedBox(height: 8),
                            planetFacts("assets/icons/orbit.svg", planet.moons),
                            const SizedBox(height: 8),
                            planetFacts(
                                "assets/icons/cloud.svg", planet.atmosphere),
                            const SizedBox(height: 8),
                            planetFacts("assets/icons/thermometer.svg",
                                planet.temperature),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white70,
                  foregroundColor: Colors.black,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    "Learn More",
                    style: TextStyle(fontSize: 20, fontFamily: 'space'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  Widget planetFacts(String svgPath, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(svgPath, height: 35, width: 35),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 20,
                fontFamily: 'kanit',
                fontWeight: FontWeight.bold,
                color: Colors.white70),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
