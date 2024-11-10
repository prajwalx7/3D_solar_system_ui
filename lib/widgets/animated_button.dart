import 'package:flutter/material.dart';
import 'package:flutter_ar/model/planets_model.dart';
import 'package:flutter_ar/pages/details_page.dart';
import 'package:lottie/lottie.dart';

class AnimatedButton extends StatefulWidget {
  final PlanetsModel planet;
  const AnimatedButton({super.key, required this.planet});

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool isVisible = false;

  void showAnimationAndModal() {
    setState(() {
      isVisible = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isVisible = false;
      });

      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return DetailsPage(
            planet: widget.planet,
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (!isVisible)
            ElevatedButton(
              onPressed: showAnimationAndModal,
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.white70,
                foregroundColor: Colors.black,
                fixedSize: const Size(180, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(42),
                ),
              ),
              child: const Text(
                "Learn More",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'kanit',
                    fontWeight: FontWeight.bold),
              ),
            ),
          if (isVisible)
            Align(
              alignment: Alignment.bottomCenter,
              child: Lottie.asset(
                'assets/animations/rocket.json',
                height: 100,
                width: 150,
              ),
            ),
        ],
      ),
    );
  }
}
