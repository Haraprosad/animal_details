import 'package:animal_details/routes/routes.gr.dart';
import 'package:animal_details/shared/colors.dart';
import 'package:animal_details/shared/constants.dart';
import 'package:animal_details/shared/size_config.dart';
import 'package:animal_details/shared/text_styles.dart';
import 'package:animal_details/shared_widgets/app_bar_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class FamilyDetails extends StatefulWidget {
  @override
  _FamilyDetailsState createState() => _FamilyDetailsState();
}

class _FamilyDetailsState extends State<FamilyDetails> {
  //***********todo: this have to be dynamic
  String name = "Nandini";
  String cowType = "Shahiwal";
  String imgUrl = "assets/images/cow_img.jpeg";
  String serialNumber = "1280";
  String milkAmount = "1200L";
  //***************************************
  String monthName = "January";
  bool isSwitched = false;
  bool isSwitched2 = false;
  int groupValue = 1;
  int gValue = 1;
  bool isGrandSireSelected = true;
  bool isDamSireSelected = false;
  bool isSireSelected = false;
  bool isDamSelected = false;
  bool is2ndDamSelected = false;
  bool isGrandDam = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBarWidget.getAppBarWidget("Family Details"),
      body: SingleChildScrollView(
        child: InkWell(
          onTap: () {
            ExtendedNavigator.of(context).pushNamed(Routes.mikingDetails);
          },
          child: Container(
            color: backgroundColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: medPadH,
                ),
                Container(
                  color: backgroundColor,
                  margin: EdgeInsets.symmetric(horizontal: medPadH),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: medPadH,
                      ),
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ButtonTheme(
                                  child: RaisedButton(
                                    color: isGrandSireSelected
                                        ? boxColor
                                        : backgroundColor,
                                    child: Text(
                                      "Grand-Sire",
                                      style: isGrandSireSelected
                                          ? subTextStyleActive
                                          : subTextStyle,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isGrandSireSelected = true;
                                        isDamSireSelected = false;
                                        isSireSelected = false;
                                        isDamSelected = false;
                                        is2ndDamSelected = false;
                                        isGrandDam = false;
                                      });
                                      //todo
                                    },
                                  ),
                                  minWidth: 140,
                                ),
                                ButtonTheme(
                                  child: RaisedButton(
                                    color: isDamSireSelected
                                        ? boxColor
                                        : backgroundColor,
                                    child: Text(
                                      "Dam-Sire",
                                      style: isDamSireSelected
                                          ? subTextStyleActive
                                          : subTextStyle,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isGrandSireSelected = false;
                                        isDamSireSelected = true;
                                        isSireSelected = false;
                                        isDamSelected = false;
                                        is2ndDamSelected = false;
                                        isGrandDam = false;
                                      });
                                      //todo
                                    },
                                  ),
                                  minWidth: 140,
                                ),
                                ButtonTheme(
                                  minWidth: 140,
                                  child: RaisedButton(
                                    color: isSireSelected
                                        ? boxColor
                                        : backgroundColor,
                                    child: Text(
                                      "Sire",
                                      style: isSireSelected
                                          ? subTextStyleActive
                                          : subTextStyle,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isGrandSireSelected = false;
                                        isDamSireSelected = false;
                                        isSireSelected = true;
                                        isDamSelected = false;
                                        is2ndDamSelected = false;
                                        isGrandDam = false;
                                      });
                                      //todo
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: smallpad,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ButtonTheme(
                                  child: RaisedButton(
                                    color:
                                        isGrandDam ? boxColor : backgroundColor,
                                    child: Text(
                                      "Grand-Dam",
                                      style: isGrandDam
                                          ? subTextStyleActive
                                          : subTextStyle,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isGrandSireSelected = false;
                                        isDamSireSelected = false;
                                        isSireSelected = false;
                                        isDamSelected = false;
                                        is2ndDamSelected = false;
                                        isGrandDam = true;
                                      });
                                      //todo
                                    },
                                  ),
                                  minWidth: 140,
                                ),
                                ButtonTheme(
                                  child: RaisedButton(
                                    color: is2ndDamSelected
                                        ? boxColor
                                        : backgroundColor,
                                    child: Text(
                                      "2nd Dam",
                                      style: is2ndDamSelected
                                          ? subTextStyleActive
                                          : subTextStyle,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isGrandSireSelected = false;
                                        isDamSireSelected = false;
                                        isSireSelected = false;
                                        isDamSelected = false;
                                        is2ndDamSelected = true;
                                        isGrandDam = false;
                                      });
                                      //todo
                                    },
                                  ),
                                  minWidth: 140,
                                ),
                                ButtonTheme(
                                  minWidth: 140,
                                  child: RaisedButton(
                                    color: isDamSelected
                                        ? boxColor
                                        : backgroundColor,
                                    child: Text(
                                      "Dam",
                                      style: isDamSelected
                                          ? subTextStyleActive
                                          : subTextStyle,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isGrandSireSelected = false;
                                        isDamSireSelected = false;
                                        isSireSelected = false;
                                        isDamSelected = true;
                                        is2ndDamSelected = false;
                                        isGrandDam = false;
                                      });
                                      //todo
                                    },
                                  ),
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
                  height: medPadH,
                ),
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 50,
                  ),
                ),
                SizedBox(
                  height: medPadH,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: medPadH * 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 70,
                        child: Card(
                          child: Center(
                            child: Text(
                              "Farm",
                              style: boxSemiLightTextStyle,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Radio(
                            value: 1,
                            groupValue: gValue,
                            onChanged: (value) {
                              setState(() {
                                gValue = value;
                              });
                            },
                          ),
                          Text(
                            "Same",
                            style: subTextStyleBold,
                          ),
                          SizedBox(
                            width: smallpad,
                          ),
                          Radio(
                            value: 2,
                            groupValue: gValue,
                            onChanged: (value) {
                              setState(() {
                                gValue = value;
                              });
                            },
                          ),
                          Text(
                            "External",
                            style: subTextStyleBold,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: medPadH,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: medPadH * 2),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 70,
                        child: Card(
                          child: Center(
                            child: Text(
                              "Tag Id",
                              style: boxSemiLightTextStyle,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: medPad,
                      ),
                      Container(
                        width: SizeConfig.screenWidth * .53,
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.only(left: smallpad),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "Enter Tag Id",
                                hoverColor: Colors.white30,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
