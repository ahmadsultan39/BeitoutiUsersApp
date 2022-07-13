import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:beitouti_users/features/cart/domain/repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class DeleteCartItemUseCase
    implements UseCase<void, ParamsDeleteCartItemUseCase> {
  final CartRepository _repository;

  DeleteCartItemUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(ParamsDeleteCartItemUseCase params) async {
    return await _repository.deleteCartItem(params.id);
  }
}

class ParamsDeleteCartItemUseCase extends Equatable {
  final int id;

  const ParamsDeleteCartItemUseCase({required this.id});

  @override
  List<Object?> get props => [id];
}
