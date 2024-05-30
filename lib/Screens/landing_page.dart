// get_started_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'nav_bar_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade300, Colors.blue.shade900],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icon.png',
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 40),
            Text(
              'Welcome to Carsec.co',
              style: GoogleFonts.mulish(
                textStyle: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Find your favorite car',
              textAlign: TextAlign.center,
              style: GoogleFonts.mulish(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomNavBar()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.white,
              ),
              child: Text(
                'Get Started',
                style: GoogleFonts.mulish(
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
