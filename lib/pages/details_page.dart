import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_ar/model/planets_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: planet.gradient,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 70.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Lottie.asset('assets/animations/stars.json'),
                        Center(
                          child: SizedBox(
                            height: 200.h,
                            width: 200.w,
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
                      style: TextStyle(
                        fontFamily: 'gothic',
                        fontSize: 36.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 3.0,
                      ),
                    ),
                    Text(
                      planet.subtitle,
                      style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.white,
                          fontFamily: 'zen'),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      height: 250.h,
                      child: GridView.builder(
                        padding: EdgeInsets.all(8.0.r),
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
                    SizedBox(height: 5.h),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0.w),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 24.sp,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'kanit'),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                      child: Text(
                        planet.description ?? "N/A",
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white70,
                            fontFamily: 'space'),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 12.h),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(32.r)),
                        child: Text(
                          "Back to Planet",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'kanit'),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
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
      borderRadius: BorderRadius.circular(8.r),
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
              height: 25.h,
              width: 25.w,
            ),
            SizedBox(height: 4.h),
            Text(
              value,
              style: TextStyle(
                  fontSize: 16.sp, color: Colors.white, fontFamily: 'kanit'),
            ),
            SizedBox(height: 3.h),
            Text(
              title,
              style: TextStyle(
                  fontSize: 12.sp,
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
