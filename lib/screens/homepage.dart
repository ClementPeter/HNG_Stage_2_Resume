import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:peter_resume/components/project_cards.dart';
import 'package:peter_resume/components/social_card.dart';
import 'dart:io' as html;

class HomePage extends StatelessWidget {
  static String routeName = "/homepage";
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFede8e8),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 3000),
                  child: AvatarGlow(
                    glowColor: Colors.lightBlue,
                    showTwoGlows: true,
                    endRadius: 100.0,
                    // child: CircleAvatar(
                    //   radius: 100,
                    //   backgroundImage: Image.asset('assets/images/profile.jpg'),
                    //   child: Image.asset('assets/images/profile.jpg'),
                    // ),
                    child: Container(
                      height: 150,
                      width: 150,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Image.asset(
                          'assets/images/profile.png',
                        ),
                      ),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),

                //Name
                const SizedBox(height: 20),
                const Text(
                  'Clement Peter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Lagos NG',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                //Bio
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                  child: Text(
                    "Hey there I'm Peter and I enjoy cooking cool stuffs using cross platform solution to deliver usable products in the most efficient way possible",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      //fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      image: 'assets/images/twitter.png',
                      press: () {
                        //  html.window  n('https://twitter.com/_carlos_dev', 'TWITTER');                        /// html.window                            .open("https://twitter.com/_carlos_dev", 'TWITTER');
                      },
                    ),
                    SocalCard(
                      image: "assets/images/linkedin.png",
                      press: () {
                        // html.window.open(     //     "https://www.linkedin.com/in/clement-peter-b704b21a9",   //     'LINKED IN');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                const Center(
                  child: Text(
                    "What I do...",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 10.0),
                      ProjectCards(
                        assetImage: Row(
                          children: [
                            Image.asset(
                              'assets/images/flutter.png',
                              width: 50.0,
                            ),
                            const SizedBox(width: 10.0),
                            Image.asset(
                              'assets/images/dart.png',
                              width: 50.0,
                            ),
                            const SizedBox(width: 10.0),
                            Image.asset(
                              'assets/images/firebase.png',
                              width: 50.0,
                            )
                          ],
                        ),
                        projectTopic: "Software",
                        projectDescription:
                            "  I do enjoy cooking Mobile Apps using Flutter, Dart \n  and other 3rd party tools plus I do my best to ensure\n  they taste delicious and doesn't burn...😅😬",
                      ),
                      const SizedBox(width: 20.0),
                      ProjectCards(
                        assetImage: Image.asset(
                          'assets/images/behance.png',
                          width: 100.0,
                        ),
                        projectTopic: "Design",
                        projectDescription:
                            " As a R3TIR3D Designer 😩,\n  I still spin up beautiful UI interfaces too 😘  ",
                      ),
                      const SizedBox(width: 20.0),
                      ProjectCards(
                        assetImage: Image.asset(
                          'assets/images/node.png',
                          width: 100.0,
                        ),
                        projectTopic: "Blog",
                        projectDescription:
                            "  Plus I also write blogs to help simplify\n  technical concepts I happen to have learnt 👨🏾‍🏫",
                      ),
                      const SizedBox(width: 10.0),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
