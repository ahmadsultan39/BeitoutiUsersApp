// import 'package:beitouti_users/features/chef_menu/domain/entities/subscription_meal.dart';
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:injectable/injectable.dart';
//
// import '../../../../core/error/failures.dart';
// import '../../../../core/usecase/usecase.dart';
// import '../repositories/chef_menu_repository.dart';
//
// @lazySingleton
// class GetSubscriptionMealsUseCase
//     implements UseCase<List<SubscriptionMeal>, ParamsGetSubscriptionMealsUseCase> {
//   final ChefMenuRepository _repository;
//
//   GetSubscriptionMealsUseCase(this._repository);
//
//   @override
//   Future<Either<Failure, List<SubscriptionMeal>>> call(ParamsGetSubscriptionMealsUseCase params) {
//     return _repository.getSubscriptionMeals(
//       id: params.id,
//     );
//   }
// }
//
// class ParamsGetSubscriptionMealsUseCase extends Equatable {
//   final int id;
//
//   const ParamsGetSubscriptionMealsUseCase({
//     required this.id,
//   });
//
//   @override
//   List<Object?> get props => [id];
// }