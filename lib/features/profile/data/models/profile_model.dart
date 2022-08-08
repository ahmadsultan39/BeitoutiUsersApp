import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/profile.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel extends Profile {
  static const String className = 'ProfileModel';

  const ProfileModel({
    required String name,
    required String email,
    required String phoneNumber,
    required String userCampusCardExpiryDate,
  }) : super(
          name: name,
          email: email,
          phoneNumber: phoneNumber,
          userCampusCardExpiryDate: userCampusCardExpiryDate,
        );

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
