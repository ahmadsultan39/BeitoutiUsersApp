import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/home_chef.dart';

part 'home_chef_model.g.dart';

@JsonSerializable()
class HomeChefModel extends HomeChef {
  static const String className = 'HomeChefModel';

  @JsonKey(name: 'profile_picture')
  final String? profilePicture;

  const HomeChefModel({
    required int id,
    required String name,
    required this.profilePicture,
  }) : super(id: id, name: name, profilePicture: profilePicture);

  factory HomeChefModel.fromJson(Map<String, dynamic> json) =>
      _$HomeChefModelFromJson(json);
}
