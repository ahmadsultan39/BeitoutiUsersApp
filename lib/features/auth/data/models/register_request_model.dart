import 'package:beitouti_users/features/auth/domain/entities/register_request.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/util/enums.dart';

part 'register_request_model.g.dart';

@JsonSerializable()
class RegisterRequestModel extends RegisterRequest {
  static String className = "RegisterRequestModel";

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @JsonKey(name: 'study_speciality')
  final String studySpeciality;

  @JsonKey(name: 'national_id')
  final String nationalId;

  @JsonKey(name: 'study_year')
  final String studyYear;

  @JsonKey(name: 'campus_card_id')
  final String campusCardId;

  @JsonKey(name: 'campus_card_expiry_date')
  final String campusCardExpiryDate;

  @JsonKey(name: 'campus_unit_number')
  final String campusUnitNumber;

  @JsonKey(name: 'birth_date')
  final String birthDate;

  RegisterRequestModel({
    required String name,
    required String email,
    required int location,
    required int gender,
    required this.phoneNumber,
    required this.studySpeciality,
    required this.nationalId,
    required this.studyYear,
    required this.campusCardId,
    required this.campusCardExpiryDate,
    required this.campusUnitNumber,
    required this.birthDate,
  }) : super(
          name: name,
          email: email,
          phoneNumber: phoneNumber,
          birthDate: birthDate,
          studySpeciality: studySpeciality,
          studyYear: studyYear,
          nationalId: nationalId,
          campusCardExpiryDate: campusCardExpiryDate,
          campusCardId: campusCardId,
          campusUnitNumber: campusUnitNumber,
          location: StudentLocation.values[location],
          gender: Gender.values[gender],
        );

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestModelToJson(this);
}
