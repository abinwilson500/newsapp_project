import "package:flutter/material.dart";
import "package:newsapp_mainproject/homeScreen.dart";

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashscreen> {
  double _opacity = 3.0;

  @override
  void initState() {
    super.initState();
    _fadeIn();
    _navigateToHomeScreen();
  }

  void _fadeIn() {
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 3.0;
      });
    });
  }

  void _navigateToHomeScreen() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: Text(
            "NEWS APP",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
