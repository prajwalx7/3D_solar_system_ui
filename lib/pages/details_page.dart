import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_ar/model/planets_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class DetailsPage extends StatelessWidget {
  final PlanetsModel planet;

  const DetailsPage({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // Use flexible height or remove fixed height
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: planet.gradient,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Lottie.asset('assets/animations/stars.json'),
                        Center(
                          child: SizedBox(
                            height: 200,
                            width: 200,
                            child: ModelViewer(
                              src: planet.model,
                              ar: true,
                              autoRotate: true,
                              cameraControls: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      planet.name.toUpperCase(),
                      style: const TextStyle(
                        fontFamily: 'gothic',
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 3.0,
                      ),
                    ),
                    Text(
                      planet.subtitle,
                      style: const TextStyle(
                          fontSize: 24, color: Colors.white, fontFamily: 'zen'),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 250,
                      child: GridView.builder(
                        padding: const EdgeInsets.all(8.0),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          switch (index) {
                            case 0:
                              return buildFacts("assets/icons/distance.svg",
                                  planet.distance, "Distance from Sun");
                            case 1:
                              return buildFacts("assets/icons/diameter.svg",
                                  planet.diameter, "Diameter");
                            case 2:
                              return buildFacts("assets/icons/orbit.svg",
                                  planet.moons, "Moons");
                            case 3:
                              return buildFacts("assets/icons/cloud.svg",
                                  planet.atmosphere, "Atmoshpere");
                            case 4:
                              return buildFacts("assets/icons/thermometer.svg",
                                  planet.temperature, "Temperature");
                            case 5:
                              return buildFacts("assets/icons/wind.svg",
                                  planet.windSpeed ?? "N/A", "Wind Speed");
                            default:
                              return const SizedBox.shrink();
                          }
                        },
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'kanit'),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        planet.description ?? "N/A",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                            fontFamily: 'space'),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(32)),
                        child: Text(
                          "Back to Planet",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontFamily: 'kanit'),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildFacts(String svgPath, String value, String title) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.2),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.white.withOpacity(0.3)),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svgPath,
              height: 25,
              width: 25,
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(color: Colors.white, fontFamily: 'kanit'),
            ),
            SizedBox(height: 3),
            Text(
              title,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                  fontFamily: 'space'),
            )
          ],
        ),
      ),
    ),
  );
}
