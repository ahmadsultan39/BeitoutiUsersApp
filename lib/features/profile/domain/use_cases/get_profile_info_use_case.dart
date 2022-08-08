import 'package:beitouti_users/features/meal/domain/repositories/meal_repository.dart';
import 'package:beitouti_users/features/profile/domain/entities/profile.dart';
import 'package:beitouti_users/features/profile/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';

@lazySingleton
class GetProfileInfoUseCase implements UseCase<Profile, NoParams> {
  final ProfileRepository _repository;

  GetProfileInfoUseCase(this._repository);

  @override
  Future<Either<Failure, Profile>> call(
    NoParams params,
  ) async {
    return await _repository.getProfileInfo();
  }
}
