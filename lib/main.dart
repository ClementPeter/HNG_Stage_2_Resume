import 'package:flutter/material.dart';
import 'package:peter_resume/screens/homepage.dart';
import 'package:peter_resume/screens/splash.dart';
//import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peter Resume',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      //supportedLocales: AppLocalizations.,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      // themeMode: ThemeMode.system,
      theme: ThemeData(
        fontFamily: "Muli",
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/second': (context) => const HomePage(),
      },
    );
  }
}
