import 'package:flutter/material.dart';

//Widget that holds the tools section - Flutter ,Dart etc
Widget toolsCard() {
  return Wrap(
    children: [
      Column(
        children: [
          //First Layer of Tools
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ElevatedButton.icon(
              //   //hoverColor: Color(0XFFd1e7f9),
              //   icon: Padding(
              //     padding:
              //         const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
              //     child: SizedBox(
              //       height: 25,
              //       width: 25,
              //       child: Image.asset("assets/images/dart.png"),
              //     ),
              //   ),
              //   label: const Padding(
              //     padding: EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
              //     child: Text(' Dart '),
              //   ),
              //   onPressed: () {
              //     null;
              //     //html.window.open(Constants.DART, 'DART');
              //   },
              // ),
              // const SizedBox(width: 20),
              ElevatedButton.icon(
                //hoverColor: Color(0XFFd1e7f9),
                icon: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, top: 10.0, bottom: 10.0),
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset("assets/images/flutter.png"),
                  ),
                ),
                label: const Padding(
                  padding:
                      EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                  child: Text(
                    'Flutter',
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 10),
              ElevatedButton.icon(
                //hoverColor: Color(0XFFd1e7f9),
                icon: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, top: 10.0, bottom: 10.0),
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset("assets/images/dart.png"),
                  ),
                ),
                label: const Padding(
                  padding:
                      EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                  child: Text(' Dart '),
                ),
                onPressed: () {
                  null;
                  //html.window.open(Constants.DART, 'DART');
                },
              ),
              const SizedBox(width: 20),
              ElevatedButton.icon(
                //hoverColor: Color(0XFFd1e7f9),
                icon: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, top: 10.0, bottom: 10.0),
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset("assets/images/firebase.png"),
                  ),
                ),
                label: const Padding(
                  padding:
                      EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                  child: Text(
                    'Firebase',
                  ),
                ),
                onPressed: () {
                  null;
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          //Second Layer of Tools
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      //   _launchBehance();
                      null;
                    },
                    //hoverColor: Color(0XFFd1e7f9),
                    icon: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 10.0, bottom: 10.0),
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset("assets/images/android.png"),
                      ),
                    ),
                    label: const Padding(
                      padding:
                          EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                      child: Text('Andriod Studio'),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              ElevatedButton.icon(
                onPressed: () {
                  //   _launchBehance();
                  null;
                },
                //hoverColor: Color(0XFFd1e7f9),
                icon: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, top: 10.0, bottom: 10.0),
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset("assets/images/vscode.png"),
                  ),
                ),
                label: const Padding(
                  padding:
                      EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                  child: Text('Vscode'),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton.icon(
                onPressed: () {
                  //   _launchBehance();
                },
                icon: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, top: 10.0, bottom: 10.0),
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset("assets/images/github.png"),
                  ),
                ),
                label: const Padding(
                  padding:
                      EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                  child: Text('GitHub'),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          const SizedBox(height: 20),
          //Third Layer of Tools
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset(
                      "assets/images/figma.png",
                    ),
                  ),
                ),
                label: const Padding(
                  padding:
                      EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                  child: Text('Adobe XD'),
                ),
                onPressed: () {
                  null;
                },
              ),
              const SizedBox(width: 20),
              ElevatedButton.icon(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset("assets/images/xd.png"),
                  ),
                ),
                label: const Padding(
                  padding:
                      EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                  child: Text('Figma'),
                ),
                onPressed: () {
                  null;
                },
              ),
            ],
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    ],
  );
}
