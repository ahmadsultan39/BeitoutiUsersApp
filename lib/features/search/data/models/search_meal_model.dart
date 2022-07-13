import 'package:beitouti_users/features/search/data/models/search_chef_model.dart';
import 'package:beitouti_users/features/search/domain/entities/search_chef.dart';
import 'package:beitouti_users/features/search/domain/entities/search_meal.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_meal_model.g.dart';

@JsonSerializable()
class SearchMealModel extends SearchMeal {
  static const String className = 'SearchMealModel';

  factory SearchMealModel.fromJson(Map<String, dynamic> json) =>
      _$SearchMealModelFromJson(json);


  @JsonKey(name: "is_available")
  final bool isAvailable;

  @JsonKey(name: "price_with_discount")
  final int? priceWithDiscount;

  @JsonKey(name: "price_without_discount")
  final int priceWithoutDiscount;

  @JsonKey(name: "rates_count")
  final int ratesCount;

  final SearchChefModel chef;

  const SearchMealModel(this.isAvailable, this.priceWithDiscount,
      this.priceWithoutDiscount, this.ratesCount, this.chef,
      {required int id,
      required String image,
      required String name,
      required double? rating,})
      : super(
            id: id,
            image: image,
            name: name,
            priceWithDiscount: priceWithDiscount,
            priceWithoutDiscount: priceWithoutDiscount,
            isAvailable: isAvailable,
            rating: rating,
            ratesCount: ratesCount,
            chef: chef);
}
