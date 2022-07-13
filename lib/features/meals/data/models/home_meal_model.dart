import 'package:beitouti_users/features/meals/domain/entities/home_meal.dart';
import 'package:json_annotation/json_annotation.dart';
import 'home_chef_model.dart';

part 'home_meal_model.g.dart';

@JsonSerializable()
class HomeMealModel extends HomeMeal {
  static const String className = 'HomeMealModel';
  static const String paginateName = 'PaginateResponseModel<HomeMealModel>';

  @JsonKey(name: 'rates_count')
  final int ratesCount;

  @JsonKey(name: 'discount_percentage')
  final int? discountPercentage;

  @JsonKey(name: 'price_after_discount')
  final int? priceAfterDiscount;

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
    required this.priceAfterDiscount,
    required this.ratesCount,
  }) : super(
          priceAfterDiscount: priceAfterDiscount,
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
