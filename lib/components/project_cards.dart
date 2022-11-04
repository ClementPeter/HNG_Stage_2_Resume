import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:io' as html;

class ProjectCards extends StatelessWidget {
  const ProjectCards({
    //Key key,
    this.link,
    this.projectTopic,
    this.assetImage,
    this.projectDescription,
  });
  //variables
  final String? link;
  final String? projectTopic;
  final String? projectDescription;
  final Widget? assetImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 400,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.lightBlue[200]!.withOpacity(0.5),
          // border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Stack(
          children: [
            // Opacity(
            //   opacity: 0.7,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 10, top: 20),
            //     child: CircleAvatar(
            //       backgroundColor: Colors.lightBlue[200]!.withOpacity(0),
            //       child: assetImage,
            //       // radius: 40.0,
            //     ),
            //     // child: FittedBox(
            //     //   //fit: BoxFit.fill,
            //     //   child: assetImage,
            //     // ),
            //   ),
            // ),
            Opacity(
              opacity: 0.7,
              // child: CircleAvatar(
              //   backgroundColor: Colors.lightBlue[200]!.withOpacity(0),
              //   child: assetImage,
              //   // radius: 40.0,
              // ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                // padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: assetImage,
                ),
              ),
            ),
            Positioned(
              top: 40.0,
              right: 50.0,
              // bottom:
              //left: 50,
              child: Text(
                projectTopic!,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              bottom: 10.0,
              //right: 10.0,
              //left: 10,
              child: Text(
                projectDescription!,
                style: const TextStyle(
                  color:Colors.black87,
                  fontSize: 15,
                  textBaseline: TextBaseline.alphabetic,
                ),
                // style: Theme.of(context).textTheme.caption),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
