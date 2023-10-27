import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../constants/appRoutes.dart';
import '../../constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(
        seconds: 4,
      ),
      () => Navigator.of(context).pushReplacementNamed(menu),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [kGrey, kIndigo],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
        ),
        child: Center(
          child: Lottie.network(
              'https://assets9.lottiefiles.com/packages/lf20_eAqEBOw7m9.json'),
        ),
      ),
    );
  }
}
