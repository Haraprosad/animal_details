// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:animal_details/my_animals/my_animals.dart';
import 'package:animal_details/animal_profile/animal_profile.dart';
import 'package:animal_details/family_details/family_details.dart';
import 'package:animal_details/miking_details/miking_details.dart';
import 'package:animal_details/pregnency_details/pregnency_details.dart';

abstract class Routes {
  static const myAnimals = '/';
  static const animalProfile = '/animal-profile';
  static const familyDetails = '/family-details';
  static const mikingDetails = '/miking-details';
  static const pregnencyDetails = '/pregnency-details';
  static const all = {
    myAnimals,
    animalProfile,
    familyDetails,
    mikingDetails,
    pregnencyDetails,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.myAnimals:
        return MaterialPageRoute<dynamic>(
          builder: (context) => MyAnimals(),
          settings: settings,
        );
      case Routes.animalProfile:
        return MaterialPageRoute<dynamic>(
          builder: (context) => AnimalProfile(),
          settings: settings,
        );
      case Routes.familyDetails:
        return MaterialPageRoute<dynamic>(
          builder: (context) => FamilyDetails(),
          settings: settings,
        );
      case Routes.mikingDetails:
        return MaterialPageRoute<dynamic>(
          builder: (context) => MikingDetails(),
          settings: settings,
        );
      case Routes.pregnencyDetails:
        return MaterialPageRoute<dynamic>(
          builder: (context) => PregnencyDetails(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
