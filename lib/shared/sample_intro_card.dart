import 'package:animal_details/shared/size_config.dart';
import 'package:animal_details/shared/text_styles.dart';
import 'package:animal_details/shared_widgets/serial_tag_card.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'constants.dart';

class SampleIntroCard {
  static Widget getSimpleImageCard(BuildContext context, String name,
      String cowType, String imgUrl, String serialNumber) {
    SizeConfig.init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: SizeConfig.screenWidth * .6,
          height: 72,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Container(
                  width: SizeConfig.screenWidth * .65,
                  child: Card(
                    color: backgroundColor,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: medPadH),
                          child: Text(
                            name,
                            style: nameTextStyle,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: medPadH),
                          child: Text(
                            cowType,
                            style: subTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                child: CircleAvatar(
                  radius: SizeConfig.blockSizeHorizontal * 10,
                  backgroundImage: AssetImage(imgUrl),
                ),
              )
            ],
          ),
        ),
        SerialTagCard.getCard(serialNumber),
      ],
    );
  }
}
