import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/favourite_meal.dart';

part 'favourite_meal_model.g.dart';

@JsonSerializable()
class FavouriteMealModel extends FavouriteMeal {
  static const String className = 'FavouriteMealModel';

  const FavouriteMealModel({
    required int id,
    required String name,
    required String chefName,
    required String imageUrl,
  }) : super(
          id: id,
          name: name,
          chefName: chefName,
          imageUrl: imageUrl,
        );

  factory FavouriteMealModel.fromJson(Map<String, dynamic> json) =>
      _$FavouriteMealModelFromJson(json);
}
