// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import 'core/data/base_local_data_source.dart' as _i33;
import 'core/data/base_repository.dart' as _i34;
import 'core/databases/cart_database.dart' as _i3;
import 'core/network/network_info.dart' as _i10;
import 'features/auth/data/data_source/local/auth_local_data_source.dart'
    as _i27;
import 'features/auth/data/data_source/local/auth_local_data_source_imp.dart'
    as _i28;
import 'features/auth/data/data_source/remote/auth_remote_data_source.dart'
    as _i29;
import 'features/auth/data/data_source/remote/auth_remote_data_source_imp.dart'
    as _i30;
import 'features/auth/data/repository/auth_repository_imp.dart' as _i32;
import 'features/auth/domain/repository/auth_repository.dart' as _i31;
import 'features/auth/domain/use_cases/check_code_use_case.dart' as _i41;
import 'features/auth/domain/use_cases/request_register_use_case.dart' as _i76;
import 'features/auth/domain/use_cases/send_code_use_case.dart' as _i77;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i84;
import 'features/cart/data/data_sources/local/cart_local_data_source.dart'
    as _i35;
import 'features/cart/data/data_sources/local/cart_local_data_source_imp.dart'
    as _i36;
import 'features/cart/data/data_sources/remote/cart_remote_data_source.dart'
    as _i37;
import 'features/cart/data/data_sources/remote/cart_remote_data_source_imp.dart'
    as _i38;
import 'features/cart/data/repositories/cart_repository_imp.dart' as _i40;
import 'features/cart/domain/repositories/cart_repository.dart' as _i39;
import 'features/cart/domain/use_cases/delet_cart_item_use_case.dart' as _i48;
import 'features/cart/domain/use_cases/get_cart_items_use_case.dart' as _i49;
import 'features/cart/domain/use_cases/order_cart_use_case.dart' as _i60;
import 'features/cart/presentation/bloc/cart_bloc.dart' as _i86;
import 'features/current_subscriptions/data/data_sources/local/current_subscriptions_local_data_source.dart'
    as _i42;
import 'features/current_subscriptions/data/data_sources/local/current_subscriptions_local_data_source_imp.dart'
    as _i43;
import 'features/current_subscriptions/data/data_sources/remote/current_subscriptions_remote_data_source.dart'
    as _i44;
import 'features/current_subscriptions/data/data_sources/remote/current_subscriptions_remote_data_source_imp.dart'
    as _i45;
import 'features/current_subscriptions/data/repositories/current_subscriptions_repository_imp.dart'
    as _i47;
import 'features/current_subscriptions/domain/repositories/current_subscriptions_repository.dart'
    as _i46;
import 'features/current_subscriptions/domain/use_cases/get_current_subscriptions_use_case.dart'
    as _i50;
import 'features/current_subscriptions/domain/use_cases/get_subscription_order_use_case.dart'
    as _i51;
import 'features/current_subscriptions/presentation/bloc/current_subscriptions_bloc.dart'
    as _i88;
import 'features/meal/data/data_sources/local/meal_local_data_source.dart'
    as _i52;
import 'features/meal/data/data_sources/local/meal_local_data_source_imp.dart'
    as _i53;
import 'features/meal/data/data_sources/remote/meal_remote_data_source.dart'
    as _i6;
import 'features/meal/data/data_sources/remote/meal_remote_data_source_imp.dart'
    as _i7;
import 'features/meal/data/repositories/meal_repository_imp.dart' as _i55;
import 'features/meal/domain/repositories/meal_repository.dart' as _i54;
import 'features/meal/domain/use_cases/add_meal_to_cart_use_case.dart' as _i82;
import 'features/meal/domain/use_cases/add_to_favourite_use_case.dart' as _i83;
import 'features/meal/domain/use_cases/get_meal_use_case.dart' as _i92;
import 'features/meal/domain/use_cases/remove_from_favourite_use_case.dart'
    as _i74;
import 'features/meal/presentation/bloc/meal_bloc.dart' as _i102;
import 'features/meals/data/data_sources/local/meals_local_data_source.dart'
    as _i56;
import 'features/meals/data/data_sources/local/meals_local_data_source_imp.dart'
    as _i57;
import 'features/meals/data/data_sources/remote/meals_remote_data_source.dart'
    as _i8;
import 'features/meals/data/data_sources/remote/meals_remote_data_source_imp.dart'
    as _i9;
import 'features/meals/data/repositories/meals_repository_imp.dart' as _i59;
import 'features/meals/domain/repositories/meals_repository.dart' as _i58;
import 'features/meals/domain/use_cases/get_all_offered_meals_use_case.dart'
    as _i89;
import 'features/meals/domain/use_cases/get_all_subscriptions_use_case.dart'
    as _i90;
import 'features/meals/domain/use_cases/get_offered_meals_use_case.dart'
    as _i93;
import 'features/meals/domain/use_cases/get_recent_meals_use_case.dart' as _i96;
import 'features/meals/domain/use_cases/get_top_ordered_meals_use_case.dart'
    as _i99;
import 'features/meals/domain/use_cases/get_top_rated_meals_use_case.dart'
    as _i100;
import 'features/meals/domain/use_cases/get_top_subscriptions_meals_use_case.dart'
    as _i101;
import 'features/meals/presentation/bloc/meals_bloc.dart' as _i103;
import 'features/order/data/data_sources/local/order_local_data_source.dart'
    as _i61;
import 'features/order/data/data_sources/local/order_local_data_source_imp.dart'
    as _i62;
import 'features/order/data/data_sources/remote/order_remote_data_source.dart'
    as _i11;
import 'features/order/data/data_sources/remote/order_remote_data_source_imp.dart'
    as _i12;
import 'features/order/data/repositories/order_repository_imp.dart' as _i64;
import 'features/order/domain/repositories/order_repository.dart' as _i63;
import 'features/order/domain/use_cases/rate_order_use_case.dart' as _i73;
import 'features/order/domain/use_cases/report_order_use_case.dart' as _i75;
import 'features/order/domain/use_cases/show_order_use_case.dart' as _i94;
import 'features/order/presentation/bloc/order_bloc.dart' as _i104;
import 'features/orders/data/data_sources/local/orders_local_data_source.dart'
    as _i65;
import 'features/orders/data/data_sources/local/orders_local_data_source_imp.dart'
    as _i66;
import 'features/orders/data/data_sources/remote/orders_remote_data_source.dart'
    as _i13;
import 'features/orders/data/data_sources/remote/orders_remote_data_source_imp.dart'
    as _i14;
import 'features/orders/data/repositories/orders_repository_imp.dart' as _i68;
import 'features/orders/domain/repositories/orders_repository.dart' as _i67;
import 'features/orders/domain/use_cases/cancel_order_use_case.dart' as _i85;
import 'features/orders/domain/use_cases/get_current_orders_use_case.dart'
    as _i91;
import 'features/orders/domain/use_cases/get_previous_orders_use_case.dart'
    as _i95;
import 'features/orders/presentation/bloc/orders_bloc.dart' as _i105;
import 'features/profile/data/data_sources/local/profile_local_data_source.dart'
    as _i69;
import 'features/profile/data/data_sources/local/profile_local_data_source_imp.dart'
    as _i70;
import 'features/profile/data/data_sources/remote/profile_remote_data_source.dart'
    as _i16;
import 'features/profile/data/data_sources/remote/profile_remote_data_source_imp.dart'
    as _i17;
import 'features/profile/data/repositories/profile_repository_imp.dart' as _i72;
import 'features/profile/domain/repositories/profile_repository.dart' as _i71;
import 'features/profile/presentation/bloc/profile_bloc.dart' as _i15;
import 'features/splash/data/data_source/local/splash_local_data_source.dart'
    as _i19;
import 'features/splash/data/data_source/local/splash_local_data_source_imp.dart'
    as _i20;
import 'features/splash/data/data_source/remote/splash_remote_data_source.dart'
    as _i21;
import 'features/splash/data/data_source/remote/splash_remote_data_source_imp.dart'
    as _i22;
import 'features/splash/data/repository/splash_repository_imp.dart' as _i79;
import 'features/splash/domain/repository/splash_repository.dart' as _i78;
import 'features/splash/domain/use_cases/check_auth_use_case.dart' as _i87;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i106;
import 'features/subscription/data/data_sources/local/subscription_local_data_source.dart'
    as _i23;
import 'features/subscription/data/data_sources/local/subscription_local_data_source_imp.dart'
    as _i24;
import 'features/subscription/data/data_sources/remote/subscription_remote_data_source.dart'
    as _i25;
import 'features/subscription/data/data_sources/remote/subscription_remote_data_source_imp.dart'
    as _i26;
import 'features/subscription/data/repositories/subscription_repository_imp.dart'
    as _i81;
import 'features/subscription/domain/repositories/subscription_repository.dart'
    as _i80;
import 'features/subscription/domain/use_cases/get_subscription_meals_use_case.dart'
    as _i97;
import 'features/subscription/domain/use_cases/get_subscription_use_case.dart'
    as _i98;
import 'features/subscription/domain/use_cases/subscribe_use_case.dart'
    as _i107;
import 'features/subscription/presentation/bloc/subscription_bloc.dart'
    as _i108;
import 'injection.dart' as _i109; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i11.OrderRemoteDataSource>(
      () => _i12.OrderRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i13.OrdersRemoteDataSource>(
      () => _i14.OrdersRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.factory<_i15.ProfileBloc>(() => _i15.ProfileBloc());
  gh.lazySingleton<_i16.ProfileRemoteDataSource>(
      () => _i17.ProfileRemoteDataSourceImp(dio: get<_i4.Dio>()));
  await gh.factoryAsync<_i18.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i19.SplashLocalDataSource>(() =>
      _i20.SplashLocalDataSourceImp(
          sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i21.SplashRemoteDataSource>(
      () => _i22.SplashRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i23.SubscriptionLocalDataSource>(() =>
      _i24.SubscriptionLocalDataSourceImp(
          sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i25.SubscriptionRemoteDataSource>(
      () => _i26.SubscriptionRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i27.AuthLocalDataSource>(() => _i28.AuthLocalDataSourceImp(
      sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i29.AuthRemoteDataSource>(
      () => _i30.AuthRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i31.AuthRepository>(() => _i32.AuthRepositoryImp(
      get<_i27.AuthLocalDataSource>(), get<_i29.AuthRemoteDataSource>()));
  gh.lazySingleton<_i33.BaseLocalDataSource>(() => _i33.BaseLocalDataSourceImpl(
      sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i34.BaseRepository>(() => _i34.BaseRepositoryImpl(
      baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i35.CartLocalDataSource>(() => _i36.CartLocalDataSourceImp(
      sharedPreferences: get<_i18.SharedPreferences>(),
      cartDataBaseManager: get<_i3.CartDataBaseManager>()));
  gh.lazySingleton<_i37.CartRemoteDataSource>(
      () => _i38.CartRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i39.CartRepository>(() => _i40.CartRepositoryImp(
      get<_i37.CartRemoteDataSource>(), get<_i35.CartLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i41.CheckCodeUseCase>(
      () => _i41.CheckCodeUseCase(get<_i31.AuthRepository>()));
  gh.lazySingleton<_i42.CurrentSubscriptionsLocalDataSource>(() =>
      _i43.CurrentSubscriptionsLocalDataSourceImp(
          sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i44.CurrentSubscriptionsRemoteDataSource>(
      () => _i45.CurrentSubscriptionsRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i46.CurrentSubscriptionsRepository>(() =>
      _i47.CurrentSubscriptionsRepositoryImp(
          get<_i42.CurrentSubscriptionsLocalDataSource>(),
          get<_i44.CurrentSubscriptionsRemoteDataSource>(),
          baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
          networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i48.DeleteCartItemUseCase>(
      () => _i48.DeleteCartItemUseCase(get<_i39.CartRepository>()));
  gh.lazySingleton<_i49.GetCartItemsUseCase>(
      () => _i49.GetCartItemsUseCase(get<_i39.CartRepository>()));
  gh.lazySingleton<_i50.GetCurrentSubscriptionsUseCase>(() =>
      _i50.GetCurrentSubscriptionsUseCase(
          get<_i46.CurrentSubscriptionsRepository>()));
  gh.lazySingleton<_i51.GetSubscriptionOrdersUseCase>(() =>
      _i51.GetSubscriptionOrdersUseCase(
          get<_i46.CurrentSubscriptionsRepository>()));
  gh.lazySingleton<_i52.MealLocalDataSource>(() => _i53.MealLocalDataSourceImp(
      sharedPreferences: get<_i18.SharedPreferences>(),
      cartDataBaseManager: get<_i3.CartDataBaseManager>()));
  gh.lazySingleton<_i54.MealRepository>(() => _i55.MealRepositoryImp(
      get<_i52.MealLocalDataSource>(), get<_i6.MealRemoteDataSource>(),
      baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i56.MealsLocalDataSource>(() =>
      _i57.MealsLocalDataSourceImp(
          sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i58.MealsRepository>(() => _i59.MealsRepositoryImp(
      get<_i56.MealsLocalDataSource>(), get<_i8.MealsRemoteDataSource>()));
  gh.lazySingleton<_i60.OrderCartUseCase>(
      () => _i60.OrderCartUseCase(get<_i39.CartRepository>()));
  gh.lazySingleton<_i61.OrderLocalDataSource>(() =>
      _i62.OrderLocalDataSourceImp(
          sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i63.OrderRepository>(() => _i64.OrderRepositoryImp(
      get<_i11.OrderRemoteDataSource>(), get<_i61.OrderLocalDataSource>(),
      baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i65.OrdersLocalDataSource>(() =>
      _i66.OrdersLocalDataSourceImp(
          sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i67.OrdersRepository>(() => _i68.OrdersRepositoryImp(
      get<_i13.OrdersRemoteDataSource>(), get<_i65.OrdersLocalDataSource>(),
      baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i69.ProfileLocalDataSource>(() =>
      _i70.ProfileLocalDataSourceImp(
          sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i71.ProfileRepository>(() => _i72.ProfileRepositoryImp(
      get<_i69.ProfileLocalDataSource>(), get<_i16.ProfileRemoteDataSource>(),
      baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i73.RateOrderUseCase>(
      () => _i73.RateOrderUseCase(get<_i63.OrderRepository>()));
  gh.lazySingleton<_i74.RemoveFromFavouriteUseCase>(
      () => _i74.RemoveFromFavouriteUseCase(get<_i54.MealRepository>()));
  gh.lazySingleton<_i75.ReportOrderUseCase>(
      () => _i75.ReportOrderUseCase(get<_i63.OrderRepository>()));
  gh.lazySingleton<_i76.RequestRegisterUseCase>(
      () => _i76.RequestRegisterUseCase(get<_i31.AuthRepository>()));
  gh.lazySingleton<_i77.SendCodeUseCase>(
      () => _i77.SendCodeUseCase(get<_i31.AuthRepository>()));
  gh.lazySingleton<_i78.SplashRepository>(() => _i79.SplashRepositoryImp(
      get<_i19.SplashLocalDataSource>(), get<_i21.SplashRemoteDataSource>(),
      baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i80.SubscriptionRepository>(() =>
      _i81.SubscriptionRepositoryImp(get<_i23.SubscriptionLocalDataSource>(),
          get<_i25.SubscriptionRemoteDataSource>(),
          baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
          networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i82.AddMealToCartUseCase>(
      () => _i82.AddMealToCartUseCase(get<_i54.MealRepository>()));
  gh.lazySingleton<_i83.AddToFavouriteUseCase>(
      () => _i83.AddToFavouriteUseCase(get<_i54.MealRepository>()));
  gh.factory<_i84.AuthBloc>(() => _i84.AuthBloc(get<_i41.CheckCodeUseCase>(),
      get<_i76.RequestRegisterUseCase>(), get<_i77.SendCodeUseCase>()));
  gh.lazySingleton<_i85.CancelOrderUseCase>(
      () => _i85.CancelOrderUseCase(get<_i67.OrdersRepository>()));
  gh.factory<_i86.CartBloc>(() => _i86.CartBloc(get<_i49.GetCartItemsUseCase>(),
      get<_i60.OrderCartUseCase>(), get<_i48.DeleteCartItemUseCase>()));
  gh.lazySingleton<_i87.CheckAuthUseCase>(
      () => _i87.CheckAuthUseCase(get<_i78.SplashRepository>()));
  gh.factory<_i88.CurrentSubscriptionsBloc>(() => _i88.CurrentSubscriptionsBloc(
      get<_i50.GetCurrentSubscriptionsUseCase>(),
      get<_i51.GetSubscriptionOrdersUseCase>(),
      get<_i85.CancelOrderUseCase>()));
  gh.lazySingleton<_i89.GetAllOfferedMealsUseCase>(
      () => _i89.GetAllOfferedMealsUseCase(get<_i58.MealsRepository>()));
  gh.lazySingleton<_i90.GetAllSubscriptionsUseCase>(
      () => _i90.GetAllSubscriptionsUseCase(get<_i58.MealsRepository>()));
  gh.lazySingleton<_i91.GetCurrentOrdersUseCase>(
      () => _i91.GetCurrentOrdersUseCase(get<_i67.OrdersRepository>()));
  gh.lazySingleton<_i92.GetMealUseCase>(
      () => _i92.GetMealUseCase(get<_i54.MealRepository>()));
  gh.lazySingleton<_i93.GetOfferedMealsUseCase>(
      () => _i93.GetOfferedMealsUseCase(get<_i58.MealsRepository>()));
  gh.lazySingleton<_i94.GetOrderUseCase>(
      () => _i94.GetOrderUseCase(get<_i63.OrderRepository>()));
  gh.lazySingleton<_i95.GetPreviousOrdersUseCase>(
      () => _i95.GetPreviousOrdersUseCase(get<_i67.OrdersRepository>()));
  gh.lazySingleton<_i96.GetRecentMealsUseCase>(
      () => _i96.GetRecentMealsUseCase(get<_i58.MealsRepository>()));
  gh.lazySingleton<_i97.GetSubscriptionMealsUseCase>(() =>
      _i97.GetSubscriptionMealsUseCase(get<_i80.SubscriptionRepository>()));
  gh.lazySingleton<_i98.GetSubscriptionUseCase>(
      () => _i98.GetSubscriptionUseCase(get<_i80.SubscriptionRepository>()));
  gh.lazySingleton<_i99.GetTopOrderedMealsUseCase>(
      () => _i99.GetTopOrderedMealsUseCase(get<_i58.MealsRepository>()));
  gh.lazySingleton<_i100.GetTopRatedMealsUseCase>(
      () => _i100.GetTopRatedMealsUseCase(get<_i58.MealsRepository>()));
  gh.lazySingleton<_i101.GetTopSubscriptionsUseCase>(
      () => _i101.GetTopSubscriptionsUseCase(get<_i58.MealsRepository>()));
  gh.factory<_i102.MealBloc>(() => _i102.MealBloc(
      get<_i92.GetMealUseCase>(),
      get<_i74.RemoveFromFavouriteUseCase>(),
      get<_i83.AddToFavouriteUseCase>(),
      get<_i82.AddMealToCartUseCase>()));
  gh.factory<_i103.MealsBloc>(() => _i103.MealsBloc(
      get<_i93.GetOfferedMealsUseCase>(),
      get<_i96.GetRecentMealsUseCase>(),
      get<_i101.GetTopSubscriptionsUseCase>(),
      get<_i99.GetTopOrderedMealsUseCase>(),
      get<_i100.GetTopRatedMealsUseCase>(),
      get<_i89.GetAllOfferedMealsUseCase>(),
      get<_i90.GetAllSubscriptionsUseCase>()));
  gh.factory<_i104.OrderBloc>(() => _i104.OrderBloc(
      get<_i85.CancelOrderUseCase>(),
      get<_i94.GetOrderUseCase>(),
      get<_i75.ReportOrderUseCase>(),
      get<_i73.RateOrderUseCase>()));
  gh.factory<_i105.OrdersBloc>(() => _i105.OrdersBloc(
      get<_i91.GetCurrentOrdersUseCase>(),
      get<_i95.GetPreviousOrdersUseCase>(),
      get<_i85.CancelOrderUseCase>()));
  gh.factory<_i106.SplashBloc>(
      () => _i106.SplashBloc(get<_i87.CheckAuthUseCase>()));
  gh.lazySingleton<_i107.SubscribeUseCase>(
      () => _i107.SubscribeUseCase(get<_i80.SubscriptionRepository>()));
  gh.factory<_i108.SubscriptionBloc>(() => _i108.SubscriptionBloc(
      get<_i98.GetSubscriptionUseCase>(),
      get<_i97.GetSubscriptionMealsUseCase>(),
      get<_i107.SubscribeUseCase>()));
  return get;
}

class _$RegisterModule extends _i109.RegisterModule {}
