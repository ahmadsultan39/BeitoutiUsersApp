import 'package:equatable/equatable.dart';

class MealCategory extends Equatable {
  final int id;
  final String name;

  const MealCategory({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id, name];
}
