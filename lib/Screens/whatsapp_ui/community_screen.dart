import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c1013),
       appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff0c1013),
        elevation: 0,
        title: Text(
          "Community",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/camera.svg",
                height: 20,
                width: 20,
                color: Colors.white,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 20),
              Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Color(0xff8f9599),
                  size: 18,
                ), // Spacing between icons
              SizedBox(width: 20),
              SvgPicture.asset(
                "assets/icons/menu-dots-vertical.svg",
                height: 20,
                width: 20,
                color: Colors.white,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 10), // Spacing between icons
            ],
          ),
        ],
      ),
    );
  }
}