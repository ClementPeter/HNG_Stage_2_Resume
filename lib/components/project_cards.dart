import 'package:flutter/material.dart';

//Structure for project card

class ProjectCards extends StatelessWidget {
  const ProjectCards({
    Key? key,
    this.link,
    this.projectTopic,
    this.assetImage,
    this.projectDescription,
  }) : super(key: key);
  //variables
  final VoidCallback? link;
  final String? projectTopic;
  final String? projectDescription;
  final Widget? assetImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: link,
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
            Opacity(
              opacity: 0.7,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
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
                  //color: Colors.black87,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              bottom: 10.0,
              child: Text(
                projectDescription!,
                style: const TextStyle( 
                  fontSize: 15,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
