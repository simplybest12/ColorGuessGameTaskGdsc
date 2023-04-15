import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color/pallete.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Pallete.gradient1, Pallete.gradient2, Pallete.gradient3],
        ),
      ),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Positioned(
                child: Text(
                  "DEVINAR",
                  style: GoogleFonts.kalam(
                      textStyle: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 150,
          ),
          Container(
          
            alignment: Alignment.bottomCenter,
            child: Text(
              "Do You Know:\n Devinar In French Means Guess",
              textAlign: TextAlign.center,
              style: GoogleFonts.amaticSc(
                textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
