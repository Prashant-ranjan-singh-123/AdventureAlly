import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            userDetail(name: 'David').animate()
                .scale(
                delay: 400.ms, duration: 500.ms, curve: Curves.decelerate)
                .fadeIn(
                delay: 400.ms,
                duration: 1000.ms,
                curve: Curves.decelerate),
            searchBox().animate()
                .scale(
                delay: 600.ms, duration: 500.ms, curve: Curves.decelerate)
                .fadeIn(
                delay: 600.ms,
                duration: 1000.ms,
                curve: Curves.decelerate),
            popularPlace().animate()
                .scale(
                delay: 800.ms, duration: 500.ms, curve: Curves.decelerate)
                .fadeIn(
                delay: 800.ms,
                duration: 1000.ms,
                curve: Curves.decelerate),
            categoryPlaces().animate()
                .scale(
                delay: 1000.ms,
                duration: 500.ms,
                curve: Curves.decelerate)
                .fadeIn(
                delay: 1000.ms,
                duration: 1000.ms,
                curve: Curves.decelerate),
            curosalSlider().animate()
                .scale(
                delay: 1200.ms,
                duration: 500.ms,
                curve: Curves.decelerate)
                .fadeIn(
                delay: 1200.ms,
                duration: 1000.ms,
                curve: Curves.decelerate)
          ],
        ),
      ),
    );
  }

  Widget userDetail({required name}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hi, ${name} 👋',
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/person.png'),
              ),
            )
          ],
        ),
        const Text(
          'Explore the world',
          style: TextStyle(
            fontSize: 20,
            color: Color(0XFF888888),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  Widget searchBox(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1,
            color: const Color(0XFF888888),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  labelText: 'Search Places',
                  labelStyle: TextStyle(
                    color: Color(0XFF888888),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: double.infinity,
              width: 2,
              color: const Color(0XFF888888),
            ),
            const SizedBox(
              width: 20,
            ),
            SvgPicture.asset('assets/filter.svg')
          ],
        ),
      ),
    );
  }

  Widget popularPlace(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular places',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              'View all',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  fontSize: 16,
                  color: Color(0XFF888888),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
    );
  }
  
  Widget categoryPlaces(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0XFF2F2F2F),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              child: Text(
                'Most Viewed',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0XFFFBFBFB),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              child: Text(
                'Nearby',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(0XFF888888),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0XFFFBFBFB),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              child: Text(
                'Latest',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(0XFF888888),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget curosalSlider(){
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 230,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/gunung.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 10,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: const Color(0XFF1D1D1D).withOpacity(.4),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        CupertinoIcons.heart,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0XFF1D1D1D).withOpacity(.4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mount Fuji, Tokyo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Tokyo, Japan',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text(
                                    '4.8',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              height: 330,
              width: 230,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/gunung.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 10,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: const Color(0XFF1D1D1D).withOpacity(.4),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0XFF1D1D1D).withOpacity(.4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mount Fuji, Tokyo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Tokyo, Japan',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text(
                                    '4.8',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
