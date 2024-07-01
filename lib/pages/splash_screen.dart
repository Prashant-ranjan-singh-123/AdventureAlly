import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottom_nav_bar.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  // Navigating to Onboarding screen automatically after 2 seconds
  _navigateToOnboardingScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(const GlobalNavBar(),
          transition: Transition.fade,
          duration: 1000.ms,
          curve: Curves.decelerate);
    });
  }

  @override
  Widget build(BuildContext context) {
    _navigateToOnboardingScreen();
    return Scaffold(
      backgroundColor: const Color(0XFF0172B2),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(1, 114, 178, 1),
          Color.fromRGBO(0, 22, 69, 1)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Travel',
                  style: GoogleFonts.lobster(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 44,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  'assets/globe.svg',
                )
              ],
            ).animate()
            .fadeIn(duration: 2000.ms)
            .slideY(duration: 1000.ms, curve: Curves.decelerate),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Find Your Dream \nDestination With Us',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ).animate()
                .fadeIn(duration: 1500.ms, delay: 500.ms).scaleY(
              duration: 1000.ms, curve: Curves.decelerate)
          ],
        ),
      ),
    );
  }
}
