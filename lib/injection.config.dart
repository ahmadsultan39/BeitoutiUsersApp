// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import 'features/auth/data/data_source/local/auth_local_data_source.dart'
    as _i12;
import 'features/auth/data/data_source/local/auth_local_data_source_imp.dart'
    as _i13;
import 'features/auth/data/data_source/remote/auth_remote_data_source.dart'
    as _i14;
import 'features/auth/data/data_source/remote/auth_remote_data_source_imp.dart'
    as _i15;
import 'features/auth/data/repository/auth_repository_imp.dart' as _i17;
import 'features/auth/domain/repository/auth_repository.dart' as _i16;
import 'features/auth/domain/use_cases/check_code_use_case.dart' as _i18;
import 'features/auth/domain/use_cases/request_register_use_case.dart' as _i43;
import 'features/auth/domain/use_cases/send_code_use_case.dart' as _i48;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i49;
import 'features/chef_menu/data/data_sources/local/chef_menu_local_data_source.dart'
    as _i19;
import 'features/chef_menu/data/data_sources/local/chef_menu_local_data_source_imp.dart'
    as _i20;
import 'features/chef_menu/data/data_sources/remote/chef_menu_remote_data_source.dart'
    as _i21;
import 'features/chef_menu/data/data_sources/remote/chef_menu_remote_data_source_imp.dart'
    as _i22;
import 'features/chef_menu/data/repositories/chef_menu_repository_imp.dart'
    as _i24;
import 'features/chef_menu/domain/repositories/chef_menu_repository.dart'
    as _i23;
import 'features/chef_menu/domain/use_cases/get_chef_categories.dart' as _i31;
import 'features/chef_menu/domain/use_cases/get_chef_category_meals.dart'
    as _i32;
import 'features/chef_menu/domain/use_cases/get_chef_info.dart' as _i33;
import 'features/chef_menu/domain/use_cases/get_chef_subscriptions.dart'
    as _i34;
import 'features/chef_menu/presentation/bloc/chef_menu_bloc.dart' as _i50;
import 'features/chefs/data/data_sources/local/chefs_local_data_source.dart'
    as _i25;
import 'features/chefs/data/data_sources/local/chefs_local_data_source_imp.dart'
    as _i26;
import 'features/chefs/data/data_sources/remote/chefs_remote_data_source.dart'
    as _i27;
import 'features/chefs/data/data_sources/remote/chefs_remote_data_source_imp.dart'
    as _i28;
import 'features/chefs/data/repositories/chefs_repository_imp.dart' as _i30;
import 'features/chefs/domain/repositories/chefs_repository.dart' as _i29;
import 'features/chefs/domain/use_cases/get_most_recent.dart' as _i35;
import 'features/chefs/domain/use_cases/get_nearest.dart' as _i36;
import 'features/chefs/domain/use_cases/get_top_orders.dart' as _i37;
import 'features/chefs/domain/use_cases/get_top_rated.dart' as _i38;
import 'features/chefs/presentation/bloc/chefs_bloc.dart' as _i51;
import 'features/meals/data/data_sources/local/meals_local_data_source.dart'
    as _i39;
import 'features/meals/data/data_sources/local/meals_local_data_source_imp.dart'
    as _i40;
import 'features/meals/data/data_sources/remote/meals_remote_data_source.dart'
    as _i4;
import 'features/meals/data/data_sources/remote/meals_remote_data_source_imp.dart'
    as _i5;
import 'features/meals/data/repositories/meals_repository_imp.dart' as _i42;
import 'features/meals/domain/repositories/meals_repository.dart' as _i41;
import 'features/meals/domain/use_cases/get_offered_meals_use_case.dart'
    as _i52;
import 'features/meals/domain/use_cases/get_recent_meals_use_case.dart' as _i53;
import 'features/meals/domain/use_cases/get_top_ordered_meals_use_case.dart'
    as _i54;
import 'features/meals/domain/use_cases/get_top_rated_meals_use_case.dart'
    as _i55;
import 'features/meals/domain/use_cases/get_top_subscriptions_meals_use_case.dart'
    as _i56;
import 'features/meals/presentation/bloc/meals_bloc.dart' as _i57;
import 'features/search/data/data_sources/local/search_local_data_source.dart'
    as _i45;
import 'features/search/data/data_sources/local/search_local_data_source_imp.dart'
    as _i46;
import 'features/search/data/data_sources/remote/search_remote_data_source.dart'
    as _i6;
import 'features/search/data/data_sources/remote/search_remote_data_source_imp.dart'
    as _i7;
import 'features/search/data/repositories/search_repository_imp.dart' as _i9;
import 'features/search/domain/repositories/search_repository.dart' as _i8;
import 'features/search/domain/use_cases/search_chefs.dart' as _i44;
import 'features/search/domain/use_cases/search_meals.dart' as _i47;
import 'features/search/domain/use_cases/search_subscriptions.dart' as _i10;
import 'injection.dart' as _i58; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.MealsRemoteDataSource>(
      () => _i5.MealsRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i6.SearchRemoteDataSource>(
      () => _i7.SearchRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i8.SearchRepo>(
      () => _i9.SearchRepoImp(get<dynamic>(), get<dynamic>()));
  gh.lazySingleton<_i10.SearchSubscriptionsUseCase>(
      () => _i10.SearchSubscriptionsUseCase(get<_i8.SearchRepo>()));
  await gh.factoryAsync<_i11.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i12.AuthLocalDataSource>(() => _i13.AuthLocalDataSourceImp(
      sharedPreferences: get<_i11.SharedPreferences>()));
  gh.lazySingleton<_i14.AuthRemoteDataSource>(
      () => _i15.AuthRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i16.AuthRepository>(() => _i17.AuthRepositoryImp(
      get<_i12.AuthLocalDataSource>(), get<_i14.AuthRemoteDataSource>()));
  gh.lazySingleton<_i18.CheckCodeUseCase>(
      () => _i18.CheckCodeUseCase(get<_i16.AuthRepository>()));
  gh.lazySingleton<_i19.ChefMenuLocalDataSource>(() =>
      _i20.ChefMenuLocalDataSourceImp(
          sharedPreferences: get<_i11.SharedPreferences>()));
  gh.lazySingleton<_i21.ChefMenuRemoteDataSource>(
      () => _i22.ChefMenuRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i23.ChefMenuRepository>(() => _i24.ChefMenuRepositoryImp(
      get<_i21.ChefMenuRemoteDataSource>(),
      get<_i19.ChefMenuLocalDataSource>()));
  gh.lazySingleton<_i25.ChefsLocalDataSource>(() =>
      _i26.ShowMenuLocalDataSourceImp(
          sharedPreferences: get<_i11.SharedPreferences>()));
  gh.lazySingleton<_i27.ChefsRemoteDataSource>(
      () => _i28.ShowMenuRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i29.ChefsRepository>(() => _i30.ChefsRepositoryImp(
      get<_i27.ChefsRemoteDataSource>(), get<_i25.ChefsLocalDataSource>()));
  gh.lazySingleton<_i31.GetChefCategoriesUseCase>(
      () => _i31.GetChefCategoriesUseCase(get<_i23.ChefMenuRepository>()));
  gh.lazySingleton<_i32.GetChefCategoryMealsUseCase>(
      () => _i32.GetChefCategoryMealsUseCase(get<_i23.ChefMenuRepository>()));
  gh.lazySingleton<_i33.GetChefInfoUseCase>(
      () => _i33.GetChefInfoUseCase(get<_i23.ChefMenuRepository>()));
  gh.lazySingleton<_i34.GetChefSubscriptionsUseCase>(
      () => _i34.GetChefSubscriptionsUseCase(get<_i23.ChefMenuRepository>()));
  gh.lazySingleton<_i35.GetMostRecentChefsUseCase>(
      () => _i35.GetMostRecentChefsUseCase(get<_i29.ChefsRepository>()));
  gh.lazySingleton<_i36.GetNearestChefsUseCase>(
      () => _i36.GetNearestChefsUseCase(get<_i29.ChefsRepository>()));
  gh.lazySingleton<_i37.GetTopOrdersChefsUseCase>(
      () => _i37.GetTopOrdersChefsUseCase(get<_i29.ChefsRepository>()));
  gh.lazySingleton<_i38.GetTopRatedChefsUseCase>(
      () => _i38.GetTopRatedChefsUseCase(get<_i29.ChefsRepository>()));
  gh.lazySingleton<_i39.MealsLocalDataSource>(() =>
      _i40.MealsLocalDataSourceImp(
          sharedPreferences: get<_i11.SharedPreferences>()));
  gh.lazySingleton<_i41.MealsRepository>(() => _i42.MealsRepositoryImp(
      get<_i39.MealsLocalDataSource>(), get<_i4.MealsRemoteDataSource>()));
  gh.lazySingleton<_i43.RequestRegisterUseCase>(
      () => _i43.RequestRegisterUseCase(get<_i16.AuthRepository>()));
  gh.lazySingleton<_i44.SearchChefsUseCase>(
      () => _i44.SearchChefsUseCase(get<_i8.SearchRepo>()));
  gh.lazySingleton<_i45.SearchLocalDataSource>(() =>
      _i46.SearchLocalDataSourceImpl(
          sharedPreferences: get<_i11.SharedPreferences>()));
  gh.lazySingleton<_i47.SearchMealsUseCase>(
      () => _i47.SearchMealsUseCase(get<_i8.SearchRepo>()));
  gh.lazySingleton<_i48.SendCodeUseCase>(
      () => _i48.SendCodeUseCase(get<_i16.AuthRepository>()));
  gh.factory<_i49.AuthBloc>(() => _i49.AuthBloc(get<_i18.CheckCodeUseCase>(),
      get<_i43.RequestRegisterUseCase>(), get<_i48.SendCodeUseCase>()));
  gh.factory<_i50.ChefMenuBloc>(() => _i50.ChefMenuBloc(
      get<_i31.GetChefCategoriesUseCase>(),
      get<_i32.GetChefCategoryMealsUseCase>(),
      get<_i33.GetChefInfoUseCase>(),
      get<_i34.GetChefSubscriptionsUseCase>()));
  gh.factory<_i51.ChefsBloc>(() => _i51.ChefsBloc(
      get<_i36.GetNearestChefsUseCase>(),
      get<_i37.GetTopOrdersChefsUseCase>(),
      get<_i38.GetTopRatedChefsUseCase>(),
      get<_i35.GetMostRecentChefsUseCase>()));
  gh.lazySingleton<_i52.GetOfferedMealsUseCase>(
      () => _i52.GetOfferedMealsUseCase(get<_i41.MealsRepository>()));
  gh.lazySingleton<_i53.GetRecentMealsUseCase>(
      () => _i53.GetRecentMealsUseCase(get<_i41.MealsRepository>()));
  gh.lazySingleton<_i54.GetTopOrderedMealsUseCase>(
      () => _i54.GetTopOrderedMealsUseCase(get<_i41.MealsRepository>()));
  gh.lazySingleton<_i55.GetTopRatedMealsUseCase>(
      () => _i55.GetTopRatedMealsUseCase(get<_i41.MealsRepository>()));
  gh.lazySingleton<_i56.GetTopSubscriptionsUseCase>(
      () => _i56.GetTopSubscriptionsUseCase(get<_i41.MealsRepository>()));
  gh.factory<_i57.MealsBloc>(() => _i57.MealsBloc(
      get<_i52.GetOfferedMealsUseCase>(),
      get<_i53.GetRecentMealsUseCase>(),
      get<_i56.GetTopSubscriptionsUseCase>(),
      get<_i54.GetTopOrderedMealsUseCase>(),
      get<_i55.GetTopRatedMealsUseCase>()));
  return get;
}

class _$RegisterModule extends _i58.RegisterModule {}
