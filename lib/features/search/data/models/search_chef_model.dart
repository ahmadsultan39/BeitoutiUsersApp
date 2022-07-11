import 'package:beitouti_users/features/search/domain/entities/search_chef.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_chef_model.g.dart';

@JsonSerializable()
class SearchChefModel extends SearchChef {
  static const String className = 'SearchChefModel';

  factory SearchChefModel.fromJson(Map<String, dynamic> json) =>
      _$SearchChefModelFromJson(json);

  @JsonKey(name: "is_available")
  final bool? isAvailable;

  @JsonKey(name: "profile_picture")
  final String? image;

  @JsonKey(name: "rates_count")
  final int? ratesCount;

  const SearchChefModel(int id, String name, double? rating, this.isAvailable,
      this.image, this.ratesCount)
      : super(id, name, isAvailable, image, rating, ratesCount);
}
