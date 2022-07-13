import 'package:equatable/equatable.dart';

class CartMeal extends Equatable {
  final int id;
  final int quantity;
  final String notes;

  const CartMeal({
    required this.id,
    required this.quantity,
    required this.notes,
  });

  @override
  List<Object?> get props => [id, quantity, notes];
}
