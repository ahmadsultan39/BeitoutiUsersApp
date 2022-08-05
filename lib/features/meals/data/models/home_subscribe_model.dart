import 'package:beitouti_users/features/meals/data/models/home_chef_model.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_subscribe.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_subscribe_model.g.dart';

@JsonSerializable()
class HomeSubscribeModel extends HomeSubscribe {

  static const String className = 'HomeSubscribeModel';
  static const String paginateName = 'PaginateResponseModel<HomeSubscribeModel>';


  @JsonKey(name: 'chef_id')
  final int chefId;

  @JsonKey(name: 'days_number')
  final int daysNumber;

  @JsonKey(name: 'total_cost')
  final double totalCost;


  @JsonKey(name: 'is_available')
  final bool isAvailable;

  @JsonKey(name: 'starts_at')
  final String startsAt;

  final HomeChefModel chef;

  const HomeSubscribeModel({
    required int id,
    required String name,
    required this.isAvailable,
    required this.chef,
    required this.chefId,
    required this.daysNumber,
    required this.totalCost,
    required this.startsAt,
  }) : super(
          id: id,
          chefId: chefId,
          name: name,
          daysNumber: daysNumber,
          isAvailable: isAvailable,
          startsAt: startsAt,
          totalCost: totalCost,
          chef: chef,
        );

  factory HomeSubscribeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeSubscribeModelFromJson(json);
}
