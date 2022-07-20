// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i20;

import 'core/data/base_local_data_source.dart' as _i35;
import 'core/data/base_repository.dart' as _i36;
import 'core/databases/cart_database.dart' as _i3;
import 'core/network/network_info.dart' as _i10;
import 'features/auth/data/data_source/local/auth_local_data_source.dart'
    as _i29;
import 'features/auth/data/data_source/local/auth_local_data_source_imp.dart'
    as _i30;
import 'features/auth/data/data_source/remote/auth_remote_data_source.dart'
    as _i31;
import 'features/auth/data/data_source/remote/auth_remote_data_source_imp.dart'
    as _i32;
import 'features/auth/data/repository/auth_repository_imp.dart' as _i34;
import 'features/auth/domain/repository/auth_repository.dart' as _i33;
import 'features/auth/domain/use_cases/check_code_use_case.dart' as _i43;
import 'features/auth/domain/use_cases/request_register_use_case.dart' as _i98;
import 'features/auth/domain/use_cases/send_code_use_case.dart' as _i104;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i112;
import 'features/cart/data/data_sources/local/cart_local_data_source.dart'
    as _i37;
import 'features/cart/data/data_sources/local/cart_local_data_source_imp.dart'
    as _i38;
import 'features/cart/data/data_sources/remote/cart_remote_data_source.dart'
    as _i39;
import 'features/cart/data/data_sources/remote/cart_remote_data_source_imp.dart'
    as _i40;
import 'features/cart/data/repositories/cart_repository_imp.dart' as _i42;
import 'features/cart/domain/repositories/cart_repository.dart' as _i41;
import 'features/cart/domain/use_cases/delete_cart_item_use_case.dart' as _i62;
import 'features/cart/domain/use_cases/get_cart_items_use_case.dart' as _i63;
import 'features/cart/domain/use_cases/increase_cart_item_quantity_use_case.dart'
    as _i109;
import 'features/cart/domain/use_cases/order_cart_use_case.dart' as _i82;
import 'features/cart/presentation/bloc/cart_bloc.dart' as _i114;
import 'features/chef_menu/data/data_sources/local/chef_menu_local_data_source.dart'
    as _i44;
import 'features/chef_menu/data/data_sources/local/chef_menu_local_data_source_imp.dart'
    as _i45;
import 'features/chef_menu/data/data_sources/remote/chef_menu_remote_data_source.dart'
    as _i46;
import 'features/chef_menu/data/data_sources/remote/chef_menu_remote_data_source_imp.dart'
    as _i47;
import 'features/chef_menu/data/repositories/chef_menu_repository_imp.dart'
    as _i49;
import 'features/chef_menu/domain/repositories/chef_menu_repository.dart'
    as _i48;
import 'features/chef_menu/domain/use_cases/get_chef_categories.dart' as _i64;
import 'features/chef_menu/domain/use_cases/get_chef_category_meals.dart'
    as _i65;
import 'features/chef_menu/domain/use_cases/get_chef_info.dart' as _i66;
import 'features/chef_menu/domain/use_cases/get_chef_subscriptions.dart'
    as _i67;
import 'features/chef_menu/presentation/bloc/chef_menu_bloc.dart' as _i117;
import 'features/chefs/data/data_sources/local/chefs_local_data_source.dart'
    as _i50;
import 'features/chefs/data/data_sources/local/chefs_local_data_source_imp.dart'
    as _i51;
import 'features/chefs/data/data_sources/remote/chefs_remote_data_source.dart'
    as _i52;
import 'features/chefs/data/data_sources/remote/chefs_remote_data_source_imp.dart'
    as _i53;
import 'features/chefs/data/repositories/chefs_repository_imp.dart' as _i55;
import 'features/chefs/domain/repositories/chefs_repository.dart' as _i54;
import 'features/chefs/domain/use_cases/get_most_recent.dart' as _i69;
import 'features/chefs/domain/use_cases/get_nearest.dart' as _i70;
import 'features/chefs/domain/use_cases/get_top_orders.dart' as _i72;
import 'features/chefs/domain/use_cases/get_top_rated.dart' as _i73;
import 'features/chefs/presentation/bloc/chefs_bloc.dart' as _i118;
import 'features/current_subscriptions/data/data_sources/local/current_subscriptions_local_data_source.dart'
    as _i56;
import 'features/current_subscriptions/data/data_sources/local/current_subscriptions_local_data_source_imp.dart'
    as _i57;
import 'features/current_subscriptions/data/data_sources/remote/current_subscriptions_remote_data_source.dart'
    as _i58;
import 'features/current_subscriptions/data/data_sources/remote/current_subscriptions_remote_data_source_imp.dart'
    as _i59;
import 'features/current_subscriptions/data/repositories/current_subscriptions_repository_imp.dart'
    as _i61;
import 'features/current_subscriptions/domain/repositories/current_subscriptions_repository.dart'
    as _i60;
import 'features/current_subscriptions/domain/use_cases/get_current_subscriptions_use_case.dart'
    as _i68;
import 'features/current_subscriptions/domain/use_cases/get_subscription_order_use_case.dart'
    as _i71;
import 'features/current_subscriptions/presentation/bloc/current_subscriptions_bloc.dart'
    as _i119;
import 'features/meal/data/data_sources/local/meal_local_data_source.dart'
    as _i74;
import 'features/meal/data/data_sources/local/meal_local_data_source_imp.dart'
    as _i75;
import 'features/meal/data/data_sources/remote/meal_remote_data_source.dart'
    as _i6;
import 'features/meal/data/data_sources/remote/meal_remote_data_source_imp.dart'
    as _i7;
import 'features/meal/data/repositories/meal_repository_imp.dart' as _i77;
import 'features/meal/domain/repositories/meal_repository.dart' as _i76;
import 'features/meal/domain/use_cases/add_meal_to_cart_use_case.dart' as _i110;
import 'features/meal/domain/use_cases/add_to_favourite_use_case.dart' as _i111;
import 'features/meal/domain/use_cases/check_add_to_cart_availability_use_case.dart'
    as _i115;
import 'features/meal/domain/use_cases/get_all_cart_meals_quantity_use_case.dart'
    as _i120;
import 'features/meal/domain/use_cases/get_cart_meal_quantity.dart' as _i123;
import 'features/meal/domain/use_cases/get_meal_use_case.dart' as _i125;
import 'features/meal/domain/use_cases/remove_from_favourite_use_case.dart'
    as _i96;
import 'features/meal/presentation/bloc/meal_bloc.dart' as _i135;
import 'features/meals/data/data_sources/local/meals_local_data_source.dart'
    as _i78;
import 'features/meals/data/data_sources/local/meals_local_data_source_imp.dart'
    as _i79;
import 'features/meals/data/data_sources/remote/meals_remote_data_source.dart'
    as _i8;
import 'features/meals/data/data_sources/remote/meals_remote_data_source_imp.dart'
    as _i9;
import 'features/meals/data/repositories/meals_repository_imp.dart' as _i81;
import 'features/meals/domain/repositories/meals_repository.dart' as _i80;
import 'features/meals/domain/use_cases/get_all_offered_meals_use_case.dart'
    as _i121;
import 'features/meals/domain/use_cases/get_all_subscriptions_use_case.dart'
    as _i122;
import 'features/meals/domain/use_cases/get_offered_meals_use_case.dart'
    as _i126;
import 'features/meals/domain/use_cases/get_recent_meals_use_case.dart'
    as _i129;
import 'features/meals/domain/use_cases/get_top_ordered_meals_use_case.dart'
    as _i132;
import 'features/meals/domain/use_cases/get_top_rated_meals_use_case.dart'
    as _i133;
import 'features/meals/domain/use_cases/get_top_subscriptions_meals_use_case.dart'
    as _i134;
import 'features/meals/presentation/bloc/meals_bloc.dart' as _i136;
import 'features/order/data/data_sources/local/order_local_data_source.dart'
    as _i83;
import 'features/order/data/data_sources/local/order_local_data_source_imp.dart'
    as _i84;
import 'features/order/data/data_sources/remote/order_remote_data_source.dart'
    as _i11;
import 'features/order/data/data_sources/remote/order_remote_data_source_imp.dart'
    as _i12;
import 'features/order/data/repositories/order_repository_imp.dart' as _i86;
import 'features/order/domain/repositories/order_repository.dart' as _i85;
import 'features/order/domain/use_cases/rate_order_use_case.dart' as _i95;
import 'features/order/domain/use_cases/report_order_use_case.dart' as _i97;
import 'features/order/domain/use_cases/show_order_use_case.dart' as _i127;
import 'features/order/presentation/bloc/order_bloc.dart' as _i137;
import 'features/orders/data/data_sources/local/orders_local_data_source.dart'
    as _i87;
import 'features/orders/data/data_sources/local/orders_local_data_source_imp.dart'
    as _i88;
import 'features/orders/data/data_sources/remote/orders_remote_data_source.dart'
    as _i13;
import 'features/orders/data/data_sources/remote/orders_remote_data_source_imp.dart'
    as _i14;
import 'features/orders/data/repositories/orders_repository_imp.dart' as _i90;
import 'features/orders/domain/repositories/orders_repository.dart' as _i89;
import 'features/orders/domain/use_cases/cancel_order_use_case.dart' as _i113;
import 'features/orders/domain/use_cases/get_current_orders_use_case.dart'
    as _i124;
import 'features/orders/domain/use_cases/get_previous_orders_use_case.dart'
    as _i128;
import 'features/orders/presentation/bloc/orders_bloc.dart' as _i138;
import 'features/profile/data/data_sources/local/profile_local_data_source.dart'
    as _i91;
import 'features/profile/data/data_sources/local/profile_local_data_source_imp.dart'
    as _i92;
import 'features/profile/data/data_sources/remote/profile_remote_data_source.dart'
    as _i16;
import 'features/profile/data/data_sources/remote/profile_remote_data_source_imp.dart'
    as _i17;
import 'features/profile/data/repositories/profile_repository_imp.dart' as _i94;
import 'features/profile/domain/repositories/profile_repository.dart' as _i93;
import 'features/profile/presentation/bloc/profile_bloc.dart' as _i15;
import 'features/search/data/data_sources/local/search_local_data_source.dart'
    as _i99;
import 'features/search/data/data_sources/local/search_local_data_source_imp.dart'
    as _i100;
import 'features/search/data/data_sources/remote/search_remote_data_source.dart'
    as _i18;
import 'features/search/data/data_sources/remote/search_remote_data_source_imp.dart'
    as _i19;
import 'features/search/data/repositories/search_repository_imp.dart' as _i102;
import 'features/search/domain/repositories/search_repository.dart' as _i101;
import 'features/search/domain/use_cases/search_chefs.dart' as _i139;
import 'features/search/domain/use_cases/search_meals.dart' as _i140;
import 'features/search/domain/use_cases/search_subscriptions.dart' as _i103;
import 'features/splash/data/data_source/local/splash_local_data_source.dart'
    as _i21;
import 'features/splash/data/data_source/local/splash_local_data_source_imp.dart'
    as _i22;
import 'features/splash/data/data_source/remote/splash_remote_data_source.dart'
    as _i23;
import 'features/splash/data/data_source/remote/splash_remote_data_source_imp.dart'
    as _i24;
import 'features/splash/data/repository/splash_repository_imp.dart' as _i106;
import 'features/splash/domain/repository/splash_repository.dart' as _i105;
import 'features/splash/domain/use_cases/check_auth_use_case.dart' as _i116;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i141;
import 'features/subscription/data/data_sources/local/subscription_local_data_source.dart'
    as _i25;
import 'features/subscription/data/data_sources/local/subscription_local_data_source_imp.dart'
    as _i26;
import 'features/subscription/data/data_sources/remote/subscription_remote_data_source.dart'
    as _i27;
import 'features/subscription/data/data_sources/remote/subscription_remote_data_source_imp.dart'
    as _i28;
import 'features/subscription/data/repositories/subscription_repository_imp.dart'
    as _i108;
import 'features/subscription/domain/repositories/subscription_repository.dart'
    as _i107;
import 'features/subscription/domain/use_cases/get_subscription_meals_use_case.dart'
    as _i130;
import 'features/subscription/domain/use_cases/get_subscription_use_case.dart'
    as _i131;
import 'features/subscription/domain/use_cases/subscribe_use_case.dart'
    as _i142;
import 'features/subscription/presentation/bloc/subscription_bloc.dart'
    as _i143;
import 'injection.dart' as _i144; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i18.SearchRemoteDataSource>(
      () => _i19.SearchRemoteDataSourceImp(dio: get<_i4.Dio>()));
  await gh.factoryAsync<_i20.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i21.SplashLocalDataSource>(() =>
      _i22.SplashLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i23.SplashRemoteDataSource>(
      () => _i24.SplashRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i25.SubscriptionLocalDataSource>(() =>
      _i26.SubscriptionLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i27.SubscriptionRemoteDataSource>(
      () => _i28.SubscriptionRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i29.AuthLocalDataSource>(() => _i30.AuthLocalDataSourceImp(
      sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i31.AuthRemoteDataSource>(
      () => _i32.AuthRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i33.AuthRepository>(() => _i34.AuthRepositoryImp(
      get<_i29.AuthLocalDataSource>(), get<_i31.AuthRemoteDataSource>()));
  gh.lazySingleton<_i35.BaseLocalDataSource>(() => _i35.BaseLocalDataSourceImpl(
      sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i36.BaseRepository>(() => _i36.BaseRepositoryImpl(
      baseLocalDataSource: get<_i35.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i37.CartLocalDataSource>(() => _i38.CartLocalDataSourceImp(
      sharedPreferences: get<_i20.SharedPreferences>(),
      cartDataBaseManager: get<_i3.CartDataBaseManager>()));
  gh.lazySingleton<_i39.CartRemoteDataSource>(
      () => _i40.CartRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i41.CartRepository>(() => _i42.CartRepositoryImp(
      get<_i39.CartRemoteDataSource>(), get<_i37.CartLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i43.CheckCodeUseCase>(
      () => _i43.CheckCodeUseCase(get<_i33.AuthRepository>()));
  gh.lazySingleton<_i44.ChefMenuLocalDataSource>(() =>
      _i45.ChefMenuLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i46.ChefMenuRemoteDataSource>(
      () => _i47.ChefMenuRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i48.ChefMenuRepository>(() => _i49.ChefMenuRepositoryImp(
      get<_i46.ChefMenuRemoteDataSource>(),
      get<_i44.ChefMenuLocalDataSource>()));
  gh.lazySingleton<_i50.ChefsLocalDataSource>(() =>
      _i51.ShowMenuLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i52.ChefsRemoteDataSource>(
      () => _i53.ShowMenuRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i54.ChefsRepository>(() => _i55.ChefsRepositoryImp(
      get<_i52.ChefsRemoteDataSource>(), get<_i50.ChefsLocalDataSource>()));
  gh.lazySingleton<_i56.CurrentSubscriptionsLocalDataSource>(() =>
      _i57.CurrentSubscriptionsLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i58.CurrentSubscriptionsRemoteDataSource>(
      () => _i59.CurrentSubscriptionsRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i60.CurrentSubscriptionsRepository>(() =>
      _i61.CurrentSubscriptionsRepositoryImp(
          get<_i56.CurrentSubscriptionsLocalDataSource>(),
          get<_i58.CurrentSubscriptionsRemoteDataSource>(),
          baseLocalDataSource: get<_i35.BaseLocalDataSource>(),
          networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i62.DeleteCartItemUseCase>(
      () => _i62.DeleteCartItemUseCase(get<_i41.CartRepository>()));
  gh.lazySingleton<_i63.GetCartItemsUseCase>(
      () => _i63.GetCartItemsUseCase(get<_i41.CartRepository>()));
  gh.lazySingleton<_i64.GetChefCategoriesUseCase>(
      () => _i64.GetChefCategoriesUseCase(get<_i48.ChefMenuRepository>()));
  gh.lazySingleton<_i65.GetChefCategoryMealsUseCase>(
      () => _i65.GetChefCategoryMealsUseCase(get<_i48.ChefMenuRepository>()));
  gh.lazySingleton<_i66.GetChefInfoUseCase>(
      () => _i66.GetChefInfoUseCase(get<_i48.ChefMenuRepository>()));
  gh.lazySingleton<_i67.GetChefSubscriptionsUseCase>(
      () => _i67.GetChefSubscriptionsUseCase(get<_i48.ChefMenuRepository>()));
  gh.lazySingleton<_i68.GetCurrentSubscriptionsUseCase>(() =>
      _i68.GetCurrentSubscriptionsUseCase(
          get<_i60.CurrentSubscriptionsRepository>()));
  gh.lazySingleton<_i69.GetMostRecentChefsUseCase>(
      () => _i69.GetMostRecentChefsUseCase(get<_i54.ChefsRepository>()));
  gh.lazySingleton<_i70.GetNearestChefsUseCase>(
      () => _i70.GetNearestChefsUseCase(get<_i54.ChefsRepository>()));
  gh.lazySingleton<_i71.GetSubscriptionOrdersUseCase>(() =>
      _i71.GetSubscriptionOrdersUseCase(
          get<_i60.CurrentSubscriptionsRepository>()));
  gh.lazySingleton<_i72.GetTopOrdersChefsUseCase>(
      () => _i72.GetTopOrdersChefsUseCase(get<_i54.ChefsRepository>()));
  gh.lazySingleton<_i73.GetTopRatedChefsUseCase>(
      () => _i73.GetTopRatedChefsUseCase(get<_i54.ChefsRepository>()));
  gh.lazySingleton<_i74.MealLocalDataSource>(() => _i75.MealLocalDataSourceImp(
      sharedPreferences: get<_i20.SharedPreferences>(),
      cartDataBaseManager: get<_i3.CartDataBaseManager>()));
  gh.lazySingleton<_i76.MealRepository>(() => _i77.MealRepositoryImp(
      get<_i74.MealLocalDataSource>(), get<_i6.MealRemoteDataSource>(),
      baseLocalDataSource: get<_i35.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i78.MealsLocalDataSource>(() =>
      _i79.MealsLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i80.MealsRepository>(() => _i81.MealsRepositoryImp(
      get<_i78.MealsLocalDataSource>(), get<_i8.MealsRemoteDataSource>()));
  gh.lazySingleton<_i82.OrderCartUseCase>(
      () => _i82.OrderCartUseCase(get<_i41.CartRepository>()));
  gh.lazySingleton<_i83.OrderLocalDataSource>(() =>
      _i84.OrderLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i85.OrderRepository>(() => _i86.OrderRepositoryImp(
      get<_i11.OrderRemoteDataSource>(), get<_i83.OrderLocalDataSource>(),
      baseLocalDataSource: get<_i35.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i87.OrdersLocalDataSource>(() =>
      _i88.OrdersLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i89.OrdersRepository>(() => _i90.OrdersRepositoryImp(
      get<_i13.OrdersRemoteDataSource>(), get<_i87.OrdersLocalDataSource>(),
      baseLocalDataSource: get<_i35.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i91.ProfileLocalDataSource>(() =>
      _i92.ProfileLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i93.ProfileRepository>(() => _i94.ProfileRepositoryImp(
      get<_i91.ProfileLocalDataSource>(), get<_i16.ProfileRemoteDataSource>(),
      baseLocalDataSource: get<_i35.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i95.RateOrderUseCase>(
      () => _i95.RateOrderUseCase(get<_i85.OrderRepository>()));
  gh.lazySingleton<_i96.RemoveFromFavouriteUseCase>(
      () => _i96.RemoveFromFavouriteUseCase(get<_i76.MealRepository>()));
  gh.lazySingleton<_i97.ReportOrderUseCase>(
      () => _i97.ReportOrderUseCase(get<_i85.OrderRepository>()));
  gh.lazySingleton<_i98.RequestRegisterUseCase>(
      () => _i98.RequestRegisterUseCase(get<_i33.AuthRepository>()));
  gh.lazySingleton<_i99.SearchLocalDataSource>(() =>
      _i100.SearchLocalDataSourceImpl(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i101.SearchRepo>(() => _i102.SearchRepoImp(
      get<_i99.SearchLocalDataSource>(), get<_i18.SearchRemoteDataSource>()));
  gh.lazySingleton<_i103.SearchSubscriptionsUseCase>(
      () => _i103.SearchSubscriptionsUseCase(get<_i101.SearchRepo>()));
  gh.lazySingleton<_i104.SendCodeUseCase>(
      () => _i104.SendCodeUseCase(get<_i33.AuthRepository>()));
  gh.lazySingleton<_i105.SplashRepository>(() => _i106.SplashRepositoryImp(
      get<_i21.SplashLocalDataSource>(), get<_i23.SplashRemoteDataSource>(),
      baseLocalDataSource: get<_i35.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i107.SubscriptionRepository>(() =>
      _i108.SubscriptionRepositoryImp(get<_i25.SubscriptionLocalDataSource>(),
          get<_i27.SubscriptionRemoteDataSource>(),
          baseLocalDataSource: get<_i35.BaseLocalDataSource>(),
          networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i109.UpdateCartItemQuantityUseCase>(
      () => _i109.UpdateCartItemQuantityUseCase(get<_i41.CartRepository>()));
  gh.lazySingleton<_i110.AddMealToCartUseCase>(
      () => _i110.AddMealToCartUseCase(get<_i76.MealRepository>()));
  gh.lazySingleton<_i111.AddToFavouriteUseCase>(
      () => _i111.AddToFavouriteUseCase(get<_i76.MealRepository>()));
  gh.factory<_i112.AuthBloc>(() => _i112.AuthBloc(get<_i43.CheckCodeUseCase>(),
      get<_i98.RequestRegisterUseCase>(), get<_i104.SendCodeUseCase>()));
  gh.lazySingleton<_i113.CancelOrderUseCase>(
      () => _i113.CancelOrderUseCase(get<_i89.OrdersRepository>()));
  gh.factory<_i114.CartBloc>(() => _i114.CartBloc(
      get<_i63.GetCartItemsUseCase>(),
      get<_i82.OrderCartUseCase>(),
      get<_i62.DeleteCartItemUseCase>(),
      get<_i109.UpdateCartItemQuantityUseCase>()));
  gh.lazySingleton<_i115.CheckAddToCartAvailabilityUseCase>(() =>
      _i115.CheckAddToCartAvailabilityUseCase(get<_i76.MealRepository>()));
  gh.lazySingleton<_i116.CheckAuthUseCase>(
      () => _i116.CheckAuthUseCase(get<_i105.SplashRepository>()));
  gh.factory<_i117.ChefMenuBloc>(() => _i117.ChefMenuBloc(
      get<_i64.GetChefCategoriesUseCase>(),
      get<_i65.GetChefCategoryMealsUseCase>(),
      get<_i66.GetChefInfoUseCase>(),
      get<_i67.GetChefSubscriptionsUseCase>()));
  gh.factory<_i118.ChefsBloc>(() => _i118.ChefsBloc(
      get<_i70.GetNearestChefsUseCase>(),
      get<_i72.GetTopOrdersChefsUseCase>(),
      get<_i73.GetTopRatedChefsUseCase>(),
      get<_i69.GetMostRecentChefsUseCase>()));
  gh.factory<_i119.CurrentSubscriptionsBloc>(() =>
      _i119.CurrentSubscriptionsBloc(
          get<_i68.GetCurrentSubscriptionsUseCase>(),
          get<_i71.GetSubscriptionOrdersUseCase>(),
          get<_i113.CancelOrderUseCase>()));
  gh.lazySingleton<_i120.GetAllCartMealsQuantityUseCase>(
      () => _i120.GetAllCartMealsQuantityUseCase(get<_i76.MealRepository>()));
  gh.lazySingleton<_i121.GetAllOfferedMealsUseCase>(
      () => _i121.GetAllOfferedMealsUseCase(get<_i80.MealsRepository>()));
  gh.lazySingleton<_i122.GetAllSubscriptionsUseCase>(
      () => _i122.GetAllSubscriptionsUseCase(get<_i80.MealsRepository>()));
  gh.lazySingleton<_i123.GetCartMealQuantityUseCase>(
      () => _i123.GetCartMealQuantityUseCase(get<_i76.MealRepository>()));
  gh.lazySingleton<_i124.GetCurrentOrdersUseCase>(
      () => _i124.GetCurrentOrdersUseCase(get<_i89.OrdersRepository>()));
  gh.lazySingleton<_i125.GetMealUseCase>(
      () => _i125.GetMealUseCase(get<_i76.MealRepository>()));
  gh.lazySingleton<_i126.GetOfferedMealsUseCase>(
      () => _i126.GetOfferedMealsUseCase(get<_i80.MealsRepository>()));
  gh.lazySingleton<_i127.GetOrderUseCase>(
      () => _i127.GetOrderUseCase(get<_i85.OrderRepository>()));
  gh.lazySingleton<_i128.GetPreviousOrdersUseCase>(
      () => _i128.GetPreviousOrdersUseCase(get<_i89.OrdersRepository>()));
  gh.lazySingleton<_i129.GetRecentMealsUseCase>(
      () => _i129.GetRecentMealsUseCase(get<_i80.MealsRepository>()));
  gh.lazySingleton<_i130.GetSubscriptionMealsUseCase>(() =>
      _i130.GetSubscriptionMealsUseCase(get<_i107.SubscriptionRepository>()));
  gh.lazySingleton<_i131.GetSubscriptionUseCase>(
      () => _i131.GetSubscriptionUseCase(get<_i107.SubscriptionRepository>()));
  gh.lazySingleton<_i132.GetTopOrderedMealsUseCase>(
      () => _i132.GetTopOrderedMealsUseCase(get<_i80.MealsRepository>()));
  gh.lazySingleton<_i133.GetTopRatedMealsUseCase>(
      () => _i133.GetTopRatedMealsUseCase(get<_i80.MealsRepository>()));
  gh.lazySingleton<_i134.GetTopSubscriptionsUseCase>(
      () => _i134.GetTopSubscriptionsUseCase(get<_i80.MealsRepository>()));
  gh.factory<_i135.MealBloc>(() => _i135.MealBloc(
      get<_i125.GetMealUseCase>(),
      get<_i96.RemoveFromFavouriteUseCase>(),
      get<_i111.AddToFavouriteUseCase>(),
      get<_i110.AddMealToCartUseCase>(),
      get<_i115.CheckAddToCartAvailabilityUseCase>(),
      get<_i120.GetAllCartMealsQuantityUseCase>(),
      get<_i123.GetCartMealQuantityUseCase>()));
  gh.factory<_i136.MealsBloc>(() => _i136.MealsBloc(
      get<_i126.GetOfferedMealsUseCase>(),
      get<_i129.GetRecentMealsUseCase>(),
      get<_i134.GetTopSubscriptionsUseCase>(),
      get<_i132.GetTopOrderedMealsUseCase>(),
      get<_i133.GetTopRatedMealsUseCase>(),
      get<_i121.GetAllOfferedMealsUseCase>(),
      get<_i122.GetAllSubscriptionsUseCase>()));
  gh.factory<_i137.OrderBloc>(() => _i137.OrderBloc(
      get<_i113.CancelOrderUseCase>(),
      get<_i127.GetOrderUseCase>(),
      get<_i97.ReportOrderUseCase>(),
      get<_i95.RateOrderUseCase>()));
  gh.factory<_i138.OrdersBloc>(() => _i138.OrdersBloc(
      get<_i124.GetCurrentOrdersUseCase>(),
      get<_i128.GetPreviousOrdersUseCase>(),
      get<_i113.CancelOrderUseCase>()));
  gh.lazySingleton<_i139.SearchChefsUseCase>(
      () => _i139.SearchChefsUseCase(get<_i101.SearchRepo>()));
  gh.lazySingleton<_i140.SearchMealsUseCase>(
      () => _i140.SearchMealsUseCase(get<_i101.SearchRepo>()));
  gh.factory<_i141.SplashBloc>(
      () => _i141.SplashBloc(get<_i116.CheckAuthUseCase>()));
  gh.lazySingleton<_i142.SubscribeUseCase>(
      () => _i142.SubscribeUseCase(get<_i107.SubscriptionRepository>()));
  gh.factory<_i143.SubscriptionBloc>(() => _i143.SubscriptionBloc(
      get<_i131.GetSubscriptionUseCase>(),
      get<_i130.GetSubscriptionMealsUseCase>(),
      get<_i142.SubscribeUseCase>()));
  return get;
}

class _$RegisterModule extends _i144.RegisterModule {}
