// import 'package:beitouti_users/core/entities/order.dart';
// import 'package:beitouti_users/features/order/domain/repositories/order_repository.dart';
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:injectable/injectable.dart';
// import '../../../../core/error/failures.dart';
// import '../../../../core/usecase/usecase.dart';
//
// @lazySingleton
// class RateOrderUseCase implements UseCase<OrderEntity, ParamsRateOrderUseCase> {
//   final OrderRepository _repository;
//
//   RateOrderUseCase(this._repository);
//
//   @override
//   Future<Either<Failure, OrderEntity>> call(
//     ParamsRateOrderUseCase params,
//   ) async {
//     return await _repository.rateOrder(
//       orderId: params.orderId,
//       rate: params.rate,
//       notes: params.notes,
//       mealId: params.mealId,
//     );
//   }
// }
//
// class ParamsRateOrderUseCase extends Equatable {
//   final int rate;
//   final int mealId;
//   final int orderId;
//   final String notes;
//
//   const ParamsRateOrderUseCase({
//     required this.orderId,
//     required this.rate,
//     required this.mealId,
//     required this.notes,
//   });
//
//   @override
//   List<Object?> get props => [orderId, rate, mealId, notes];
// }
