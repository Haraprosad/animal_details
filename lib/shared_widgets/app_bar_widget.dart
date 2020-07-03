import 'package:animal_details/shared/colors.dart';
import 'package:animal_details/shared/constants.dart';
import 'package:animal_details/shared/text_styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget {
  static getAppBarWidget(String caption) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: Text(
        caption,
        style: captionTextStyle,
      ),
      centerTitle: true,
      leading: Icon(
        Icons.arrow_back_ios,
        color: boxColor,
      ),
      actions: [
        Icon(
          Icons.home,
          color: boxColor,
        ),
        SizedBox(
          width: medPad,
        ),
      ],
    );
  }
}
