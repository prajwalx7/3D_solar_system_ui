import 'package:flutter/material.dart';
import 'package:flutter_ar/pages/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b1b1b),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 60.h),
              child: Column(
                children: [
                  Text(
                    "Our Solar System",
                    style: TextStyle(
                        fontSize: 40.sp,
                        color: Colors.white,
                        fontFamily: 'space',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Your Planetary Guide",
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: Colors.white70,
                        fontFamily: 'space'),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Discover amazing facts and features of all planets in our solar system",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white70,
                        fontFamily: 'space'),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 80.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(18.r),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.deepPurple, Colors.purple.shade700],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        border: Border.all(
                            color: Colors.white.withOpacity(0.4), width: 0.4),
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 8.r,
                            offset: Offset(4.r, 4.r),
                          ),
                        ],
                      ),
                      child: Text(
                        "Start Exploring",
                        style: TextStyle(
                          fontSize: 22.sp,
                          color: Colors.white,
                          fontFamily: 'zen',
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 4.r,
                              offset: Offset(2.r, 2.r),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Lottie.asset(
                "assets/animations/start.json",
                height: 300.h,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
