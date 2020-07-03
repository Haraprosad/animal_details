import 'package:animal_details/animal_profile/animal_profile.dart';
import 'package:animal_details/family_details/family_details.dart';
import 'package:animal_details/miking_details/miking_details.dart';
import 'package:animal_details/my_animals/my_animals.dart';
import 'package:animal_details/pregnency_details/pregnency_details.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter() //CustomAutoRoute(..config)
class $Router {
  @initial
  MyAnimals myAnimals;
  AnimalProfile animalProfile;
  FamilyDetails familyDetails;
  MikingDetails mikingDetails;
  PregnencyDetails pregnencyDetails;
}
