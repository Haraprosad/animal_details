import 'package:animal_details/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: ExtendedNavigator<Router>(
        router: Router(),
      ),
//      home: MyAnimals(),
    );
  }
}
