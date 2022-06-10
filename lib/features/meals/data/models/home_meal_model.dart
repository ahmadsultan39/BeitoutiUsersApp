import 'package:beitouti_users/features/meals/domain/entities/home_meal.dart';
import 'package:json_annotation/json_annotation.dart';
import 'home_chef_model.dart';

part 'home_meal_model.g.dart';

@JsonSerializable()
class HomeMealModel extends HomeMeal {

  static const String className = 'HomeMealModel';

  @JsonKey(name: 'rates_count')
  final int ratesCount;

  @JsonKey(name: 'discount_percentage')
  final int? discountPercentage;

  @JsonKey(name: 'is_available')
  final bool isAvailable;

  final HomeChefModel chef;


  const HomeMealModel({
    required int id,
    required String name,
    required String image,
    required int price,
    required double? rating,
    required this.chef,
    required this.isAvailable,
    required this.discountPercentage,
    required this.ratesCount,
  }) : super(
          image: image,
          id: id,
          name: name,
          price: price,
          isAvailable: isAvailable,
          discountPercentage: discountPercentage,
          rating: rating,
          ratesCount: ratesCount,
          chef: chef,
        );

  factory HomeMealModel.fromJson(Map<String, dynamic> json) =>
      _$HomeMealModelFromJson(json);
}
