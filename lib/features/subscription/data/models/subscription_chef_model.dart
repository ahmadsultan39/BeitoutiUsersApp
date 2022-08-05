import 'package:beitouti_users/features/subscription/domain/entities/subscription_chef.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_chef_model.g.dart';

@JsonSerializable()
class SubscriptionChefModel extends SubscriptionChef {
  @JsonKey(name: 'profile_picture')
  final String profilePicture;

  const SubscriptionChefModel({
    required int id,
    required String name,
    required String location,
    required this.profilePicture,
  }) : super(
          id: id,
          name: name,
          profilePicture: profilePicture,
          location: location,
        );

  factory SubscriptionChefModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionChefModelFromJson(json);
}
