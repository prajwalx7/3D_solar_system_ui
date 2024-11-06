import 'package:flutter/material.dart';

class PlanetsModel {
  final String name;
  final String subtitle;
  final String imagePath;
  final Gradient gradient;
  final double width;
  final String distance;
  final String diameter;
  final String moons;
  final String atmosphere;
  final String temperature;

  const PlanetsModel({
    required this.name,
    required this.subtitle,
    required this.imagePath,
    required this.gradient,
    required this.width,
    required this.distance,
    required this.diameter,
    required this.moons,
    required this.atmosphere,
    required this.temperature,
  });
}

final List<PlanetsModel> planets = [
  PlanetsModel(
    name: "Earth",
    subtitle: "The Blue Planet",
    imagePath: "assets/images/earth.png",
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.blue.shade900,
        Colors.blue.shade300,
      ],
    ),
    width: 250,
    distance: "149.6 million km",
    diameter: "12,742 km",
    moons: "Total Moons: 1",
    atmosphere: "78% N, 21% O2",
    temperature: "-88 to 58°C",
  ),
  PlanetsModel(
    name: "Venus",
    subtitle: "The Evening Star",
    imagePath: "assets/images/venus.png",
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.orange.shade900,
        Colors.orange.shade300,
      ],
    ),
    width: 220,
    distance: "108.2 million km",
    diameter: "12,104 km",
    moons: "Total Moons: 0",
    atmosphere: "96.5% CO2, 3.5% N",
    temperature: "Around 465°C",
  ),
  PlanetsModel(
    name: "Mars",
    subtitle: "The Red Planet",
    imagePath: "assets/images/mars.png",
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.red.shade900,
        Colors.red.shade300,
      ],
    ),
    width: 220,
    distance: "227.9 million km",
    diameter: "6,779 km",
    moons: "Total Moons: 2",
    atmosphere: "95% CO2, 3% N",
    temperature: "-125 to 20°C",
  ),
  PlanetsModel(
    name: "Mercury",
    subtitle: "The Swift Messenger",
    imagePath: "assets/images/mercury.png",
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.grey.shade900,
        Colors.grey.shade500,
      ],
    ),
    width: 200,
    distance: "57.9 million km",
    diameter: "4,880 km",
    moons: "Total Moons: 0",
    atmosphere: "O2, Na",
    temperature: "-173 to 427°C",
  ),
  PlanetsModel(
    name: "Saturn",
    subtitle: "The Ringed Giant",
    imagePath: "assets/images/saturn.png",
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.brown.shade900,
        Colors.amber.shade400,
      ],
    ),
    width: 320,
    distance: "1.43 billion km",
    diameter: "116,460 km",
    moons: "Total Moons: 83",
    atmosphere: "96% H2, 3% He",
    temperature: "-139°C",
  ),
  PlanetsModel(
    name: "Jupiter",
    subtitle: "The Gas Giant",
    imagePath: "assets/images/jupiter.png",
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.brown.shade900,
        Colors.orange.shade400,
      ],
    ),
    width: 200,
    distance: "778.5 million km",
    diameter: "139,820 km",
    moons: "Total Moons: 79",
    atmosphere: "90% H2, 10% He",
    temperature: "-108°C",
  ),
  PlanetsModel(
    name: "Uranus",
    subtitle: "The Ice Giant",
    imagePath: "assets/images/uranus.png",
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.teal.shade900,
        Colors.teal.shade300,
      ],
    ),
    width: 240,
    distance: "2.87 billion km",
    diameter: "50,724 km",
    moons: "Total Moons: 27",
    atmosphere: "83% HydrogeH2, 15% He",
    temperature: "-195°C",
  ),
  PlanetsModel(
    name: "Neptune",
    subtitle: "The Windy Planet",
    imagePath: "assets/images/neptune.png",
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.blueGrey.shade900,
        Colors.blue.shade300,
      ],
    ),
    width: 210,
    distance: "4.5 billion km",
    diameter: "49,244 km",
    moons: "Total Moons: 14",
    atmosphere: "80% H2, 19% He",
    temperature: "-201°C",
  ),
  PlanetsModel(
    name: "Pluto",
    subtitle: "The Dwarf Planet",
    imagePath: "assets/images/pluto.png",
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.brown.shade900,
        Colors.grey.shade400,
      ],
    ),
    width: 220,
    distance: "5.9 billion km",
    diameter: "2,377 km",
    moons: "Total Moons: 5",
    atmosphere: "Nitrogen, Methane",
    temperature: "-229°C",
  ),
];
