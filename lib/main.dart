import 'package:flutter/material.dart';
import 'package:peter_resume/screens/homepage.dart';
import 'package:peter_resume/screens/splash.dart';

///Access all contact info from a List
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Peter Resume',
        theme: ThemeData(
          //scaffoldBackgroundColor: Colors.white,
          fontFamily: "Muli",
          primarySwatch: Colors.blue,
        ),
        //home: const HomePage(),
        //home: const Splash(),
        initialRoute: '/',
        routes: {
          '/': (context) => const Splash(),
          '/second': (context) => const HomePage(),
        },);
  }
}
