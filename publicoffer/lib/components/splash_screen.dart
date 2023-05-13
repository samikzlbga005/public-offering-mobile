
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../providers/provider.dart';
import '../screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<modelProvider>(context);
    provider.getOffer();
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/splash.json'),
      nextScreen: HomeScreen(),
      backgroundColor: Color(0xffFFEAEA),
      splashIconSize: 250,
      duration: 2000,
      splashTransition: SplashTransition.sizeTransition,
      animationDuration: const Duration(seconds: 0),
    );
  }
}
