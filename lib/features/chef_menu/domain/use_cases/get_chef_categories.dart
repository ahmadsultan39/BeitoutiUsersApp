import 'package:beitouti_users/features/chef_menu/domain/entities/chef_category.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/chef_menu_repository.dart';

@lazySingleton
class GetChefCategoriesUseCase
    implements UseCase<List<ChefCategory>, ParamsGetChefCategoriesUseCase> {
  final ChefMenuRepository _repository;

  GetChefCategoriesUseCase(this._repository);

  @override
  Future<Either<Failure, List<ChefCategory>>> call(ParamsGetChefCategoriesUseCase params) {
    return _repository.getChefCategories(
      id: params.id,
    );
  }
}

class ParamsGetChefCategoriesUseCase extends Equatable {
  final int id;

  const ParamsGetChefCategoriesUseCase({
    required this.id,
  });

  @override
  List<Object?> get props => [id];
}