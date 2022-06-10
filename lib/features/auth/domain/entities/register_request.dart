import 'package:equatable/equatable.dart';
import '../../../../core/util/enums.dart';

class RegisterRequest extends Equatable {
  final String name;
  final String email;
  final String phoneNumber;
  final String studySpeciality;
  final String nationalId;
  final String studyYear;
  final String campusCardId;
  final String campusCardExpiryDate;
  final String campusUnitNumber;
  final String birthDate;
  final StudentLocation location;
  final Gender gender;

  const RegisterRequest({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.birthDate,
    required this.studySpeciality,
    required this.nationalId,
    required this.studyYear,
    required this.campusCardId,
    required this.campusCardExpiryDate,
    required this.location,
    required this.gender,
    required this.campusUnitNumber,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        phoneNumber,
        birthDate,
        studySpeciality,
        nationalId,
        studyYear,
        campusUnitNumber,
        campusCardExpiryDate,
        campusCardId,
        location,
        gender,
      ];
}
