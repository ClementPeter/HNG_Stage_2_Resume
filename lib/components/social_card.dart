import 'package:flutter/material.dart';

//Structure for Sicial Card

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    this.image,
    this.press,
  }) : super(key: key);

  final String? image;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(10),
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Color(0xFFF5F6F9),
            shape: BoxShape.circle,
          ),
          child: Image.asset(image!)
          //child: SvgPicture.asset(icon!),
          ),
    );
  }
}
