import 'package:equatable/equatable.dart';

class Profile extends Equatable {
  final String name;
  final String email;
  final String phoneNumber;
  final String userCampusCardExpiryDate;

  const Profile({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.userCampusCardExpiryDate,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        phoneNumber,
        userCampusCardExpiryDate,
      ];
}
