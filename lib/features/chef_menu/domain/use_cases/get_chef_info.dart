import 'package:beitouti_users/features/chef_menu/domain/entities/chef_info.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/chef_menu_repository.dart';

@lazySingleton
class GetChefInfoUseCase
    implements UseCase<ChefInfo, ParamsGetChefInfoUseCase> {
  final ChefMenuRepository _repository;

  GetChefInfoUseCase(this._repository);

  @override
  Future<Either<Failure, ChefInfo>> call(ParamsGetChefInfoUseCase params) {
    return _repository.getChefInfo(
      id: params.id,
    );
  }
}

class ParamsGetChefInfoUseCase extends Equatable {
  final int id;

  const ParamsGetChefInfoUseCase({
    required this.id,
  });

  @override
  List<Object?> get props => [id];
}
