import 'package:beitouti_users/features/chef_menu/domain/entities/chef_category.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chef_category_model.g.dart';

@JsonSerializable()
class ChefCategoryModel extends ChefCategory {
  static const String className = 'ChefCategoryModel';


  const ChefCategoryModel(int id, String name) : super(id, name);


  factory ChefCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ChefCategoryModelFromJson(json);
}