import 'package:equatable/equatable.dart';

class SubscriptionChef extends Equatable {
  final int id;
  final String name;
  final String profilePicture;
  final String location;

  const SubscriptionChef({
    required this.id,
    required this.name,
    required this.profilePicture,
    required this.location,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        profilePicture,
    location,
      ];
}
