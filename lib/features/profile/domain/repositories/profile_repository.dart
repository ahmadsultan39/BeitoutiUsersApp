import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/features/profile/domain/entities/profile.dart';
import 'package:dartz/dartz.dart';

abstract class ProfileRepository extends BaseRepository {
  Future<Either<Failure,Profile>> getProfileInfo();
  Future<Either<Failure,void>> logout();
}
