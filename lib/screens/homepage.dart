import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:peter_resume/components/project_cards.dart';
import 'package:peter_resume/components/social_card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//Main Body of the App- Displays Profile Pic,Bio, and Carousel
class HomePage extends StatefulWidget {
  static String routeName = "/homepage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //launch Twitter  Url
  Future<void> _launchTwitterUrl() async {
    var url = Uri.parse("https://twitter.com/_carlos_dev");
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  //launch LinkedIn  Url
  Future<void> _launchLinkedIn() async {
    var url = Uri.parse("https://www.linkedin.com/in/clement-peter-b704b21a9");
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  //launch Github Url
  Future<void> _launchSoftwareUrl() async {
    var url = Uri.parse("https://github.com/ClementPeter");
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  //launch Behance Url
  Future<void> _launchBehance() async {
    var url = Uri.parse("https://www.behance.net/peterclementbehannce");
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  //launch Hashnode Url
  Future<void> _launchHashnode() async {
    var url = Uri.parse("https://hashnode.com/@carlosdev");
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: "tag",
                  child: AvatarGlow(
                    glowColor: Colors.lightBlue,
                    showTwoGlows: true,
                    endRadius: 100.0,
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
                Text(
                  AppLocalizations.of(context)!.name,
                  style: const TextStyle(
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
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                  child: Text(
                    AppLocalizations.of(context)!.bio,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      image: 'assets/images/twitter.png',
                      press: () {
                        _launchTwitterUrl();
                      },
                    ),
                    SocialCard(
                      image: "assets/images/linkedin.png",
                      press: () {
                        _launchLinkedIn();
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
                const SizedBox(height: 50),
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
                        link: () {
                          _launchSoftwareUrl();
                        },
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
                            AppLocalizations.of(context)!.software,
                      ),
                      const SizedBox(width: 20.0),
                      ProjectCards(
                        link: () {
                          _launchBehance();
                        },
                        assetImage: Image.asset(
                          'assets/images/behance.png',
                          width: 100.0,
                        ),
                        projectTopic: "Design",
                        projectDescription:
                            AppLocalizations.of(context)!.design,
                      ),
                      const SizedBox(width: 20.0),
                      ProjectCards(
                        link: () {
                          _launchHashnode();
                        },
                        assetImage: Image.asset(
                          'assets/images/node.png',
                          width: 100.0,
                        ),
                        projectTopic: "Blog",
                        projectDescription: AppLocalizations.of(context)!.blog,
                      ),
                      const SizedBox(width: 10.0),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}