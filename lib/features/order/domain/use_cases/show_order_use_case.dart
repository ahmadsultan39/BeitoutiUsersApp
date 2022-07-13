// import 'package:beitouti_users/core/entities/order.dart';
// import 'package:beitouti_users/features/orders/domain/repositories/orders_repository.dart';
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:injectable/injectable.dart';
// import '../../../../core/error/failures.dart';
// import '../../../../core/usecase/usecase.dart';
//
// @lazySingleton
// class ShowOrderUseCase implements UseCase<OrderEntity, ParamsShowOrderUseCase> {
//   final OrdersRepository _repository;
//
//   ShowOrderUseCase(this._repository);
//
//   @override
//   Future<Either<Failure, OrderEntity>> call(ParamsShowOrderUseCase params) async {
//     return await _repository.showOrder(orderId: params.orderId);
//   }
// }
//
// class ParamsShowOrderUseCase extends Equatable {
//   final int orderId;
//
//   const ParamsShowOrderUseCase({
//     required this.orderId,
//   });
//
//   @override
//   List<Object?> get props => [orderId];
// }
