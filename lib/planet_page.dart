import 'package:flutter/material.dart';
import 'package:flutter_ar/model/planets_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlanetPage extends StatelessWidget {
  final PlanetsModel planet;

  const PlanetPage({
    super.key,
    required this.planet,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: planet.color,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  planet.imagePath,
                  width: planet.width,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 5),
                Text(
                  planet.name.toUpperCase(),
                  style: TextStyle(
                      fontSize: 42,
                      color: Colors.white,
                      fontFamily: 'gothic',
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  planet.subtitle,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontFamily: 'zen',
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                planetFacts("assets/icons/distance.svg", planet.distance),
                SizedBox(height: 12),
                planetFacts("assets/icons/diameter.svg", planet.diameter),
                SizedBox(height: 12),
                planetFacts("assets/icons/orbit.svg", planet.moons),
                SizedBox(height: 12),
                planetFacts("assets/icons/cloud.svg", planet.atmosphere),
                SizedBox(height: 12),
                planetFacts("assets/icons/thermometer.svg", planet.temperature),
                SizedBox(height: 12),
              ],
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "Learn More",
                style: TextStyle(fontSize: 20, fontFamily: 'space'),
              ),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, foregroundColor: Colors.white),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget planetFacts(String svgPath, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(svgPath, height: 35, width: 35),
        SizedBox(width: 12),
        Text(
          text,
          style: TextStyle(
              fontSize: 20, fontFamily: 'kanit', fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
