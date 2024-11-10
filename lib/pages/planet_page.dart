import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_ar/widgets/animated_button.dart';
import 'package:flutter_ar/widgets/animated_planet.dart';
import 'package:flutter_ar/model/planets_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            right: 120.w, // left/Right
            top: MediaQuery.of(context).size.height * 0.28, // up/down
            child: Lottie.asset(
              "assets/animations/astronaut.json",
              height: 400.h,
              width: 300.w,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60.0.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AnimatedPlanet(
                      imagePath: planet.imagePath,
                      width: planet.width,
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      planet.name.toUpperCase(),
                      style: TextStyle(
                          fontSize: 42.sp,
                          color: Colors.white,
                          fontFamily: 'gothic',
                          letterSpacing: 3.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      planet.subtitle,
                      style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.white,
                          fontFamily: 'zen',
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 30.h),
                  ],
                ),
              ),
              SizedBox(height: 35.h),
            ],
          ),
          Positioned(
            left: 25.w,
            right: 50.0.w,
            bottom: 85.h,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: Colors.white.withOpacity(0.3)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Padding(
                    padding: EdgeInsets.all(16.0.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        planetFacts("assets/icons/distance.svg",
                            planet.distance, "Distance from Sun"),
                        SizedBox(height: 8.h),
                        planetFacts("assets/icons/diameter.svg",
                            planet.diameter, "Diameter"),
                        SizedBox(height: 8.h),
                        planetFacts(
                            "assets/icons/orbit.svg", planet.moons, "Moons"),
                        SizedBox(height: 8.h),
                        planetFacts("assets/icons/cloud.svg", planet.atmosphere,
                            "Atmosphere"),
                        SizedBox(height: 8.h),
                        planetFacts("assets/icons/thermometer.svg",
                            planet.temperature, "Temperature"),
                        SizedBox(height: 8.h),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20.h,
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
        SvgPicture.asset(svgPath, height: 35.h, width: 35.w),
        SizedBox(width: 12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'kanit',
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 12.sp,
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
