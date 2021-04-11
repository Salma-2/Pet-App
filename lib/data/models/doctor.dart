import 'package:pet_app/data/models/user.dart';

class Doctor extends User {
  final int yearsOfExperience;

  Doctor(String name, String imageUrl, this.yearsOfExperience) : super(name, imageUrl);
}
