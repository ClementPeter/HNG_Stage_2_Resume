import 'package:flutter/material.dart';
import 'package:peter_resume/screens/homepage.dart';
import 'package:avatar_glow/avatar_glow.dart';
// import 'package:gradient_borders/gradient_borders.dart';
//import 'package:see_9ja_/screens/views/intro.dart';
//import 'package:see_9ja_/utils/router.dart';
//import 'package:see_9ja_/views/intro.dart';

//App Splash Screeen displaying App Name and Logo
class Splash extends StatefulWidget {
  static String routeName =
      "/splash"; //Static helps us to call this property without creating an instance of the object

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
  //Splash Screen
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: const Color(0xFFede8e8),
      // backgroundColor: Colors.black,
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 3000),
          // tag: "profile",
          child: AvatarGlow(
            // glowColor: Colors.lightBlue,
            // showTwoGlows: true,
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
    await Future.delayed(const Duration(milliseconds: 1500), () {});

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }
}
