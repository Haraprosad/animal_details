import 'package:animal_details/routes/routes.gr.dart';
import 'package:animal_details/shared/colors.dart';
import 'package:animal_details/shared/constants.dart';
import 'package:animal_details/shared/size_config.dart';
import 'package:animal_details/shared/text_styles.dart';
import 'package:animal_details/shared_widgets/app_bar_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyAnimals extends StatefulWidget {
  @override
  _MyAnimalsState createState() => _MyAnimalsState();
}

class _MyAnimalsState extends State<MyAnimals> {
  //***********todo: this have to be dynamic
  //*************************
  bool isCowSelected = false;
  bool isBuffaloSelected = false;
  List<CowCard> cardInfo = [
    CowCard(
        imageUrl: cowImageUrl,
        nameId: "Vishakha-1322",
        age: "26 months",
        conditions: ["Pregnent"]),
    CowCard(
        imageUrl: cowImageUrl,
        nameId: "Vishakha-1322",
        age: "26 months",
        conditions: ["Pregnent", "Dry"]),
    CowCard(
        imageUrl: cowImageUrl,
        nameId: "Vishakha-1322",
        age: "26 months",
        conditions: ["Pregnent"]),
  ];
  //*********************************
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              //todo
              ExtendedNavigator.of(context).pushNamed(Routes.animalProfile);
            },
            backgroundColor: boxColor,
            child: Icon(
              Icons.add,
              color: backgroundColor,
            ),
          ),
          SizedBox(height: smallpad),
          Text(
            "New Animal",
            style: subTextStyle,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: backgroundColor,
      appBar: AppBarWidget.getAppBarWidget("My Animals"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: medPadH,
            ),
            searchWidget(),
            SizedBox(
              height: medPadH,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  //1st row*****************8
                  Row(
                    children: [
                      //for cow
                      ButtonTheme(
                        child: RaisedButton(
                          color: backgroundColor,
                          child: isCowSelected
                              ? Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Cow",
                                      style: btnTextStyleColor,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: boxColor,
                                    ),
                                  ],
                                )
                              : Text(
                                  "Cow",
                                  style: buttonTextInactive,
                                ),
                          onPressed: () {
                            setState(() {
                              isCowSelected = !isCowSelected;
                              //todo
                            });
                            //todo
                          },
                        ),
                        minWidth: 100,
                      ),
                      SizedBox(
                        width: smallpad,
                      ),
                      //for Buffallo
                      ButtonTheme(
                        child: RaisedButton(
                          color: backgroundColor,
                          child: isBuffaloSelected
                              ? Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Buffalo",
                                      style: btnTextStyleColor,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: boxColor,
                                    ),
                                  ],
                                )
                              : Text(
                                  "Buffalo",
                                  style: buttonTextInactive,
                                ),
                          onPressed: () {
                            setState(() {
                              isBuffaloSelected = !isBuffaloSelected;
                              //todo
                            });
                            //todo
                          },
                        ),
                        minWidth: 100,
                      ),
                    ],
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  //2nd row*****************8
                  Row(
                    children: [
                      //for cow
                      ButtonTheme(
                        child: RaisedButton(
                          color: backgroundColor,
                          child: isCowSelected
                              ? Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Cow",
                                      style: btnTextStyleColor,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: boxColor,
                                    ),
                                  ],
                                )
                              : Text(
                                  "Cow",
                                  style: buttonTextInactive,
                                ),
                          onPressed: () {
                            setState(() {
                              isCowSelected = !isCowSelected;
                              //todo
                            });
                            //todo
                          },
                        ),
                        minWidth: 100,
                      ),
                      SizedBox(
                        width: smallpad,
                      ),
                      //for Buffallo
                      ButtonTheme(
                        child: RaisedButton(
                          color: backgroundColor,
                          child: isBuffaloSelected
                              ? Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Buffalo",
                                      style: btnTextStyleColor,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: boxColor,
                                    ),
                                  ],
                                )
                              : Text(
                                  "Buffalo",
                                  style: buttonTextInactive,
                                ),
                          onPressed: () {
                            setState(() {
                              isBuffaloSelected = !isBuffaloSelected;
                              //todo
                            });
                            //todo
                          },
                        ),
                        minWidth: 100,
                      ),
                      //new animal
                      SizedBox(
                        width: smallpad,
                      ),
                      ButtonTheme(
                        child: RaisedButton(
                          color: backgroundColor,
                          child: isCowSelected
                              ? Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Cow",
                                      style: btnTextStyleColor,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: boxColor,
                                    ),
                                  ],
                                )
                              : Text(
                                  "Cow",
                                  style: buttonTextInactive,
                                ),
                          onPressed: () {
                            setState(() {
                              isCowSelected = !isCowSelected;
                              //todo
                            });
                            //todo
                          },
                        ),
                        minWidth: 100,
                      ),
                    ],
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  //**********************************************
                  //**************3rd Row************************
                  Row(
                    children: [
                      //for cow
                      ButtonTheme(
                        child: RaisedButton(
                          color: backgroundColor,
                          child: isCowSelected
                              ? Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Cow",
                                      style: btnTextStyleColor,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: boxColor,
                                    ),
                                  ],
                                )
                              : Text(
                                  "Cow",
                                  style: buttonTextInactive,
                                ),
                          onPressed: () {
                            setState(() {
                              isCowSelected = !isCowSelected;
                              //todo
                            });
                            //todo
                          },
                        ),
                        minWidth: 100,
                      ),
                      SizedBox(
                        width: smallpad,
                      ),
                      //for Buffallo
                      ButtonTheme(
                        child: RaisedButton(
                          color: backgroundColor,
                          child: isBuffaloSelected
                              ? Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Buffalo",
                                      style: btnTextStyleColor,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: boxColor,
                                    ),
                                  ],
                                )
                              : Text(
                                  "Buffalo",
                                  style: buttonTextInactive,
                                ),
                          onPressed: () {
                            setState(() {
                              isBuffaloSelected = !isBuffaloSelected;
                              //todo
                            });
                            //todo
                          },
                        ),
                        minWidth: 100,
                      ),
                      //new animal
                      SizedBox(
                        width: smallpad,
                      ),
                      ButtonTheme(
                        child: RaisedButton(
                          color: backgroundColor,
                          child: isCowSelected
                              ? Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Cow",
                                      style: btnTextStyleColor,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: boxColor,
                                    ),
                                  ],
                                )
                              : Text(
                                  "Cow",
                                  style: buttonTextInactive,
                                ),
                          onPressed: () {
                            setState(() {
                              isCowSelected = !isCowSelected;
                              //todo
                            });
                            //todo
                          },
                        ),
                        minWidth: 100,
                      ),
                    ],
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),

                  //***************************************
                ],
              ),
            ),
            SizedBox(
              height: medPadH,
            ),
            Container(
              height: 110.0 * cardInfo.length,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: cardInfo.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: smallpad),
                      height: 80,
                      child: Card(
                        child: ListTile(
                          contentPadding: EdgeInsets.all(0),
                          leading: Image.asset(
                            cardInfo[index].imageUrl,
                            height: 80,
                            width: 80,
                          ),
                          title: Text(
                            cardInfo[index].nameId,
                            style: nameTextStyleCard,
                          ),
                          subtitle: Text(
                            cardInfo[index].age,
                            style: buttonTextInactive,
                          ),
                          trailing: getConditions(cardInfo[index]),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  getConditions(CowCard cardInfo) {
    if (cardInfo.conditions.length > 1) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                cardInfo.conditions[0],
                style: cardChecked,
              ),
              SizedBox(
                width: smallpad,
              ),
              Icon(Icons.check_circle),
              SizedBox(
                width: smallpad,
              )
            ],
          ),
          SizedBox(
            height: smallpad,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                cardInfo.conditions[1],
                style: cardChecked,
              ),
              SizedBox(
                width: smallpad,
              ),
              Icon(Icons.check_circle),
              SizedBox(
                width: smallpad,
              ),
            ],
          ),
        ],
      );
    } else {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            cardInfo.conditions[0],
            style: cardChecked,
          ),
          SizedBox(
            width: smallpad,
          ),
          Icon(Icons.check_circle),
          SizedBox(
            width: smallpad,
          ),
        ],
      );
    }
  }

  searchWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: medPadH),
      child: Card(
        elevation: 2,
        child: TextFormField(
          onChanged: (value) {
            //todo
          },
          style: TextStyle(color: Colors.black54),
          decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white70),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: "Search Animals",

//                              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: medPad, vertical: medPad - 2)),
        ),
      ),
    );
  }
}

//Cow card class

class CowCard {
  final String imageUrl;
  final String nameId;
  final String age;
  final List<String> conditions;
  CowCard({this.imageUrl, this.nameId, this.age, this.conditions});
}
