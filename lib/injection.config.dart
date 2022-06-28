// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import 'core/data/base_local_data_source.dart' as _i26;
import 'core/data/base_repository.dart' as _i27;
import 'core/databases/cart_database.dart' as _i3;
import 'core/network/network_info.dart' as _i10;
import 'features/auth/data/data_source/local/auth_local_data_source.dart'
    as _i20;
import 'features/auth/data/data_source/local/auth_local_data_source_imp.dart'
    as _i21;
import 'features/auth/data/data_source/remote/auth_remote_data_source.dart'
    as _i22;
import 'features/auth/data/data_source/remote/auth_remote_data_source_imp.dart'
    as _i23;
import 'features/auth/data/repository/auth_repository_imp.dart' as _i25;
import 'features/auth/domain/repository/auth_repository.dart' as _i24;
import 'features/auth/domain/use_cases/check_code_use_case.dart' as _i34;
import 'features/auth/domain/use_cases/request_register_use_case.dart' as _i46;
import 'features/auth/domain/use_cases/send_code_use_case.dart' as _i47;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i54;
import 'features/cart/data/data_sources/local/cart_local_data_source.dart'
    as _i28;
import 'features/cart/data/data_sources/local/cart_local_data_source_imp.dart'
    as _i29;
import 'features/cart/data/data_sources/remote/cart_remote_data_source.dart'
    as _i30;
import 'features/cart/data/data_sources/remote/cart_remote_data_source_imp.dart'
    as _i31;
import 'features/cart/data/repositories/cart_repository_imp.dart' as _i33;
import 'features/cart/domain/repositories/cart_repository.dart' as _i32;
import 'features/cart/domain/use_cases/get_cart_items_use_case.dart' as _i35;
import 'features/cart/domain/use_cases/order_cart_use_case.dart' as _i44;
import 'features/cart/presentation/bloc/cart_bloc.dart' as _i55;
import 'features/meal/data/data_sources/local/meal_local_data_source.dart'
    as _i36;
import 'features/meal/data/data_sources/local/meal_local_data_source_imp.dart'
    as _i37;
import 'features/meal/data/data_sources/remote/meal_remote_data_source.dart'
    as _i6;
import 'features/meal/data/data_sources/remote/meal_remote_data_source_imp.dart'
    as _i7;
import 'features/meal/data/repositories/meal_repository_imp.dart' as _i39;
import 'features/meal/domain/repositories/meal_repository.dart' as _i38;
import 'features/meal/domain/use_cases/add_meal_to_cart_use_case.dart' as _i52;
import 'features/meal/domain/use_cases/add_to_favourite_use_case.dart' as _i53;
import 'features/meal/domain/use_cases/get_meal_use_case.dart' as _i59;
import 'features/meal/domain/use_cases/remove_from_favourite_use_case.dart'
    as _i45;
import 'features/meal/presentation/bloc/meal_bloc.dart' as _i67;
import 'features/meals/data/data_sources/local/meals_local_data_source.dart'
    as _i40;
import 'features/meals/data/data_sources/local/meals_local_data_source_imp.dart'
    as _i41;
import 'features/meals/data/data_sources/remote/meals_remote_data_source.dart'
    as _i8;
import 'features/meals/data/data_sources/remote/meals_remote_data_source_imp.dart'
    as _i9;
import 'features/meals/data/repositories/meals_repository_imp.dart' as _i43;
import 'features/meals/domain/repositories/meals_repository.dart' as _i42;
import 'features/meals/domain/use_cases/get_all_offered_meals_use_case.dart'
    as _i57;
import 'features/meals/domain/use_cases/get_all_subscriptions_use_case.dart'
    as _i58;
import 'features/meals/domain/use_cases/get_offered_meals_use_case.dart'
    as _i60;
import 'features/meals/domain/use_cases/get_recent_meals_use_case.dart' as _i61;
import 'features/meals/domain/use_cases/get_top_ordered_meals_use_case.dart'
    as _i64;
import 'features/meals/domain/use_cases/get_top_rated_meals_use_case.dart'
    as _i65;
import 'features/meals/domain/use_cases/get_top_subscriptions_meals_use_case.dart'
    as _i66;
import 'features/meals/presentation/bloc/meals_bloc.dart' as _i68;
import 'features/splash/data/data_source/local/splash_local_data_source.dart'
    as _i12;
import 'features/splash/data/data_source/local/splash_local_data_source_imp.dart'
    as _i13;
import 'features/splash/data/data_source/remote/splash_remote_data_source.dart'
    as _i14;
import 'features/splash/data/data_source/remote/splash_remote_data_source_imp.dart'
    as _i15;
import 'features/splash/data/repository/splash_repository_imp.dart' as _i49;
import 'features/splash/domain/repository/splash_repository.dart' as _i48;
import 'features/splash/domain/use_cases/check_auth_use_case.dart' as _i56;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i69;
import 'features/subscription/data/data_sources/local/subscription_local_data_source.dart'
    as _i16;
import 'features/subscription/data/data_sources/local/subscription_local_data_source_imp.dart'
    as _i17;
import 'features/subscription/data/data_sources/remote/subscription_remote_data_source.dart'
    as _i18;
import 'features/subscription/data/data_sources/remote/subscription_remote_data_source_imp.dart'
    as _i19;
import 'features/subscription/data/repositories/subscription_repository_imp.dart'
    as _i51;
import 'features/subscription/domain/repositories/subscription_repository.dart'
    as _i50;
import 'features/subscription/domain/use_cases/get_subscription_meals_use_case.dart'
    as _i62;
import 'features/subscription/domain/use_cases/get_subscription_use_case.dart'
    as _i63;
import 'features/subscription/domain/use_cases/subscribe_use_case.dart' as _i70;
import 'features/subscription/presentation/bloc/subscription_bloc.dart' as _i71;
import 'injection.dart' as _i72; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.CartDataBaseManager>(
      () => registerModule.cartDataBaseManager);
  gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i5.InternetConnectionChecker>(
      () => registerModule.internetConnectionChecker);
  gh.lazySingleton<_i6.MealRemoteDataSource>(
      () => _i7.MealRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i8.MealsRemoteDataSource>(
      () => _i9.MealsRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i10.NetworkInfo>(
      () => _i10.NetworkInfoImpl(get<_i5.InternetConnectionChecker>()));
  await gh.factoryAsync<_i11.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i12.SplashLocalDataSource>(() =>
      _i13.SplashLocalDataSourceImp(
          sharedPreferences: get<_i11.SharedPreferences>()));
  gh.lazySingleton<_i14.SplashRemoteDataSource>(
      () => _i15.SplashRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i16.SubscriptionLocalDataSource>(() =>
      _i17.SubscriptionLocalDataSourceImp(
          sharedPreferences: get<_i11.SharedPreferences>()));
  gh.lazySingleton<_i18.SubscriptionRemoteDataSource>(
      () => _i19.SubscriptionRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i20.AuthLocalDataSource>(() => _i21.AuthLocalDataSourceImp(
      sharedPreferences: get<_i11.SharedPreferences>()));
  gh.lazySingleton<_i22.AuthRemoteDataSource>(
      () => _i23.AuthRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i24.AuthRepository>(() => _i25.AuthRepositoryImp(
      get<_i20.AuthLocalDataSource>(), get<_i22.AuthRemoteDataSource>()));
  gh.lazySingleton<_i26.BaseLocalDataSource>(() => _i26.BaseLocalDataSourceImpl(
      sharedPreferences: get<_i11.SharedPreferences>()));
  gh.lazySingleton<_i27.BaseRepository>(() => _i27.BaseRepositoryImpl(
      baseLocalDataSource: get<_i26.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i28.CartLocalDataSource>(() => _i29.CartLocalDataSourceImp(
      sharedPreferences: get<_i11.SharedPreferences>(),
      cartDataBaseManager: get<_i3.CartDataBaseManager>()));
  gh.lazySingleton<_i30.CartRemoteDataSource>(
      () => _i31.CartRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i32.CartRepository>(() => _i33.CartRepositoryImp(
      get<_i30.CartRemoteDataSource>(), get<_i28.CartLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i34.CheckCodeUseCase>(
      () => _i34.CheckCodeUseCase(get<_i24.AuthRepository>()));
  gh.lazySingleton<_i35.GetCartItemsUseCase>(
      () => _i35.GetCartItemsUseCase(get<_i32.CartRepository>()));
  gh.lazySingleton<_i36.MealLocalDataSource>(() => _i37.MealLocalDataSourceImp(
      sharedPreferences: get<_i11.SharedPreferences>(),
      cartDataBaseManager: get<_i3.CartDataBaseManager>()));
  gh.lazySingleton<_i38.MealRepository>(() => _i39.MealRepositoryImp(
      get<_i36.MealLocalDataSource>(), get<_i6.MealRemoteDataSource>(),
      baseLocalDataSource: get<_i26.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i40.MealsLocalDataSource>(() =>
      _i41.MealsLocalDataSourceImp(
          sharedPreferences: get<_i11.SharedPreferences>()));
  gh.lazySingleton<_i42.MealsRepository>(() => _i43.MealsRepositoryImp(
      get<_i40.MealsLocalDataSource>(), get<_i8.MealsRemoteDataSource>()));
  gh.lazySingleton<_i44.OrderCartUseCase>(
      () => _i44.OrderCartUseCase(get<_i32.CartRepository>()));
  gh.lazySingleton<_i45.RemoveFromFavouriteUseCase>(
      () => _i45.RemoveFromFavouriteUseCase(get<_i38.MealRepository>()));
  gh.lazySingleton<_i46.RequestRegisterUseCase>(
      () => _i46.RequestRegisterUseCase(get<_i24.AuthRepository>()));
  gh.lazySingleton<_i47.SendCodeUseCase>(
      () => _i47.SendCodeUseCase(get<_i24.AuthRepository>()));
  gh.lazySingleton<_i48.SplashRepository>(() => _i49.SplashRepositoryImp(
      get<_i12.SplashLocalDataSource>(), get<_i14.SplashRemoteDataSource>(),
      baseLocalDataSource: get<_i26.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i50.SubscriptionRepository>(() =>
      _i51.SubscriptionRepositoryImp(get<_i16.SubscriptionLocalDataSource>(),
          get<_i18.SubscriptionRemoteDataSource>(),
          baseLocalDataSource: get<_i26.BaseLocalDataSource>(),
          networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i52.AddMealToCartUseCase>(
      () => _i52.AddMealToCartUseCase(get<_i38.MealRepository>()));
  gh.lazySingleton<_i53.AddToFavouriteUseCase>(
      () => _i53.AddToFavouriteUseCase(get<_i38.MealRepository>()));
  gh.factory<_i54.AuthBloc>(() => _i54.AuthBloc(get<_i34.CheckCodeUseCase>(),
      get<_i46.RequestRegisterUseCase>(), get<_i47.SendCodeUseCase>()));
  gh.factory<_i55.CartBloc>(() => _i55.CartBloc(
      get<_i35.GetCartItemsUseCase>(), get<_i44.OrderCartUseCase>()));
  gh.lazySingleton<_i56.CheckAuthUseCase>(
      () => _i56.CheckAuthUseCase(get<_i48.SplashRepository>()));
  gh.lazySingleton<_i57.GetAllOfferedMealsUseCase>(
      () => _i57.GetAllOfferedMealsUseCase(get<_i42.MealsRepository>()));
  gh.lazySingleton<_i58.GetAllSubscriptionsUseCase>(
      () => _i58.GetAllSubscriptionsUseCase(get<_i42.MealsRepository>()));
  gh.lazySingleton<_i59.GetMealUseCase>(
      () => _i59.GetMealUseCase(get<_i38.MealRepository>()));
  gh.lazySingleton<_i60.GetOfferedMealsUseCase>(
      () => _i60.GetOfferedMealsUseCase(get<_i42.MealsRepository>()));
  gh.lazySingleton<_i61.GetRecentMealsUseCase>(
      () => _i61.GetRecentMealsUseCase(get<_i42.MealsRepository>()));
  gh.lazySingleton<_i62.GetSubscriptionMealsUseCase>(() =>
      _i62.GetSubscriptionMealsUseCase(get<_i50.SubscriptionRepository>()));
  gh.lazySingleton<_i63.GetSubscriptionUseCase>(
      () => _i63.GetSubscriptionUseCase(get<_i50.SubscriptionRepository>()));
  gh.lazySingleton<_i64.GetTopOrderedMealsUseCase>(
      () => _i64.GetTopOrderedMealsUseCase(get<_i42.MealsRepository>()));
  gh.lazySingleton<_i65.GetTopRatedMealsUseCase>(
      () => _i65.GetTopRatedMealsUseCase(get<_i42.MealsRepository>()));
  gh.lazySingleton<_i66.GetTopSubscriptionsUseCase>(
      () => _i66.GetTopSubscriptionsUseCase(get<_i42.MealsRepository>()));
  gh.factory<_i67.MealBloc>(() => _i67.MealBloc(
      get<_i59.GetMealUseCase>(),
      get<_i45.RemoveFromFavouriteUseCase>(),
      get<_i53.AddToFavouriteUseCase>(),
      get<_i52.AddMealToCartUseCase>()));
  gh.factory<_i68.MealsBloc>(() => _i68.MealsBloc(
      get<_i60.GetOfferedMealsUseCase>(),
      get<_i61.GetRecentMealsUseCase>(),
      get<_i66.GetTopSubscriptionsUseCase>(),
      get<_i64.GetTopOrderedMealsUseCase>(),
      get<_i65.GetTopRatedMealsUseCase>(),
      get<_i57.GetAllOfferedMealsUseCase>(),
      get<_i58.GetAllSubscriptionsUseCase>()));
  gh.factory<_i69.SplashBloc>(
      () => _i69.SplashBloc(get<_i56.CheckAuthUseCase>()));
  gh.lazySingleton<_i70.SubscribeUseCase>(
      () => _i70.SubscribeUseCase(get<_i50.SubscriptionRepository>()));
  gh.factory<_i71.SubscriptionBloc>(() => _i71.SubscriptionBloc(
      get<_i63.GetSubscriptionUseCase>(),
      get<_i62.GetSubscriptionMealsUseCase>(),
      get<_i70.SubscribeUseCase>()));
  return get;
}

class _$RegisterModule extends _i72.RegisterModule {}
