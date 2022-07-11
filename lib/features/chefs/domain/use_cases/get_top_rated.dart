
import 'package:beitouti_users/features/chefs/domain/entities/chef.dart';
import 'package:beitouti_users/features/chefs/domain/repositories/chefs_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class GetTopRatedChefsUseCase
    implements UseCase<List<Chef>, NoParams> {
  final ChefsRepository _repository;

  GetTopRatedChefsUseCase(this._repository);

  @override
  Future<Either<Failure,List<Chef> >> call(
      NoParams params) async {
    return await _repository.getTopRated();
  }
}