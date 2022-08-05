import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class FavouriteMeal extends Equatable {
  final int id;

  final String name;

  @JsonKey(name: 'chef_name')
  final String chefName;

  @JsonKey(name: 'image')
  final String imageUrl;

  const FavouriteMeal({
    required this.id,
    required this.name,
    required this.chefName,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [id, name, chefName, imageUrl];
}
