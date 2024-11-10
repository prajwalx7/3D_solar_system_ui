import 'package:flutter/material.dart';

class PlanetsModel {
  final String model;
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
  final String? windSpeed;
  final String? description;

  const PlanetsModel({
    required this.model,
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
    this.windSpeed,
    this.description,
  });
}

final List<PlanetsModel> planets = [
  PlanetsModel(
      model: "assets/models/earth.glb",
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
      distance: "149.6Mkm",
      diameter: "12,742 km",
      moons: "1",
      atmosphere: "78% N, 21% O2",
      temperature: "-88 to 58°C",
      windSpeed: "~32 km/h",
      description:
          "Earth is the third planet from the Sun and the only known planet to support life. It has a diverse environment, with vast oceans, continents, and an atmosphere that sustains a rich variety of flora and fauna. Earth's atmosphere is primarily composed of nitrogen and oxygen, which helps regulate temperature and protect life from harmful solar radiation. Known for its blue appearance from space due to water coverage, Earth has a moderate climate and an active geological surface with tectonic activity and a strong magnetic field."),
  PlanetsModel(
      model: "assets/models/earth.glb",
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
      distance: "108.2M km",
      diameter: "12,104 km",
      moons: "0",
      atmosphere: "96.5% CO2, 3.5% N",
      temperature: "Around 465°C",
      windSpeed: "~360 km/h",
      description:
          "Venus is the second planet from the Sun and is similar in size and composition to Earth, but vastly different in atmosphere and surface conditions. It has thick, toxic clouds of sulfuric acid and a surface temperature hot enough to melt lead. Known as Earth's sister planet, Venus has a greenhouse effect that traps heat, making it the hottest planet in the solar system."),
  PlanetsModel(
      model: "assets/models/mars.glb",
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
      distance: "227.9M km",
      diameter: "6,779 km",
      moons: "2",
      atmosphere: "95% CO2, 3% N",
      temperature: "-125 to 20°C",
      windSpeed: "~97 km/h",
      description:
          "Mars, the fourth planet from the Sun, is known as the Red Planet due to its iron oxide-rich surface. It has a thin atmosphere, composed mainly of carbon dioxide, and hosts the largest volcano and canyon in the solar system. Mars has seasons, polar ice caps, and evidence of ancient water flow, sparking interest in its potential for past or future life."),
  PlanetsModel(
      model: "assets/models/mercury.glb",
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
      distance: "57.9M km",
      diameter: "4,880 km",
      moons: "0",
      atmosphere: "O2, Na",
      temperature: "-173 to 427°C",
      windSpeed: "Negligible",
      description:
          "Mercury is the closest planet to the Sun and the smallest in our solar system. It has a rocky surface with extreme temperature fluctuations, experiencing intense heat during the day and freezing cold at night. Mercury has almost no atmosphere to retain heat, and its surface is heavily cratered, resembling our Moon."),
  PlanetsModel(
      model: "assets/models/saturn.glb",
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
      distance: "1.43B km",
      diameter: "116,460 km",
      moons: "83",
      atmosphere: "96% H2, 3% He",
      temperature: "-139°C",
      windSpeed: "~1770 km/h",
      description:
          "Saturn is the sixth planet from the Sun and is best known for its stunning ring system, made of ice and rock particles. A gas giant composed mostly of hydrogen and helium, Saturn is less dense than water. Its many moons and unique atmospheric features, like the hexagonal storm at its north pole, make it one of the most intriguing planets."),
  PlanetsModel(
      model: "assets/models/jupiter.glb",
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
      distance: "778.5M km",
      diameter: "139,820 km",
      moons: "79",
      atmosphere: "90% H2, 10% He",
      temperature: "-108°C",
      windSpeed: "~640 km/h",
      description:
          "Jupiter, the largest planet in the solar system, is a gas giant known for its powerful storms, including the Great Red Spot—a storm larger than Earth that has raged for centuries. With a thick atmosphere mostly made of hydrogen and helium, Jupiter has a strong magnetic field and over 70 moons, including the volcanic Io and the icy Europa."),
  PlanetsModel(
      model: "assets/models/uranus.glb",
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
      distance: "2.87B km",
      diameter: "50,724 km",
      moons: "27",
      atmosphere: "83% HydrogeH2, 15% He",
      temperature: "-195°C",
      windSpeed: "~900 km/h",
      description:
          "Uranus is the seventh planet from the Sun and unique for its sideways rotation, likely due to a massive collision. It's an ice giant, with a frigid atmosphere containing water, methane, and ammonia. The methane gives Uranus its blue-green color, and it has a faint ring system along with numerous moons."),
  PlanetsModel(
      model: "assets/models/neptune.glb",
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
      distance: "4.5B km",
      diameter: "49,244 km",
      moons: "14",
      atmosphere: "80% H2, 19% He",
      temperature: "-201°C",
      windSpeed: "~1930 km/h",
      description:
          "Neptune, the eighth and farthest planet from the Sun, is an ice giant with powerful winds and storms, including the dark, spinning storm known as the Great Dark Spot. Its deep blue color is due to the presence of methane in the atmosphere. Neptune has faint rings and 14 known moons, the largest being Triton."),
  PlanetsModel(
      model: "assets/models/earth.glb",
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
      distance: "5.9B km",
      diameter: "2,377 km",
      moons: "5",
      atmosphere: "Nitrogen, Methane",
      temperature: "-229°C",
      windSpeed: "Negligible",
      description:
          "Once considered the ninth planet, Pluto is now classified as a dwarf planet. Located in the Kuiper Belt, it has a rocky-icy surface with mountains, valleys, and possibly subsurface oceans. Pluto has five known moons, including the large Charon, and exhibits an eccentric orbit that sometimes brings it closer to the Sun than Neptune."),
];
