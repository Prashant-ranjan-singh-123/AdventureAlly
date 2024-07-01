import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_ui/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Ui Link: https://www.figma.com/design/YLd2VNPJMZ3YH2rnsmenb8/Mobile-app-UI-Template-(Community)?m=auto&t=K3rlLJEFfQ8P0LXv-6

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: const SplashScreen());
  }
}
