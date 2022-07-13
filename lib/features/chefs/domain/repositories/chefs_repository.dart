import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/chef.dart';

abstract class ChefsRepository{

  Future<Either<Failure,List<Chef> >> getNearest();
  Future<Either<Failure,List<Chef> >> getTopRated();
  Future<Either<Failure,List<Chef> >> getTopOrders();
  Future<Either<Failure,List<Chef> >> getMostRecent();
}