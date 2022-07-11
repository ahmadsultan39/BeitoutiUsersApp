import 'package:beitouti_users/features/chefs/domain/entities/chef.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chef_model.g.dart';

@JsonSerializable()
class ChefModel extends Chef {
  static const String className = 'ChefModel';

  @JsonKey(name: "is_available")
  final bool isAvailable;
  @JsonKey(name: "profile_picture")
  final String profilePicture;
  @JsonKey(name: "chef_location")
  final String location;
  @JsonKey(name: "chef_rate")
  final double rate;
  @JsonKey(name: "chef_rate_count")
  final int rateCount;

  ChefModel(int id, String name, this.isAvailable, this.profilePicture,
      this.location, this.rate, this.rateCount)
      : super(id, name, isAvailable, profilePicture, location, rate, rateCount);

  factory ChefModel.fromJson(Map<String, dynamic> json) =>
      _$ChefModelFromJson(json);
}
