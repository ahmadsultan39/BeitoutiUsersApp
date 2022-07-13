import 'package:beitouti_users/core/entities/order.dart';
import 'package:beitouti_users/features/order/domain/repositories/order_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class ReportOrderUseCase implements UseCase<void, ParamsReportOrderUseCase> {
  final OrderRepository _repository;

  ReportOrderUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(
    ParamsReportOrderUseCase params,
  ) async {
    return await _repository.reportOrder(
      orderId: params.orderId,
      reportedOn: params.reportedOn,
      reason: params.reason,
    );
  }
}

class ParamsReportOrderUseCase extends Equatable {
  final String reason;
  final String reportedOn;
  final int orderId;

  const ParamsReportOrderUseCase({
    required this.orderId,
    required this.reason,
    required this.reportedOn,
  });

  @override
  List<Object?> get props => [reason, reportedOn, orderId];
}
