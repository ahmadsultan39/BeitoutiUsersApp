import 'package:beitouti_users/features/meal/domain/repositories/meal_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class CheckAddToCartAvailabilityUseCase
    implements UseCase<bool, ParamsCheckAddToCartAvailabilityUseCase> {
  final MealRepository _repository;

  CheckAddToCartAvailabilityUseCase(this._repository);

  @override
  Future<Either<Failure, bool>> call(
      ParamsCheckAddToCartAvailabilityUseCase params) async {
    return await _repository.checkAddToCartAvailability(
      chefId: params.chefId,
    );
  }
}

class ParamsCheckAddToCartAvailabilityUseCase extends Equatable {
  final int chefId;

  const ParamsCheckAddToCartAvailabilityUseCase({
    required this.chefId,
  });

  @override
  List<Object?> get props => [chefId];
}
