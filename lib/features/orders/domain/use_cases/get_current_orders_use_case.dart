// import 'package:beitouti_users/features/meal/domain/repositories/meal_repository.dart';
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:injectable/injectable.dart';
// import '../../../../core/error/failures.dart';
// import '../../../../core/usecase/usecase.dart';
// import '../entities/meal.dart';
//
// @lazySingleton
// class AddMealToCartUseCase
//     implements UseCase<void, ParamsAddMealToCartUseCase> {
//   final MealRepository _repository;
//
//   AddMealToCartUseCase(this._repository);
//
//   @override
//   Future<Either<Failure, void>> call(ParamsAddMealToCartUseCase params) async {
//     return await _repository.addMealToCart(
//       notes: params.notes,
//       meal: params.meal,
//       quantity: params.quantity,
//     );
//   }
// }
//
// class ParamsAddMealToCartUseCase extends Equatable {
//   final Meal meal;
//   final String notes;
//   final int quantity;
//
//   const ParamsAddMealToCartUseCase({
//     required this.meal,
//     required this.notes,
//     required this.quantity,
//   });
//
//   @override
//   List<Object?> get props => [meal];
// }
