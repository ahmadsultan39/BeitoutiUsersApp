import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/user.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends User {
  static const String className = 'UserModel';


  @JsonKey(name: 'access_token')
  final String accessToken;

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @JsonKey(name: 'campus_card_expiry_date')
  final String campusCardExpiryDate;

  const UserModel({
    required int id,
    required String name,
    required String email,
    required this.accessToken,
    required this.phoneNumber,
    required this.campusCardExpiryDate,
  }) : super(
          id: id,
          name: name,
          email: email,
          accessToken: accessToken,
          phoneNumber: phoneNumber,
          campusCardExpiryDate: campusCardExpiryDate,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
