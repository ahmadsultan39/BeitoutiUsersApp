import 'package:equatable/equatable.dart';

class Chef extends Equatable {
  final int id;
  final String name;
  final bool isAvailable;
  final String? profilePicture;
  final String location;
  final double? rate;
  final int rateCount;

  const Chef(
    this.id,
    this.name,
    this.isAvailable,
    this.profilePicture,
    this.location,
    this.rate,
    this.rateCount,
  );

  @override
  List<Object?> get props => [
        id,
        name,
        isAvailable,
        profilePicture,
        location,
        rate,
        rateCount,
      ];
}
