import 'package:dartz/dartz.dart';

import '../entities/chef.dart';

abstract class ChefsRepository extends BaseRepository {

  Future<Either<Failure,List<Chef> >> getNearest();
  Future<Either<Failure,List<Chef> >> getTopRated();
  Future<Either<Failure,List<Chef> >> getTopOrders();
  Future<Either<Failure,List<Chef> >> getMostRecent();
}