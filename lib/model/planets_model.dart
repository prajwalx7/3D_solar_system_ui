import 'package:flutter/material.dart';

class PlanetsModel {
  final String name;
  final String subtitle;
  final String imagePath;
  final Color color;
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
    required this.color,
    required this.width,
    required this.distance,
    required this.diameter,
    required this.moons,
    required this.atmosphere,
    required this.temperature,
  });
}

final List<PlanetsModel> planets = [
  const PlanetsModel(
    name: "Earth",
    subtitle: "The Blue Planet",
    imagePath: "assets/images/earth.png",
    color: Color(0xff80a2f1),
    width: 250,
    distance: "149.6 million km",
    diameter: "12,742 km",
    moons: "1",
    atmosphere: "78% Nitrogen, 21% Oxygen",
    temperature: "-88 to 58°C",
  ),
  const PlanetsModel(
    name: "Venus",
    subtitle: "The Evening Star",
    imagePath: "assets/images/venus.png",
    color: Color(0xffEFA27A),
    width: 220,
    distance: "108.2 million km",
    diameter: "12,104 km",
    moons: "0",
    atmosphere: "96.5% CO2, 3.5% Nitrogen",
    temperature: "Around 465°C",
  ),
  const PlanetsModel(
    name: "Mars",
    subtitle: "The Red Planet",
    imagePath: "assets/images/mars.png",
    color: Color(0xffd76b4e),
    width: 220,
    distance: "227.9 million km",
    diameter: "6,779 km",
    moons: "2 (Phobos, Deimos)",
    atmosphere: "95% Carbon Dioxide, 3% Nitrogen",
    temperature: "-125 to 20°C",
  ),
  const PlanetsModel(
    name: "Mercury",
    subtitle: "The Swift Messenger",
    imagePath: "assets/images/mercury.png",
    color: Color(0xffA9A9A9),
    width: 200,
    distance: "57.9 million km",
    diameter: "4,880 km",
    moons: "0",
    atmosphere: "Thin exosphere: Oxygen, Sodium",
    temperature: "-173 to 427°C",
  ),
  const PlanetsModel(
    name: "Saturn",
    subtitle: "The Ringed Giant",
    imagePath: "assets/images/saturn.png",
    color: Color(0xffD4A373),
    width: 320,
    distance: "1.43 billion km",
    diameter: "116,460 km",
    moons: "83 (includes Titan)",
    atmosphere: "96% Hydrogen, 3% Helium",
    temperature: "-139°C",
  ),
  const PlanetsModel(
    name: "Jupiter",
    subtitle: "The Gas Giant",
    imagePath: "assets/images/jupiter.png",
    color: Color(0xffA85B2D),
    width: 200,
    distance: "778.5 million km",
    diameter: "139,820 km",
    moons: "79 (notable: Io, Europa)",
    atmosphere: "90% Hydrogen, 10% Helium",
    temperature: "-108°C",
  ),
  const PlanetsModel(
    name: "Uranus",
    subtitle: "The Ice Giant",
    imagePath: "assets/images/uranus.png",
    color: Color(0xff7FBFC9),
    width: 240,
    distance: "2.87 billion km",
    diameter: "50,724 km",
    moons: "27",
    atmosphere: "83% Hydrogen, 15% Helium",
    temperature: "-195°C",
  ),
  const PlanetsModel(
    name: "Neptune",
    subtitle: "The Windy Planet",
    imagePath: "assets/images/neptune.png",
    color: Color(0xff4b90b0),
    width: 210,
    distance: "4.5 billion km",
    diameter: "49,244 km",
    moons: "14 (includes Triton)",
    atmosphere: "80% Hydrogen, 19% Helium",
    temperature: "-201°C",
  ),
  const PlanetsModel(
    name: "Pluto",
    subtitle: "The Dwarf Planet",
    imagePath: "assets/images/pluto.png",
    color: Color(0xffB2A4C5),
    width: 220,
    distance: "5.9 billion km",
    diameter: "2,377 km",
    moons: "5 (includes Charon)",
    atmosphere: "Nitrogen, Methane",
    temperature: "-229°C",
  ),
];
