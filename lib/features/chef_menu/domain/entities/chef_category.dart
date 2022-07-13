import 'package:equatable/equatable.dart';

class ChefCategory extends Equatable {
  final int id;
  final String name;

  const ChefCategory(this.id, this.name);

  @override
  List<Object?> get props => [id,name];
}