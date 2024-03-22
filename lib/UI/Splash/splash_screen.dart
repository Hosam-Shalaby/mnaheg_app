import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mnaheg_app/UI/HomeScreen/home_screen.dart';

import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash-view';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacementNamed(context, HomeScreen.routeName),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var appProvider = Provider.of<SettingsProvider>(context);

    return Image.asset(
      'assets/images/1.png',
      fit: BoxFit.cover,
    );
  }
}
