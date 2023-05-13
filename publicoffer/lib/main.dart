import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:publicoffer/providers/provider.dart';
import 'package:publicoffer/screens/home_screen.dart';
import 'components/splash_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => modelProvider()),
    ],
    child: MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen()),
  ));
}
