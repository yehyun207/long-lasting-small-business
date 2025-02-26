import 'package:flutter/material.dart';
import 'package:module_b_103/presentation/screens/home_screen.dart';
import 'package:module_b_103/presentation/screens/oneboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPref = await SharedPreferences.getInstance();
  final skipOneboarding = sharedPref.getBool('skipOneboaring') ?? false;

  runApp(MaterialApp(
    home: !skipOneboarding ? const OnboardingScreen() : HomeScreen(),
  ));
}