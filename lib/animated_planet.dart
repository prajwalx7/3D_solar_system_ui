import 'package:flutter/material.dart';

class AnimatedPlanet extends StatefulWidget {
  final String imagePath;
  final double width;

  const AnimatedPlanet({
    super.key,
    required this.imagePath,
    required this.width,
  });

  @override
  AnimatedPlanetState createState() => AnimatedPlanetState();
}

class AnimatedPlanetState extends State<AnimatedPlanet>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 10).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: Image.asset(
            widget.imagePath,
            width: widget.width,
            fit: BoxFit.contain,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
