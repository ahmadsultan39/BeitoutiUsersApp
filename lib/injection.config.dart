// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import 'features/chefs/data/data_sources/local/chefs_local_data_source.dart'
    as _i7;
import 'features/chefs/data/data_sources/local/chefs_local_data_source_imp.dart'
    as _i8;
import 'features/chefs/data/data_sources/remote/chefs_remote_data_source.dart'
    as _i3;
import 'features/chefs/data/data_sources/remote/chefs_remote_data_source_imp.dart'
    as _i4;
import 'features/chefs/data/repositories/chefs_repository_imp.dart' as _i10;
import 'features/chefs/domain/repositories/chefs_repository.dart' as _i9;
import 'features/chefs/domain/use_cases/get_most_recent.dart' as _i11;
import 'features/chefs/domain/use_cases/get_nearest.dart' as _i12;
import 'features/chefs/domain/use_cases/get_top_orders.dart' as _i13;
import 'features/chefs/domain/use_cases/get_top_rated.dart' as _i14;
import 'injection.dart' as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.ChefsRemoteDataSource>(
      () => _i4.ShowMenuRemoteDataSourceImp(dio: get<_i5.Dio>()));
  await gh.factoryAsync<_i6.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i7.ChefsLocalDataSource>(() =>
      _i8.ShowMenuLocalDataSourceImp(
          sharedPreferences: get<_i6.SharedPreferences>()));
  gh.lazySingleton<_i9.ChefsRepository>(() => _i10.ChefsRepositoryImp(
      get<_i3.ChefsRemoteDataSource>(), get<_i7.ChefsLocalDataSource>(),
      networkInfo: get<dynamic>()));
  gh.lazySingleton<_i11.GetMostRecentChefsUseCase>(
      () => _i11.GetMostRecentChefsUseCase(get<_i9.ChefsRepository>()));
  gh.lazySingleton<_i12.GetNearestChefsUseCase>(
      () => _i12.GetNearestChefsUseCase(get<_i9.ChefsRepository>()));
  gh.lazySingleton<_i13.GetTopOrdersChefsUseCase>(
      () => _i13.GetTopOrdersChefsUseCase(get<_i9.ChefsRepository>()));
  gh.lazySingleton<_i14.GetTopRatedChefsUseCase>(
      () => _i14.GetTopRatedChefsUseCase(get<_i9.ChefsRepository>()));
  return get;
}

class _$RegisterModule extends _i15.RegisterModule {}
