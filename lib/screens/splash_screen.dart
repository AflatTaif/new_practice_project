import 'package:flutter/material.dart';
import 'package:new_practice_project/onboarding/onboarding.dart';
import 'dart:async';

// For the delayed transition

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();


    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _animation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();


    Timer(const Duration(milliseconds: 1700), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Onboarding()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/splash/bg.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: SlideTransition(
              position: _animation,
              child: Image.asset(
                'assets/images/splash/Icon.png',
                width: 150,
                height: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}