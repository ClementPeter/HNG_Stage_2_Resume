import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';//
// import 'package:umart/size_config.dart';

// import '../size_config.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({
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
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(10),
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
