import 'package:animal_details/shared/colors.dart';
import 'package:animal_details/shared/constants.dart';
import 'package:animal_details/shared/sample_intro_card.dart';
import 'package:animal_details/shared/size_config.dart';
import 'package:animal_details/shared/text_styles.dart';
import 'package:animal_details/shared_widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class PregnencyDetails extends StatefulWidget {
  @override
  _PregnencyDetailsState createState() => _PregnencyDetailsState();
}

class _PregnencyDetailsState extends State<PregnencyDetails> {
  //***********todo: this have to be dynamic
  String name = "Nandini";
  String cowType = "Shahiwal";
  String imgUrl = cowImageUrl;
  String serialNumber = "1280";
  //***************************************
  bool isSwitched = false;
  bool isSwitched2 = false;
  int groupValue = 1;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBarWidget.getAppBarWidget("Pregnancy Details"),
      body: SingleChildScrollView(
        child: Container(
          color: backgroundColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: medPadH * 2,
              ),
              Container(
                color: backgroundColor,
                margin: EdgeInsets.symmetric(horizontal: medPadH),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SampleIntroCard.getSimpleImageCard(
                        context, name, cowType, imgUrl, serialNumber),
                    SizedBox(
                      height: medPadH * 2,
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: SizeConfig.medPadH),
                      decoration: BoxDecoration(
                        color: textColorWhiteEffect,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Currently Pregnant",
                            style: checkedTextStyle,
                          ),
                          SizedBox(
                            width: smallpad * 2,
                          ),
                          Switch(
                            value: isSwitched,
                            activeColor: backgroundColor,
                            hoverColor: boxColor,
                            inactiveThumbColor: backgroundColor,
                            activeTrackColor: boxColor,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });

                              //todo
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: medPadH * 1.5,
              ),
              Container(
                padding: EdgeInsets.all(medPadH),
                margin: EdgeInsets.symmetric(horizontal: smallpad),
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: smallpad,
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.symmetric(
                          horizontal: SizeConfig.smallPad * 2),
                      decoration: BoxDecoration(
                        color: textColorWhiteEffect,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Delivered",
                            style: checkedTextStyle,
                          ),
                          SizedBox(
                            width: smallpad * 2,
                          ),
                          Switch(
                            value: isSwitched2,
                            activeColor: backgroundColor,
                            hoverColor: boxColor,
                            inactiveThumbColor: backgroundColor,
                            activeTrackColor: boxColor,
                            onChanged: (value) {
                              setState(() {
                                isSwitched2 = value;
                              });

                              //todo
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: medPadH * 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      padding: EdgeInsets.all(smallpad * 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Date",
                            style: boxSemiLightTextStyle,
                          ),
                          Icon(Icons.calendar_today)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: medPad,
                    ),

                    // 2nd box
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: smallpad * 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Result",
                              style: boxSemiLightTextStyle,
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            flex: 6,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      value: 1,
                                      groupValue: groupValue,
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue = value;
                                          //todo
                                        });
                                      },
                                    ),
                                    Text(
                                      "Male",
                                      style: checkedTextStyle,
                                    ),
                                    SizedBox(
                                      width: smallpad,
                                    ),
                                    Radio(
                                      value: 2,
                                      groupValue: groupValue,
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue = value;
                                          //todo
                                        });
                                      },
                                    ),
                                    Text(
                                      "Female",
                                      style: checkedTextStyle,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: 3,
                                      groupValue: groupValue,
                                      onChanged: (value) {
                                        setState(() {
                                          groupValue = value;
                                          //todo
                                        });
                                      },
                                    ),
                                    Text(
                                      "Failed",
                                      style: checkedTextStyle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: (medPadH * 2) - smallpad,
                    ),

                    //*************Button***********
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: ButtonTheme(
                            height: 45,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: RaisedButton(
                              onPressed: () {
                                //todo
                              },
                              color: backgroundColor,
                              child: Text(
                                "Save",
                                style: btnTextStyleColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.smallPad,
                        ),
                        Expanded(
                          flex: 7,
                          child: ButtonTheme(
                            height: 45,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: OutlineButton(
                              borderSide: BorderSide(
                                color: textColorWhiteEffect,
                                width: 2,
                              ),
                              color: boxColor,
                              onPressed: () {
                                //todo
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Bull Details",
                                    style: TextStyle(
                                      color: textColorWhiteEffect,
                                      fontFamily: formaDjrBannerFontFamily,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: textColorWhiteEffect,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: medPadH * 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
