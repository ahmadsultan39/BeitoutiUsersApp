import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class OrderMeal extends Equatable {
  final int id;
  final int quantity;
  final String name;
  final String image;
  final dynamic price;

  @JsonKey(name: 'user_rate')
  int? userRate;

   OrderMeal({
    required this.id,
    required this.name,
    required this.image,
    required this.quantity,
    required this.price,
    required this.userRate,
  });

  void changeUserRate(int rate){


    userRate = rate;
  }

  @override
  List<Object?> get props => [
        id,
        quantity,
        price,
        image,
        name,
        userRate,
      ];
}
