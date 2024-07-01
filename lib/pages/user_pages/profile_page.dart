import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(color: Colors.white),
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.5,
                      height: MediaQuery.of(context).size.width*0.5,
                      child: Image.asset('assets/person.png', fit: BoxFit.contain,).animate()
                          .fadeIn(duration: 2000.ms)
                          .slideY(duration: 1000.ms, curve: Curves.decelerate),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      maxLines: 1,
                      '"You havent set up your Profile now."',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 22.50,
                        fontWeight: FontWeight.w600,
                        height: 0.13,
                      ),
                    ).animate().fadeIn(duration: 1000.ms, delay: 500.ms),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Let\'s take time and build profile page',
                      style: GoogleFonts.nunito(
                        color: Colors.black54,
                        fontSize: 12.50,
                        fontWeight: FontWeight.w400,
                        height: 0.13,
                      ),
                    ).animate()
                        .fadeIn(duration: 1500.ms, delay: 500.ms).scaleY(
                        duration: 1000.ms, curve: Curves.decelerate
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}