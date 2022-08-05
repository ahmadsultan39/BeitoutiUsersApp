// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i22;

import 'core/data/base_local_data_source.dart' as _i37;
import 'core/data/base_repository.dart' as _i38;
import 'core/databases/cart_database.dart' as _i3;
import 'core/network/network_info.dart' as _i12;
import 'features/auth/data/data_source/local/auth_local_data_source.dart'
    as _i31;
import 'features/auth/data/data_source/local/auth_local_data_source_imp.dart'
    as _i32;
import 'features/auth/data/data_source/remote/auth_remote_data_source.dart'
    as _i33;
import 'features/auth/data/data_source/remote/auth_remote_data_source_imp.dart'
    as _i34;
import 'features/auth/data/repository/auth_repository_imp.dart' as _i36;
import 'features/auth/domain/repository/auth_repository.dart' as _i35;
import 'features/auth/domain/use_cases/check_code_use_case.dart' as _i45;
import 'features/auth/domain/use_cases/request_register_use_case.dart' as _i105;
import 'features/auth/domain/use_cases/send_code_use_case.dart' as _i111;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i119;
import 'features/cart/data/data_sources/local/cart_local_data_source.dart'
    as _i39;
import 'features/cart/data/data_sources/local/cart_local_data_source_imp.dart'
    as _i40;
import 'features/cart/data/data_sources/remote/cart_remote_data_source.dart'
    as _i41;
import 'features/cart/data/data_sources/remote/cart_remote_data_source_imp.dart'
    as _i42;
import 'features/cart/data/repositories/cart_repository_imp.dart' as _i44;
import 'features/cart/domain/repositories/cart_repository.dart' as _i43;
import 'features/cart/domain/use_cases/delete_cart_item_use_case.dart' as _i64;
import 'features/cart/domain/use_cases/get_cart_items_use_case.dart' as _i69;
import 'features/cart/domain/use_cases/increase_cart_item_quantity_use_case.dart'
    as _i116;
import 'features/cart/domain/use_cases/order_cart_use_case.dart' as _i89;
import 'features/cart/presentation/bloc/cart_bloc.dart' as _i121;
import 'features/chef_menu/data/data_sources/local/chef_menu_local_data_source.dart'
    as _i46;
import 'features/chef_menu/data/data_sources/local/chef_menu_local_data_source_imp.dart'
    as _i47;
import 'features/chef_menu/data/data_sources/remote/chef_menu_remote_data_source.dart'
    as _i48;
import 'features/chef_menu/data/data_sources/remote/chef_menu_remote_data_source_imp.dart'
    as _i49;
import 'features/chef_menu/data/repositories/chef_menu_repository_imp.dart'
    as _i51;
import 'features/chef_menu/domain/repositories/chef_menu_repository.dart'
    as _i50;
import 'features/chef_menu/domain/use_cases/get_chef_categories.dart' as _i70;
import 'features/chef_menu/domain/use_cases/get_chef_category_meals.dart'
    as _i71;
import 'features/chef_menu/domain/use_cases/get_chef_info.dart' as _i72;
import 'features/chef_menu/domain/use_cases/get_chef_subscriptions.dart'
    as _i73;
import 'features/chef_menu/presentation/bloc/chef_menu_bloc.dart' as _i124;
import 'features/chefs/data/data_sources/local/chefs_local_data_source.dart'
    as _i52;
import 'features/chefs/data/data_sources/local/chefs_local_data_source_imp.dart'
    as _i53;
import 'features/chefs/data/data_sources/remote/chefs_remote_data_source.dart'
    as _i54;
import 'features/chefs/data/data_sources/remote/chefs_remote_data_source_imp.dart'
    as _i55;
import 'features/chefs/data/repositories/chefs_repository_imp.dart' as _i57;
import 'features/chefs/domain/repositories/chefs_repository.dart' as _i56;
import 'features/chefs/domain/use_cases/get_most_recent.dart' as _i76;
import 'features/chefs/domain/use_cases/get_nearest.dart' as _i77;
import 'features/chefs/domain/use_cases/get_top_orders.dart' as _i79;
import 'features/chefs/domain/use_cases/get_top_rated.dart' as _i80;
import 'features/chefs/presentation/bloc/chefs_bloc.dart' as _i125;
import 'features/current_subscriptions/data/data_sources/local/current_subscriptions_local_data_source.dart'
    as _i58;
import 'features/current_subscriptions/data/data_sources/local/current_subscriptions_local_data_source_imp.dart'
    as _i59;
import 'features/current_subscriptions/data/data_sources/remote/current_subscriptions_remote_data_source.dart'
    as _i60;
import 'features/current_subscriptions/data/data_sources/remote/current_subscriptions_remote_data_source_imp.dart'
    as _i61;
import 'features/current_subscriptions/data/repositories/current_subscriptions_repository_imp.dart'
    as _i63;
import 'features/current_subscriptions/domain/repositories/current_subscriptions_repository.dart'
    as _i62;
import 'features/current_subscriptions/domain/use_cases/get_current_subscriptions_use_case.dart'
    as _i74;
import 'features/current_subscriptions/domain/use_cases/get_subscription_order_use_case.dart'
    as _i78;
import 'features/current_subscriptions/presentation/bloc/current_subscriptions_bloc.dart'
    as _i126;
import 'features/favourites/data/data_sources/local/favourites_local_data_source.dart'
    as _i65;
import 'features/favourites/data/data_sources/local/favourites_remote_data_source_imp.dart'
    as _i66;
import 'features/favourites/data/data_sources/remote/favourites_remote_data_source.dart'
    as _i5;
import 'features/favourites/data/data_sources/remote/favourites_remote_data_source_imp.dart'
    as _i6;
import 'features/favourites/data/repositories/favourites_repository_imp.dart'
    as _i68;
import 'features/favourites/domain/repositories/favourites_repository.dart'
    as _i67;
import 'features/favourites/domain/use_cases/get_favourite_meals_use_case.dart'
    as _i75;
import 'features/favourites/presentation/bloc/favourites__bloc.dart' as _i127;
import 'features/meal/data/data_sources/local/meal_local_data_source.dart'
    as _i81;
import 'features/meal/data/data_sources/local/meal_local_data_source_imp.dart'
    as _i82;
import 'features/meal/data/data_sources/remote/meal_remote_data_source.dart'
    as _i8;
import 'features/meal/data/data_sources/remote/meal_remote_data_source_imp.dart'
    as _i9;
import 'features/meal/data/repositories/meal_repository_imp.dart' as _i84;
import 'features/meal/domain/repositories/meal_repository.dart' as _i83;
import 'features/meal/domain/use_cases/add_meal_to_cart_use_case.dart' as _i117;
import 'features/meal/domain/use_cases/add_to_favourite_use_case.dart' as _i118;
import 'features/meal/domain/use_cases/check_add_to_cart_availability_use_case.dart'
    as _i122;
import 'features/meal/domain/use_cases/get_all_cart_meals_quantity_use_case.dart'
    as _i128;
import 'features/meal/domain/use_cases/get_cart_meal_quantity.dart' as _i131;
import 'features/meal/domain/use_cases/get_meal_use_case.dart' as _i133;
import 'features/meal/domain/use_cases/remove_from_favourite_use_case.dart'
    as _i103;
import 'features/meal/presentation/bloc/meal_bloc.dart' as _i143;
import 'features/meals/data/data_sources/local/meals_local_data_source.dart'
    as _i85;
import 'features/meals/data/data_sources/local/meals_local_data_source_imp.dart'
    as _i86;
import 'features/meals/data/data_sources/remote/meals_remote_data_source.dart'
    as _i10;
import 'features/meals/data/data_sources/remote/meals_remote_data_source_imp.dart'
    as _i11;
import 'features/meals/data/repositories/meals_repository_imp.dart' as _i88;
import 'features/meals/domain/repositories/meals_repository.dart' as _i87;
import 'features/meals/domain/use_cases/get_all_offered_meals_use_case.dart'
    as _i129;
import 'features/meals/domain/use_cases/get_all_subscriptions_use_case.dart'
    as _i130;
import 'features/meals/domain/use_cases/get_offered_meals_use_case.dart'
    as _i134;
import 'features/meals/domain/use_cases/get_recent_meals_use_case.dart'
    as _i137;
import 'features/meals/domain/use_cases/get_top_ordered_meals_use_case.dart'
    as _i140;
import 'features/meals/domain/use_cases/get_top_rated_meals_use_case.dart'
    as _i141;
import 'features/meals/domain/use_cases/get_top_subscriptions_meals_use_case.dart'
    as _i142;
import 'features/meals/presentation/bloc/meals_bloc.dart' as _i144;
import 'features/order/data/data_sources/local/order_local_data_source.dart'
    as _i90;
import 'features/order/data/data_sources/local/order_local_data_source_imp.dart'
    as _i91;
import 'features/order/data/data_sources/remote/order_remote_data_source.dart'
    as _i13;
import 'features/order/data/data_sources/remote/order_remote_data_source_imp.dart'
    as _i14;
import 'features/order/data/repositories/order_repository_imp.dart' as _i93;
import 'features/order/domain/repositories/order_repository.dart' as _i92;
import 'features/order/domain/use_cases/rate_order_use_case.dart' as _i102;
import 'features/order/domain/use_cases/report_order_use_case.dart' as _i104;
import 'features/order/domain/use_cases/show_order_use_case.dart' as _i135;
import 'features/order/presentation/bloc/order_bloc.dart' as _i145;
import 'features/orders/data/data_sources/local/orders_local_data_source.dart'
    as _i94;
import 'features/orders/data/data_sources/local/orders_local_data_source_imp.dart'
    as _i95;
import 'features/orders/data/data_sources/remote/orders_remote_data_source.dart'
    as _i15;
import 'features/orders/data/data_sources/remote/orders_remote_data_source_imp.dart'
    as _i16;
import 'features/orders/data/repositories/orders_repository_imp.dart' as _i97;
import 'features/orders/domain/repositories/orders_repository.dart' as _i96;
import 'features/orders/domain/use_cases/cancel_order_use_case.dart' as _i120;
import 'features/orders/domain/use_cases/get_current_orders_use_case.dart'
    as _i132;
import 'features/orders/domain/use_cases/get_previous_orders_use_case.dart'
    as _i136;
import 'features/orders/presentation/bloc/orders_bloc.dart' as _i146;
import 'features/profile/data/data_sources/local/profile_local_data_source.dart'
    as _i98;
import 'features/profile/data/data_sources/local/profile_local_data_source_imp.dart'
    as _i99;
import 'features/profile/data/data_sources/remote/profile_remote_data_source.dart'
    as _i18;
import 'features/profile/data/data_sources/remote/profile_remote_data_source_imp.dart'
    as _i19;
import 'features/profile/data/repositories/profile_repository_imp.dart'
    as _i101;
import 'features/profile/domain/repositories/profile_repository.dart' as _i100;
import 'features/profile/presentation/bloc/profile_bloc.dart' as _i17;
import 'features/search/data/data_sources/local/search_local_data_source.dart'
    as _i106;
import 'features/search/data/data_sources/local/search_local_data_source_imp.dart'
    as _i107;
import 'features/search/data/data_sources/remote/search_remote_data_source.dart'
    as _i20;
import 'features/search/data/data_sources/remote/search_remote_data_source_imp.dart'
    as _i21;
import 'features/search/data/repositories/search_repository_imp.dart' as _i109;
import 'features/search/domain/repositories/search_repository.dart' as _i108;
import 'features/search/domain/use_cases/search_chefs.dart' as _i147;
import 'features/search/domain/use_cases/search_meals.dart' as _i148;
import 'features/search/domain/use_cases/search_subscriptions.dart' as _i110;
import 'features/splash/data/data_source/local/splash_local_data_source.dart'
    as _i23;
import 'features/splash/data/data_source/local/splash_local_data_source_imp.dart'
    as _i24;
import 'features/splash/data/data_source/remote/splash_remote_data_source.dart'
    as _i25;
import 'features/splash/data/data_source/remote/splash_remote_data_source_imp.dart'
    as _i26;
import 'features/splash/data/repository/splash_repository_imp.dart' as _i113;
import 'features/splash/domain/repository/splash_repository.dart' as _i112;
import 'features/splash/domain/use_cases/check_auth_use_case.dart' as _i123;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i149;
import 'features/subscription/data/data_sources/local/subscription_local_data_source.dart'
    as _i27;
import 'features/subscription/data/data_sources/local/subscription_local_data_source_imp.dart'
    as _i28;
import 'features/subscription/data/data_sources/remote/subscription_remote_data_source.dart'
    as _i29;
import 'features/subscription/data/data_sources/remote/subscription_remote_data_source_imp.dart'
    as _i30;
import 'features/subscription/data/repositories/subscription_repository_imp.dart'
    as _i115;
import 'features/subscription/domain/repositories/subscription_repository.dart'
    as _i114;
import 'features/subscription/domain/use_cases/get_subscription_meals_use_case.dart'
    as _i138;
import 'features/subscription/domain/use_cases/get_subscription_use_case.dart'
    as _i139;
import 'features/subscription/domain/use_cases/subscribe_use_case.dart'
    as _i150;
import 'features/subscription/presentation/bloc/subscription_bloc.dart'
    as _i151;
import 'injection.dart' as _i152; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.CartDataBaseManager>(
      () => registerModule.cartDataBaseManager);
  gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i5.FavouritesRemoteDataSource>(
      () => _i6.FavouritesRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i7.InternetConnectionChecker>(
      () => registerModule.internetConnectionChecker);
  gh.lazySingleton<_i8.MealRemoteDataSource>(
      () => _i9.MealRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i10.MealsRemoteDataSource>(
      () => _i11.MealsRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i12.NetworkInfo>(
      () => _i12.NetworkInfoImpl(get<_i7.InternetConnectionChecker>()));
  gh.lazySingleton<_i13.OrderRemoteDataSource>(
      () => _i14.OrderRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i15.OrdersRemoteDataSource>(
      () => _i16.OrdersRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.factory<_i17.ProfileBloc>(() => _i17.ProfileBloc());
  gh.lazySingleton<_i18.ProfileRemoteDataSource>(
      () => _i19.ProfileRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i20.SearchRemoteDataSource>(
      () => _i21.SearchRemoteDataSourceImp(dio: get<_i4.Dio>()));
  await gh.factoryAsync<_i22.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i23.SplashLocalDataSource>(() =>
      _i24.SplashLocalDataSourceImp(
          sharedPreferences: get<_i22.SharedPreferences>()));
  gh.lazySingleton<_i25.SplashRemoteDataSource>(
      () => _i26.SplashRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i27.SubscriptionLocalDataSource>(() =>
      _i28.SubscriptionLocalDataSourceImp(
          sharedPreferences: get<_i22.SharedPreferences>()));
  gh.lazySingleton<_i29.SubscriptionRemoteDataSource>(
      () => _i30.SubscriptionRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i31.AuthLocalDataSource>(() => _i32.AuthLocalDataSourceImp(
      sharedPreferences: get<_i22.SharedPreferences>()));
  gh.lazySingleton<_i33.AuthRemoteDataSource>(
      () => _i34.AuthRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i35.AuthRepository>(() => _i36.AuthRepositoryImp(
      get<_i31.AuthLocalDataSource>(), get<_i33.AuthRemoteDataSource>()));
  gh.lazySingleton<_i37.BaseLocalDataSource>(() => _i37.BaseLocalDataSourceImpl(
      sharedPreferences: get<_i22.SharedPreferences>()));
  gh.lazySingleton<_i38.BaseRepository>(() => _i38.BaseRepositoryImpl(
      baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i39.CartLocalDataSource>(() => _i40.CartLocalDataSourceImp(
      sharedPreferences: get<_i22.SharedPreferences>(),
      cartDataBaseManager: get<_i3.CartDataBaseManager>()));
  gh.lazySingleton<_i41.CartRemoteDataSource>(
      () => _i42.CartRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i43.CartRepository>(() => _i44.CartRepositoryImp(
      get<_i41.CartRemoteDataSource>(), get<_i39.CartLocalDataSource>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i45.CheckCodeUseCase>(
      () => _i45.CheckCodeUseCase(get<_i35.AuthRepository>()));
  gh.lazySingleton<_i46.ChefMenuLocalDataSource>(() =>
      _i47.ChefMenuLocalDataSourceImp(
          sharedPreferences: get<_i22.SharedPreferences>()));
  gh.lazySingleton<_i48.ChefMenuRemoteDataSource>(
      () => _i49.ChefMenuRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i50.ChefMenuRepository>(() => _i51.ChefMenuRepositoryImp(
      get<_i48.ChefMenuRemoteDataSource>(),
      get<_i46.ChefMenuLocalDataSource>()));
  gh.lazySingleton<_i52.ChefsLocalDataSource>(() =>
      _i53.ShowMenuLocalDataSourceImp(
          sharedPreferences: get<_i22.SharedPreferences>()));
  gh.lazySingleton<_i54.ChefsRemoteDataSource>(
      () => _i55.ShowMenuRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i56.ChefsRepository>(() => _i57.ChefsRepositoryImp(
      get<_i54.ChefsRemoteDataSource>(), get<_i52.ChefsLocalDataSource>()));
  gh.lazySingleton<_i58.CurrentSubscriptionsLocalDataSource>(() =>
      _i59.CurrentSubscriptionsLocalDataSourceImp(
          sharedPreferences: get<_i22.SharedPreferences>()));
  gh.lazySingleton<_i60.CurrentSubscriptionsRemoteDataSource>(
      () => _i61.CurrentSubscriptionsRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i62.CurrentSubscriptionsRepository>(() =>
      _i63.CurrentSubscriptionsRepositoryImp(
          get<_i58.CurrentSubscriptionsLocalDataSource>(),
          get<_i60.CurrentSubscriptionsRemoteDataSource>(),
          baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
          networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i64.DeleteCartItemUseCase>(
      () => _i64.DeleteCartItemUseCase(get<_i43.CartRepository>()));
  gh.lazySingleton<_i65.FavouritesLocalDataSource>(() =>
      _i66.FavouritesLocalDataSourceImp(
          sharedPreferences: get<_i22.SharedPreferences>()));
  gh.lazySingleton<_i67.FavouritesRepository>(() =>
      _i68.FavouritesRepositoryImp(get<_i65.FavouritesLocalDataSource>(),
          get<_i5.FavouritesRemoteDataSource>(),
          baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
          networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i69.GetCartItemsUseCase>(
      () => _i69.GetCartItemsUseCase(get<_i43.CartRepository>()));
  gh.lazySingleton<_i70.GetChefCategoriesUseCase>(
      () => _i70.GetChefCategoriesUseCase(get<_i50.ChefMenuRepository>()));
  gh.lazySingleton<_i71.GetChefCategoryMealsUseCase>(
      () => _i71.GetChefCategoryMealsUseCase(get<_i50.ChefMenuRepository>()));
  gh.lazySingleton<_i72.GetChefInfoUseCase>(
      () => _i72.GetChefInfoUseCase(get<_i50.ChefMenuRepository>()));
  gh.lazySingleton<_i73.GetChefSubscriptionsUseCase>(
      () => _i73.GetChefSubscriptionsUseCase(get<_i50.ChefMenuRepository>()));
  gh.lazySingleton<_i74.GetCurrentSubscriptionsUseCase>(() =>
      _i74.GetCurrentSubscriptionsUseCase(
          get<_i62.CurrentSubscriptionsRepository>()));
  gh.lazySingleton<_i75.GetFavouriteMealsUseCase>(
      () => _i75.GetFavouriteMealsUseCase(get<_i67.FavouritesRepository>()));
  gh.lazySingleton<_i76.GetMostRecentChefsUseCase>(
      () => _i76.GetMostRecentChefsUseCase(get<_i56.ChefsRepository>()));
  gh.lazySingleton<_i77.GetNearestChefsUseCase>(
      () => _i77.GetNearestChefsUseCase(get<_i56.ChefsRepository>()));
  gh.lazySingleton<_i78.GetSubscriptionOrdersUseCase>(() =>
      _i78.GetSubscriptionOrdersUseCase(
          get<_i62.CurrentSubscriptionsRepository>()));
  gh.lazySingleton<_i79.GetTopOrdersChefsUseCase>(
      () => _i79.GetTopOrdersChefsUseCase(get<_i56.ChefsRepository>()));
  gh.lazySingleton<_i80.GetTopRatedChefsUseCase>(
      () => _i80.GetTopRatedChefsUseCase(get<_i56.ChefsRepository>()));
  gh.lazySingleton<_i81.MealLocalDataSource>(() => _i82.MealLocalDataSourceImp(
      sharedPreferences: get<_i22.SharedPreferences>(),
      cartDataBaseManager: get<_i3.CartDataBaseManager>()));
  gh.lazySingleton<_i83.MealRepository>(() => _i84.MealRepositoryImp(
      get<_i81.MealLocalDataSource>(), get<_i8.MealRemoteDataSource>(),
      baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i85.MealsLocalDataSource>(() =>
      _i86.MealsLocalDataSourceImp(
          sharedPreferences: get<_i22.SharedPreferences>()));
  gh.lazySingleton<_i87.MealsRepository>(() => _i88.MealsRepositoryImp(
      get<_i85.MealsLocalDataSource>(), get<_i10.MealsRemoteDataSource>()));
  gh.lazySingleton<_i89.OrderCartUseCase>(
      () => _i89.OrderCartUseCase(get<_i43.CartRepository>()));
  gh.lazySingleton<_i90.OrderLocalDataSource>(() =>
      _i91.OrderLocalDataSourceImp(
          sharedPreferences: get<_i22.SharedPreferences>()));
  gh.lazySingleton<_i92.OrderRepository>(() => _i93.OrderRepositoryImp(
      get<_i13.OrderRemoteDataSource>(), get<_i90.OrderLocalDataSource>(),
      baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i94.OrdersLocalDataSource>(() =>
      _i95.OrdersLocalDataSourceImp(
          sharedPreferences: get<_i22.SharedPreferences>()));
  gh.lazySingleton<_i96.OrdersRepository>(() => _i97.OrdersRepositoryImp(
      get<_i15.OrdersRemoteDataSource>(), get<_i94.OrdersLocalDataSource>(),
      baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i98.ProfileLocalDataSource>(() =>
      _i99.ProfileLocalDataSourceImp(
          sharedPreferences: get<_i22.SharedPreferences>()));
  gh.lazySingleton<_i100.ProfileRepository>(() => _i101.ProfileRepositoryImp(
      get<_i98.ProfileLocalDataSource>(), get<_i18.ProfileRemoteDataSource>(),
      baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i102.RateOrderUseCase>(
      () => _i102.RateOrderUseCase(get<_i92.OrderRepository>()));
  gh.lazySingleton<_i103.RemoveFromFavouriteUseCase>(
      () => _i103.RemoveFromFavouriteUseCase(get<_i83.MealRepository>()));
  gh.lazySingleton<_i104.ReportOrderUseCase>(
      () => _i104.ReportOrderUseCase(get<_i92.OrderRepository>()));
  gh.lazySingleton<_i105.RequestRegisterUseCase>(
      () => _i105.RequestRegisterUseCase(get<_i35.AuthRepository>()));
  gh.lazySingleton<_i106.SearchLocalDataSource>(() =>
      _i107.SearchLocalDataSourceImpl(
          sharedPreferences: get<_i22.SharedPreferences>()));
  gh.lazySingleton<_i108.SearchRepo>(() => _i109.SearchRepoImp(
      get<_i106.SearchLocalDataSource>(), get<_i20.SearchRemoteDataSource>()));
  gh.lazySingleton<_i110.SearchSubscriptionsUseCase>(
      () => _i110.SearchSubscriptionsUseCase(get<_i108.SearchRepo>()));
  gh.lazySingleton<_i111.SendCodeUseCase>(
      () => _i111.SendCodeUseCase(get<_i35.AuthRepository>()));
  gh.lazySingleton<_i112.SplashRepository>(() => _i113.SplashRepositoryImp(
      get<_i23.SplashLocalDataSource>(), get<_i25.SplashRemoteDataSource>(),
      baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i114.SubscriptionRepository>(() =>
      _i115.SubscriptionRepositoryImp(get<_i27.SubscriptionLocalDataSource>(),
          get<_i29.SubscriptionRemoteDataSource>(),
          baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
          networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i116.UpdateCartItemQuantityUseCase>(
      () => _i116.UpdateCartItemQuantityUseCase(get<_i43.CartRepository>()));
  gh.lazySingleton<_i117.AddMealToCartUseCase>(
      () => _i117.AddMealToCartUseCase(get<_i83.MealRepository>()));
  gh.lazySingleton<_i118.AddToFavouriteUseCase>(
      () => _i118.AddToFavouriteUseCase(get<_i83.MealRepository>()));
  gh.factory<_i119.AuthBloc>(() => _i119.AuthBloc(get<_i45.CheckCodeUseCase>(),
      get<_i105.RequestRegisterUseCase>(), get<_i111.SendCodeUseCase>()));
  gh.lazySingleton<_i120.CancelOrderUseCase>(
      () => _i120.CancelOrderUseCase(get<_i96.OrdersRepository>()));
  gh.lazySingleton<_i121.CartBloc>(() => _i121.CartBloc(
      get<_i69.GetCartItemsUseCase>(),
      get<_i89.OrderCartUseCase>(),
      get<_i64.DeleteCartItemUseCase>(),
      get<_i116.UpdateCartItemQuantityUseCase>()));
  gh.lazySingleton<_i122.CheckAddToCartAvailabilityUseCase>(() =>
      _i122.CheckAddToCartAvailabilityUseCase(get<_i83.MealRepository>()));
  gh.lazySingleton<_i123.CheckAuthUseCase>(
      () => _i123.CheckAuthUseCase(get<_i112.SplashRepository>()));
  gh.factory<_i124.ChefMenuBloc>(() => _i124.ChefMenuBloc(
      get<_i70.GetChefCategoriesUseCase>(),
      get<_i71.GetChefCategoryMealsUseCase>(),
      get<_i72.GetChefInfoUseCase>(),
      get<_i73.GetChefSubscriptionsUseCase>()));
  gh.factory<_i125.ChefsBloc>(() => _i125.ChefsBloc(
      get<_i77.GetNearestChefsUseCase>(),
      get<_i79.GetTopOrdersChefsUseCase>(),
      get<_i80.GetTopRatedChefsUseCase>(),
      get<_i76.GetMostRecentChefsUseCase>()));
  gh.factory<_i126.CurrentSubscriptionsBloc>(() =>
      _i126.CurrentSubscriptionsBloc(
          get<_i74.GetCurrentSubscriptionsUseCase>(),
          get<_i78.GetSubscriptionOrdersUseCase>(),
          get<_i120.CancelOrderUseCase>()));
  gh.factory<_i127.FavouritesBloc>(() => _i127.FavouritesBloc(
      get<_i75.GetFavouriteMealsUseCase>(),
      get<_i103.RemoveFromFavouriteUseCase>()));
  gh.lazySingleton<_i128.GetAllCartMealsQuantityUseCase>(
      () => _i128.GetAllCartMealsQuantityUseCase(get<_i83.MealRepository>()));
  gh.lazySingleton<_i129.GetAllOfferedMealsUseCase>(
      () => _i129.GetAllOfferedMealsUseCase(get<_i87.MealsRepository>()));
  gh.lazySingleton<_i130.GetAllSubscriptionsUseCase>(
      () => _i130.GetAllSubscriptionsUseCase(get<_i87.MealsRepository>()));
  gh.lazySingleton<_i131.GetCartMealQuantityUseCase>(
      () => _i131.GetCartMealQuantityUseCase(get<_i83.MealRepository>()));
  gh.lazySingleton<_i132.GetCurrentOrdersUseCase>(
      () => _i132.GetCurrentOrdersUseCase(get<_i96.OrdersRepository>()));
  gh.lazySingleton<_i133.GetMealUseCase>(
      () => _i133.GetMealUseCase(get<_i83.MealRepository>()));
  gh.lazySingleton<_i134.GetOfferedMealsUseCase>(
      () => _i134.GetOfferedMealsUseCase(get<_i87.MealsRepository>()));
  gh.lazySingleton<_i135.GetOrderUseCase>(
      () => _i135.GetOrderUseCase(get<_i92.OrderRepository>()));
  gh.lazySingleton<_i136.GetPreviousOrdersUseCase>(
      () => _i136.GetPreviousOrdersUseCase(get<_i96.OrdersRepository>()));
  gh.lazySingleton<_i137.GetRecentMealsUseCase>(
      () => _i137.GetRecentMealsUseCase(get<_i87.MealsRepository>()));
  gh.lazySingleton<_i138.GetSubscriptionMealsUseCase>(() =>
      _i138.GetSubscriptionMealsUseCase(get<_i114.SubscriptionRepository>()));
  gh.lazySingleton<_i139.GetSubscriptionUseCase>(
      () => _i139.GetSubscriptionUseCase(get<_i114.SubscriptionRepository>()));
  gh.lazySingleton<_i140.GetTopOrderedMealsUseCase>(
      () => _i140.GetTopOrderedMealsUseCase(get<_i87.MealsRepository>()));
  gh.lazySingleton<_i141.GetTopRatedMealsUseCase>(
      () => _i141.GetTopRatedMealsUseCase(get<_i87.MealsRepository>()));
  gh.lazySingleton<_i142.GetTopSubscriptionsUseCase>(
      () => _i142.GetTopSubscriptionsUseCase(get<_i87.MealsRepository>()));
  gh.factory<_i143.MealBloc>(() => _i143.MealBloc(
      get<_i133.GetMealUseCase>(),
      get<_i103.RemoveFromFavouriteUseCase>(),
      get<_i118.AddToFavouriteUseCase>(),
      get<_i117.AddMealToCartUseCase>(),
      get<_i122.CheckAddToCartAvailabilityUseCase>(),
      get<_i128.GetAllCartMealsQuantityUseCase>(),
      get<_i131.GetCartMealQuantityUseCase>()));
  gh.factory<_i144.MealsBloc>(() => _i144.MealsBloc(
      get<_i134.GetOfferedMealsUseCase>(),
      get<_i137.GetRecentMealsUseCase>(),
      get<_i142.GetTopSubscriptionsUseCase>(),
      get<_i140.GetTopOrderedMealsUseCase>(),
      get<_i141.GetTopRatedMealsUseCase>(),
      get<_i129.GetAllOfferedMealsUseCase>(),
      get<_i130.GetAllSubscriptionsUseCase>()));
  gh.factory<_i145.OrderBloc>(() => _i145.OrderBloc(
      get<_i120.CancelOrderUseCase>(),
      get<_i135.GetOrderUseCase>(),
      get<_i104.ReportOrderUseCase>(),
      get<_i102.RateOrderUseCase>()));
  gh.factory<_i146.OrdersBloc>(() => _i146.OrdersBloc(
      get<_i132.GetCurrentOrdersUseCase>(),
      get<_i136.GetPreviousOrdersUseCase>(),
      get<_i120.CancelOrderUseCase>()));
  gh.lazySingleton<_i147.SearchChefsUseCase>(
      () => _i147.SearchChefsUseCase(get<_i108.SearchRepo>()));
  gh.lazySingleton<_i148.SearchMealsUseCase>(
      () => _i148.SearchMealsUseCase(get<_i108.SearchRepo>()));
  gh.factory<_i149.SplashBloc>(
      () => _i149.SplashBloc(get<_i123.CheckAuthUseCase>()));
  gh.lazySingleton<_i150.SubscribeUseCase>(
      () => _i150.SubscribeUseCase(get<_i114.SubscriptionRepository>()));
  gh.factory<_i151.SubscriptionBloc>(() => _i151.SubscriptionBloc(
      get<_i139.GetSubscriptionUseCase>(),
      get<_i138.GetSubscriptionMealsUseCase>(),
      get<_i150.SubscribeUseCase>()));
  return get;
}

class _$RegisterModule extends _i152.RegisterModule {}
