// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import 'features/auth/data/data_source/local/auth_local_data_source.dart'
    as _i7;
import 'features/auth/data/data_source/local/auth_local_data_source_imp.dart'
    as _i8;
import 'features/auth/data/data_source/remote/auth_remote_data_source.dart'
    as _i9;
import 'features/auth/data/data_source/remote/auth_remote_data_source_imp.dart'
    as _i10;
import 'features/auth/data/repository/auth_repository_imp.dart' as _i12;
import 'features/auth/domain/repository/auth_repository.dart' as _i11;
import 'features/auth/domain/use_cases/check_code_use_case.dart' as _i13;
import 'features/auth/domain/use_cases/request_register_use_case.dart' as _i18;
import 'features/auth/domain/use_cases/send_code_use_case.dart' as _i19;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i20;
import 'features/meals/data/data_sources/local/meals_local_data_source.dart'
    as _i14;
import 'features/meals/data/data_sources/local/meals_local_data_source_imp.dart'
    as _i15;
import 'features/meals/data/data_sources/remote/meals_remote_data_source.dart'
    as _i4;
import 'features/meals/data/data_sources/remote/meals_remote_data_source_imp.dart'
    as _i5;
import 'features/meals/data/repositories/meals_repository_imp.dart' as _i17;
import 'features/meals/domain/repositories/meals_repository.dart' as _i16;
import 'features/meals/domain/use_cases/get_offered_meals_use_case.dart'
    as _i21;
import 'features/meals/domain/use_cases/get_recent_meals_use_case.dart' as _i22;
import 'features/meals/domain/use_cases/get_top_ordered_meals_use_case.dart'
    as _i23;
import 'features/meals/domain/use_cases/get_top_rated_meals_use_case.dart'
    as _i24;
import 'features/meals/domain/use_cases/get_top_subscriptions_meals_use_case.dart'
    as _i25;
import 'features/meals/presentation/bloc/meals_bloc.dart' as _i26;
import 'injection.dart' as _i27; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.MealsRemoteDataSource>(
      () => _i5.MealsRemoteDataSourceImp(dio: get<_i3.Dio>()));
  await gh.factoryAsync<_i6.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i7.AuthLocalDataSource>(() => _i8.AuthLocalDataSourceImp(
      sharedPreferences: get<_i6.SharedPreferences>()));
  gh.lazySingleton<_i9.AuthRemoteDataSource>(
      () => _i10.AuthRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i11.AuthRepository>(() => _i12.AuthRepositoryImp(
      get<_i7.AuthLocalDataSource>(), get<_i9.AuthRemoteDataSource>()));
  gh.lazySingleton<_i13.CheckCodeUseCase>(
      () => _i13.CheckCodeUseCase(get<_i11.AuthRepository>()));
  gh.lazySingleton<_i14.MealsLocalDataSource>(() =>
      _i15.MealsLocalDataSourceImp(
          sharedPreferences: get<_i6.SharedPreferences>()));
  gh.lazySingleton<_i16.MealsRepository>(() => _i17.MealsRepositoryImp(
      get<_i14.MealsLocalDataSource>(), get<_i4.MealsRemoteDataSource>()));
  gh.lazySingleton<_i18.RequestRegisterUseCase>(
      () => _i18.RequestRegisterUseCase(get<_i11.AuthRepository>()));
  gh.lazySingleton<_i19.SendCodeUseCase>(
      () => _i19.SendCodeUseCase(get<_i11.AuthRepository>()));
  gh.factory<_i20.AuthBloc>(() => _i20.AuthBloc(get<_i13.CheckCodeUseCase>(),
      get<_i18.RequestRegisterUseCase>(), get<_i19.SendCodeUseCase>()));
  gh.lazySingleton<_i21.GetOfferedMealsUseCase>(
      () => _i21.GetOfferedMealsUseCase(get<_i16.MealsRepository>()));
  gh.lazySingleton<_i22.GetRecentMealsUseCase>(
      () => _i22.GetRecentMealsUseCase(get<_i16.MealsRepository>()));
  gh.lazySingleton<_i23.GetTopOrderedMealsUseCase>(
      () => _i23.GetTopOrderedMealsUseCase(get<_i16.MealsRepository>()));
  gh.lazySingleton<_i24.GetTopRatedMealsUseCase>(
      () => _i24.GetTopRatedMealsUseCase(get<_i16.MealsRepository>()));
  gh.lazySingleton<_i25.GetTopSubscriptionsUseCase>(
      () => _i25.GetTopSubscriptionsUseCase(get<_i16.MealsRepository>()));
  gh.factory<_i26.MealsBloc>(() => _i26.MealsBloc(
      get<_i21.GetOfferedMealsUseCase>(),
      get<_i22.GetRecentMealsUseCase>(),
      get<_i25.GetTopSubscriptionsUseCase>(),
      get<_i23.GetTopOrderedMealsUseCase>(),
      get<_i24.GetTopRatedMealsUseCase>()));
  return get;
}

class _$RegisterModule extends _i27.RegisterModule {}
