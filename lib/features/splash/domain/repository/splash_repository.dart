import 'package:beitouti_users/core/data/base_repository.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class SplashRepository extends BaseRepository {
  Future<Either<Failure, bool>> checkAuth();
}
