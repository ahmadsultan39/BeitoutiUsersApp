// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestModel _$RegisterRequestModelFromJson(
        Map<String, dynamic> json) =>
    RegisterRequestModel(
      name: json['name'] as String,
      email: json['email'] as String,
      location: json['location'] as int,
      gender: json['gender'] as int,
      phoneNumber: json['phone_number'] as String,
      studySpeciality: json['study_speciality'] as String,
      nationalId: json['national_id'] as String,
      studyYear: json['study_year'] as String,
      campusCardId: json['campus_card_id'] as String,
      campusCardExpiryDate: json['campus_card_expiry_date'] as String,
      campusUnitNumber: json['campus_unit_number'] as String,
      birthDate: json['birth_date'] as String,
    );

Map<String, dynamic> _$RegisterRequestModelToJson(
        RegisterRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'location': _$StudentLocationEnumMap[instance.location],
      'gender': _$GenderEnumMap[instance.gender],
      'phone_number': instance.phoneNumber,
      'study_speciality': instance.studySpeciality,
      'national_id': instance.nationalId,
      'study_year': instance.studyYear,
      'campus_card_id': instance.campusCardId,
      'campus_card_expiry_date': instance.campusCardExpiryDate,
      'campus_unit_number': instance.campusUnitNumber,
      'birth_date': instance.birthDate,
    };

const _$StudentLocationEnumMap = {
  StudentLocation.mazzeh: 'mazzeh',
  StudentLocation.hamak: 'hamak',
  StudentLocation.barzeh: 'barzeh',
};

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};
