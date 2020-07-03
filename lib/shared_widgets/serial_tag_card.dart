import 'package:animal_details/shared/colors.dart';
import 'package:animal_details/shared/constants.dart';
import 'package:flutter/material.dart';

class SerialTagCard {
  static Widget getCard(String serialNumber) {
    return Container(
      height: 65,
      width: 65,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: ClipPath(
//              clipper: MyCustomCipper(),
              child: Container(
                height: 65,
                width: 65,
                color: boxColor,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: smallpad * 2,
            child: Icon(
              Icons.add_circle,
              size: smallpad * 2,
              color: backgroundColor,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Text(
              serialNumber,
              style: TextStyle(
                color: textColorWhiteEffect,
                fontSize: 20,
                fontFamily: sourceSansProFontFamily,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}

//custom clippath

class MyCustomCipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
