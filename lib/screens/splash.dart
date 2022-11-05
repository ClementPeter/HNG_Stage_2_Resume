import 'package:flutter/material.dart';
import 'package:peter_resume/screens/homepage.dart';
import 'package:avatar_glow/avatar_glow.dart';

//Splash Screen - Displays Logo
class Splash extends StatefulWidget {
  static String id = "splash_screen";

  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetointro();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: "tag",
          child: AvatarGlow(
            endRadius: 100.0,
            child: Container(
              height: 150,
              width: 150,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.asset('assets/images/profile.png'),
              ),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  //Navigate to Resume Page
  void _navigatetointro() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }
}
