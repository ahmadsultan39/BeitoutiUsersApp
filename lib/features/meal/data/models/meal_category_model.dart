import 'package:beitouti_users/features/meal/domain/entities/meal_category.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meal_category_model.g.dart';

@JsonSerializable()
class MealCategoryModel extends MealCategory {
  const MealCategoryModel({
    required int id,
    required String name,
  }) : super(
          id: id,
          name: name,
        );

  factory MealCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$MealCategoryModelFromJson(json);
}
