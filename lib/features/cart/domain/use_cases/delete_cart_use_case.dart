import 'package:beitouti_users/core/models/cart_item_model.dart';
import 'package:beitouti_users/features/cart/domain/repositories/cart_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class DeleteCartUseCase implements UseCase<void, NoParams> {
  final CartRepository _repository;

  DeleteCartUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return await _repository.deleteCart();
  }
}
