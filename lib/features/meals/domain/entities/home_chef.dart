import 'package:equatable/equatable.dart';

class HomeChef extends Equatable {
  final int id;
  final String name;
  final String? profilePicture;

  const HomeChef({
    required this.id,
    required this.name,
    required this.profilePicture,
  });

  @override
  List<Object?> get props => [id, name];
}
