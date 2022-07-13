// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import 'core/data/base_local_data_source.dart' as _i28;
import 'core/data/base_repository.dart' as _i29;
import 'core/databases/cart_database.dart' as _i3;
import 'core/network/network_info.dart' as _i10;
import 'features/auth/data/data_source/local/auth_local_data_source.dart'
    as _i22;
import 'features/auth/data/data_source/local/auth_local_data_source_imp.dart'
    as _i23;
import 'features/auth/data/data_source/remote/auth_remote_data_source.dart'
    as _i24;
import 'features/auth/data/data_source/remote/auth_remote_data_source_imp.dart'
    as _i25;
import 'features/auth/data/repository/auth_repository_imp.dart' as _i27;
import 'features/auth/domain/repository/auth_repository.dart' as _i26;
import 'features/auth/domain/use_cases/check_code_use_case.dart' as _i36;
import 'features/auth/domain/use_cases/request_register_use_case.dart' as _i69;
import 'features/auth/domain/use_cases/send_code_use_case.dart' as _i75;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i82;
import 'features/cart/data/data_sources/local/cart_local_data_source.dart'
    as _i30;
import 'features/cart/data/data_sources/local/cart_local_data_source_imp.dart'
    as _i31;
import 'features/cart/data/data_sources/remote/cart_remote_data_source.dart'
    as _i32;
import 'features/cart/data/data_sources/remote/cart_remote_data_source_imp.dart'
    as _i33;
import 'features/cart/data/repositories/cart_repository_imp.dart' as _i35;
import 'features/cart/domain/repositories/cart_repository.dart' as _i34;
import 'features/cart/domain/use_cases/delet_cart_item_use_case.dart' as _i50;
import 'features/cart/domain/use_cases/get_cart_items_use_case.dart' as _i49;
import 'features/cart/domain/use_cases/order_cart_use_case.dart' as _i67;
import 'features/cart/presentation/bloc/cart_bloc.dart' as _i83;
import 'features/chef_menu/data/data_sources/local/chef_menu_local_data_source.dart'
    as _i37;
import 'features/chef_menu/data/data_sources/local/chef_menu_local_data_source_imp.dart'
    as _i38;
import 'features/chef_menu/data/data_sources/remote/chef_menu_remote_data_source.dart'
    as _i39;
import 'features/chef_menu/data/data_sources/remote/chef_menu_remote_data_source_imp.dart'
    as _i40;
import 'features/chef_menu/data/repositories/chef_menu_repository_imp.dart'
    as _i42;
import 'features/chef_menu/domain/repositories/chef_menu_repository.dart'
    as _i41;
import 'features/chef_menu/domain/use_cases/get_chef_categories.dart' as _i51;
import 'features/chef_menu/domain/use_cases/get_chef_category_meals.dart'
    as _i52;
import 'features/chef_menu/domain/use_cases/get_chef_info.dart' as _i53;
import 'features/chef_menu/domain/use_cases/get_chef_subscriptions.dart'
    as _i54;
import 'features/chef_menu/presentation/bloc/chef_menu_bloc.dart' as _i85;
import 'features/chefs/data/data_sources/local/chefs_local_data_source.dart'
    as _i43;
import 'features/chefs/data/data_sources/local/chefs_local_data_source_imp.dart'
    as _i44;
import 'features/chefs/data/data_sources/remote/chefs_remote_data_source.dart'
    as _i45;
import 'features/chefs/data/data_sources/remote/chefs_remote_data_source_imp.dart'
    as _i46;
import 'features/chefs/data/repositories/chefs_repository_imp.dart' as _i48;
import 'features/chefs/domain/repositories/chefs_repository.dart' as _i47;
import 'features/chefs/domain/use_cases/get_most_recent.dart' as _i55;
import 'features/chefs/domain/use_cases/get_nearest.dart' as _i56;
import 'features/chefs/domain/use_cases/get_top_orders.dart' as _i57;
import 'features/chefs/domain/use_cases/get_top_rated.dart' as _i58;
import 'features/chefs/presentation/bloc/chefs_bloc.dart' as _i86;
import 'features/meal/data/data_sources/local/meal_local_data_source.dart'
    as _i59;
import 'features/meal/data/data_sources/local/meal_local_data_source_imp.dart'
    as _i60;
import 'features/meal/data/data_sources/remote/meal_remote_data_source.dart'
    as _i6;
import 'features/meal/data/data_sources/remote/meal_remote_data_source_imp.dart'
    as _i7;
import 'features/meal/data/repositories/meal_repository_imp.dart' as _i62;
import 'features/meal/domain/repositories/meal_repository.dart' as _i61;
import 'features/meal/domain/use_cases/add_meal_to_cart_use_case.dart' as _i80;
import 'features/meal/domain/use_cases/add_to_favourite_use_case.dart' as _i81;
import 'features/meal/domain/use_cases/get_meal_use_case.dart' as _i90;
import 'features/meal/domain/use_cases/remove_from_favourite_use_case.dart'
    as _i68;
import 'features/meal/presentation/bloc/meal_bloc.dart' as _i98;
import 'features/meals/data/data_sources/local/meals_local_data_source.dart'
    as _i63;
import 'features/meals/data/data_sources/local/meals_local_data_source_imp.dart'
    as _i64;
import 'features/meals/data/data_sources/remote/meals_remote_data_source.dart'
    as _i8;
import 'features/meals/data/data_sources/remote/meals_remote_data_source_imp.dart'
    as _i9;
import 'features/meals/data/repositories/meals_repository_imp.dart' as _i66;
import 'features/meals/domain/repositories/meals_repository.dart' as _i65;
import 'features/meals/domain/use_cases/get_all_offered_meals_use_case.dart'
    as _i87;
import 'features/meals/domain/use_cases/get_all_subscriptions_use_case.dart'
    as _i89;
import 'features/meals/domain/use_cases/get_offered_meals_use_case.dart'
    as _i91;
import 'features/meals/domain/use_cases/get_recent_meals_use_case.dart' as _i92;
import 'features/meals/domain/use_cases/get_top_ordered_meals_use_case.dart'
    as _i95;
import 'features/meals/domain/use_cases/get_top_rated_meals_use_case.dart'
    as _i96;
import 'features/meals/domain/use_cases/get_top_subscriptions_meals_use_case.dart'
    as _i97;
import 'features/meals/presentation/bloc/meals_bloc.dart' as _i99;
import 'features/orders/domain/use_cases/get_previous_orders_use_case.dart'
    as _i88;
import 'features/search/data/data_sources/local/search_local_data_source.dart'
    as _i70;
import 'features/search/data/data_sources/local/search_local_data_source_imp.dart'
    as _i71;
import 'features/search/data/data_sources/remote/search_remote_data_source.dart'
    as _i11;
import 'features/search/data/data_sources/remote/search_remote_data_source_imp.dart'
    as _i12;
import 'features/search/data/repositories/search_repository_imp.dart' as _i73;
import 'features/search/domain/repositories/search_repository.dart' as _i72;
import 'features/search/domain/use_cases/search_chefs.dart' as _i100;
import 'features/search/domain/use_cases/search_meals.dart' as _i101;
import 'features/search/domain/use_cases/search_subscriptions.dart' as _i74;
import 'features/splash/data/data_source/local/splash_local_data_source.dart'
    as _i14;
import 'features/splash/data/data_source/local/splash_local_data_source_imp.dart'
    as _i15;
import 'features/splash/data/data_source/remote/splash_remote_data_source.dart'
    as _i16;
import 'features/splash/data/data_source/remote/splash_remote_data_source_imp.dart'
    as _i17;
import 'features/splash/data/repository/splash_repository_imp.dart' as _i77;
import 'features/splash/domain/repository/splash_repository.dart' as _i76;
import 'features/splash/domain/use_cases/check_auth_use_case.dart' as _i84;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i102;
import 'features/subscription/data/data_sources/local/subscription_local_data_source.dart'
    as _i18;
import 'features/subscription/data/data_sources/local/subscription_local_data_source_imp.dart'
    as _i19;
import 'features/subscription/data/data_sources/remote/subscription_remote_data_source.dart'
    as _i20;
import 'features/subscription/data/data_sources/remote/subscription_remote_data_source_imp.dart'
    as _i21;
import 'features/subscription/data/repositories/subscription_repository_imp.dart'
    as _i79;
import 'features/subscription/domain/repositories/subscription_repository.dart'
    as _i78;
import 'features/subscription/domain/use_cases/get_subscription_meals_use_case.dart'
    as _i93;
import 'features/subscription/domain/use_cases/get_subscription_use_case.dart'
    as _i94;
import 'features/subscription/domain/use_cases/subscribe_use_case.dart'
    as _i103;
import 'features/subscription/presentation/bloc/subscription_bloc.dart'
    as _i104;
import 'injection.dart' as _i105; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i11.SearchRemoteDataSource>(
      () => _i12.SearchRemoteDataSourceImp(dio: get<_i4.Dio>()));
  await gh.factoryAsync<_i13.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i14.SplashLocalDataSource>(() =>
      _i15.SplashLocalDataSourceImp(
          sharedPreferences: get<_i13.SharedPreferences>()));
  gh.lazySingleton<_i16.SplashRemoteDataSource>(
      () => _i17.SplashRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i18.SubscriptionLocalDataSource>(() =>
      _i19.SubscriptionLocalDataSourceImp(
          sharedPreferences: get<_i13.SharedPreferences>()));
  gh.lazySingleton<_i20.SubscriptionRemoteDataSource>(
      () => _i21.SubscriptionRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i22.AuthLocalDataSource>(() => _i23.AuthLocalDataSourceImp(
      sharedPreferences: get<_i13.SharedPreferences>()));
  gh.lazySingleton<_i24.AuthRemoteDataSource>(
      () => _i25.AuthRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i26.AuthRepository>(() => _i27.AuthRepositoryImp(
      get<_i22.AuthLocalDataSource>(), get<_i24.AuthRemoteDataSource>()));
  gh.lazySingleton<_i28.BaseLocalDataSource>(() => _i28.BaseLocalDataSourceImpl(
      sharedPreferences: get<_i13.SharedPreferences>()));
  gh.lazySingleton<_i29.BaseRepository>(() => _i29.BaseRepositoryImpl(
      baseLocalDataSource: get<_i28.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i30.CartLocalDataSource>(() => _i31.CartLocalDataSourceImp(
      sharedPreferences: get<_i13.SharedPreferences>(),
      cartDataBaseManager: get<_i3.CartDataBaseManager>()));
  gh.lazySingleton<_i32.CartRemoteDataSource>(
      () => _i33.CartRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i34.CartRepository>(() => _i35.CartRepositoryImp(
      get<_i32.CartRemoteDataSource>(), get<_i30.CartLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i36.CheckCodeUseCase>(
      () => _i36.CheckCodeUseCase(get<_i26.AuthRepository>()));
  gh.lazySingleton<_i37.ChefMenuLocalDataSource>(() =>
      _i38.ChefMenuLocalDataSourceImp(
          sharedPreferences: get<_i13.SharedPreferences>()));
  gh.lazySingleton<_i39.ChefMenuRemoteDataSource>(
      () => _i40.ChefMenuRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i41.ChefMenuRepository>(() => _i42.ChefMenuRepositoryImp(
      get<_i39.ChefMenuRemoteDataSource>(),
      get<_i37.ChefMenuLocalDataSource>()));
  gh.lazySingleton<_i43.ChefsLocalDataSource>(() =>
      _i44.ShowMenuLocalDataSourceImp(
          sharedPreferences: get<_i13.SharedPreferences>()));
  gh.lazySingleton<_i45.ChefsRemoteDataSource>(
      () => _i46.ShowMenuRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i47.ChefsRepository>(() => _i48.ChefsRepositoryImp(
      get<_i45.ChefsRemoteDataSource>(), get<_i43.ChefsLocalDataSource>()));
  gh.lazySingleton<_i49.GetCartItemsUseCase>(
      () => _i49.GetCartItemsUseCase(get<_i34.CartRepository>()));
  gh.lazySingleton<_i50.GetCartItemsUseCase>(
      () => _i50.GetCartItemsUseCase(get<_i34.CartRepository>()));
  gh.lazySingleton<_i51.GetChefCategoriesUseCase>(
      () => _i51.GetChefCategoriesUseCase(get<_i41.ChefMenuRepository>()));
  gh.lazySingleton<_i52.GetChefCategoryMealsUseCase>(
      () => _i52.GetChefCategoryMealsUseCase(get<_i41.ChefMenuRepository>()));
  gh.lazySingleton<_i53.GetChefInfoUseCase>(
      () => _i53.GetChefInfoUseCase(get<_i41.ChefMenuRepository>()));
  gh.lazySingleton<_i54.GetChefSubscriptionsUseCase>(
      () => _i54.GetChefSubscriptionsUseCase(get<_i41.ChefMenuRepository>()));
  gh.lazySingleton<_i55.GetMostRecentChefsUseCase>(
      () => _i55.GetMostRecentChefsUseCase(get<_i47.ChefsRepository>()));
  gh.lazySingleton<_i56.GetNearestChefsUseCase>(
      () => _i56.GetNearestChefsUseCase(get<_i47.ChefsRepository>()));
  gh.lazySingleton<_i57.GetTopOrdersChefsUseCase>(
      () => _i57.GetTopOrdersChefsUseCase(get<_i47.ChefsRepository>()));
  gh.lazySingleton<_i58.GetTopRatedChefsUseCase>(
      () => _i58.GetTopRatedChefsUseCase(get<_i47.ChefsRepository>()));
  gh.lazySingleton<_i59.MealLocalDataSource>(() => _i60.MealLocalDataSourceImp(
      sharedPreferences: get<_i13.SharedPreferences>(),
      cartDataBaseManager: get<_i3.CartDataBaseManager>()));
  gh.lazySingleton<_i61.MealRepository>(() => _i62.MealRepositoryImp(
      get<_i59.MealLocalDataSource>(), get<_i6.MealRemoteDataSource>(),
      baseLocalDataSource: get<_i28.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i63.MealsLocalDataSource>(() =>
      _i64.MealsLocalDataSourceImp(
          sharedPreferences: get<_i13.SharedPreferences>()));
  gh.lazySingleton<_i65.MealsRepository>(() => _i66.MealsRepositoryImp(
      get<_i63.MealsLocalDataSource>(), get<_i8.MealsRemoteDataSource>()));
  gh.lazySingleton<_i67.OrderCartUseCase>(
      () => _i67.OrderCartUseCase(get<_i34.CartRepository>()));
  gh.lazySingleton<_i68.RemoveFromFavouriteUseCase>(
      () => _i68.RemoveFromFavouriteUseCase(get<_i61.MealRepository>()));
  gh.lazySingleton<_i69.RequestRegisterUseCase>(
      () => _i69.RequestRegisterUseCase(get<_i26.AuthRepository>()));
  gh.lazySingleton<_i70.SearchLocalDataSource>(() =>
      _i71.SearchLocalDataSourceImpl(
          sharedPreferences: get<_i13.SharedPreferences>()));
  gh.lazySingleton<_i72.SearchRepo>(() => _i73.SearchRepoImp(
      get<_i70.SearchLocalDataSource>(), get<_i11.SearchRemoteDataSource>()));
  gh.lazySingleton<_i74.SearchSubscriptionsUseCase>(
      () => _i74.SearchSubscriptionsUseCase(get<_i72.SearchRepo>()));
  gh.lazySingleton<_i75.SendCodeUseCase>(
      () => _i75.SendCodeUseCase(get<_i26.AuthRepository>()));
  gh.lazySingleton<_i76.SplashRepository>(() => _i77.SplashRepositoryImp(
      get<_i14.SplashLocalDataSource>(), get<_i16.SplashRemoteDataSource>(),
      baseLocalDataSource: get<_i28.BaseLocalDataSource>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i78.SubscriptionRepository>(() =>
      _i79.SubscriptionRepositoryImp(get<_i18.SubscriptionLocalDataSource>(),
          get<_i20.SubscriptionRemoteDataSource>(),
          baseLocalDataSource: get<_i28.BaseLocalDataSource>(),
          networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i80.AddMealToCartUseCase>(
      () => _i80.AddMealToCartUseCase(get<_i61.MealRepository>()));
  gh.lazySingleton<_i81.AddToFavouriteUseCase>(
      () => _i81.AddToFavouriteUseCase(get<_i61.MealRepository>()));
  gh.factory<_i82.AuthBloc>(() => _i82.AuthBloc(get<_i36.CheckCodeUseCase>(),
      get<_i69.RequestRegisterUseCase>(), get<_i75.SendCodeUseCase>()));
  gh.factory<_i83.CartBloc>(() => _i83.CartBloc(
      get<_i49.GetCartItemsUseCase>(), get<_i67.OrderCartUseCase>()));
  gh.lazySingleton<_i84.CheckAuthUseCase>(
      () => _i84.CheckAuthUseCase(get<_i76.SplashRepository>()));
  gh.factory<_i85.ChefMenuBloc>(() => _i85.ChefMenuBloc(
      get<_i51.GetChefCategoriesUseCase>(),
      get<_i52.GetChefCategoryMealsUseCase>(),
      get<_i53.GetChefInfoUseCase>(),
      get<_i54.GetChefSubscriptionsUseCase>()));
  gh.factory<_i86.ChefsBloc>(() => _i86.ChefsBloc(
      get<_i56.GetNearestChefsUseCase>(),
      get<_i57.GetTopOrdersChefsUseCase>(),
      get<_i58.GetTopRatedChefsUseCase>(),
      get<_i55.GetMostRecentChefsUseCase>()));
  gh.lazySingleton<_i87.GetAllOfferedMealsUseCase>(
      () => _i87.GetAllOfferedMealsUseCase(get<_i65.MealsRepository>()));
  gh.lazySingleton<_i88.GetAllOfferedMealsUseCase>(
      () => _i88.GetAllOfferedMealsUseCase(get<_i65.MealsRepository>()));
  gh.lazySingleton<_i89.GetAllSubscriptionsUseCase>(
      () => _i89.GetAllSubscriptionsUseCase(get<_i65.MealsRepository>()));
  gh.lazySingleton<_i90.GetMealUseCase>(
      () => _i90.GetMealUseCase(get<_i61.MealRepository>()));
  gh.lazySingleton<_i91.GetOfferedMealsUseCase>(
      () => _i91.GetOfferedMealsUseCase(get<_i65.MealsRepository>()));
  gh.lazySingleton<_i92.GetRecentMealsUseCase>(
      () => _i92.GetRecentMealsUseCase(get<_i65.MealsRepository>()));
  gh.lazySingleton<_i93.GetSubscriptionMealsUseCase>(() =>
      _i93.GetSubscriptionMealsUseCase(get<_i78.SubscriptionRepository>()));
  gh.lazySingleton<_i94.GetSubscriptionUseCase>(
      () => _i94.GetSubscriptionUseCase(get<_i78.SubscriptionRepository>()));
  gh.lazySingleton<_i95.GetTopOrderedMealsUseCase>(
      () => _i95.GetTopOrderedMealsUseCase(get<_i65.MealsRepository>()));
  gh.lazySingleton<_i96.GetTopRatedMealsUseCase>(
      () => _i96.GetTopRatedMealsUseCase(get<_i65.MealsRepository>()));
  gh.lazySingleton<_i97.GetTopSubscriptionsUseCase>(
      () => _i97.GetTopSubscriptionsUseCase(get<_i65.MealsRepository>()));
  gh.factory<_i98.MealBloc>(() => _i98.MealBloc(
      get<_i90.GetMealUseCase>(),
      get<_i68.RemoveFromFavouriteUseCase>(),
      get<_i81.AddToFavouriteUseCase>(),
      get<_i80.AddMealToCartUseCase>()));
  gh.factory<_i99.MealsBloc>(() => _i99.MealsBloc(
      get<_i91.GetOfferedMealsUseCase>(),
      get<_i92.GetRecentMealsUseCase>(),
      get<_i97.GetTopSubscriptionsUseCase>(),
      get<_i95.GetTopOrderedMealsUseCase>(),
      get<_i96.GetTopRatedMealsUseCase>(),
      get<_i87.GetAllOfferedMealsUseCase>(),
      get<_i89.GetAllSubscriptionsUseCase>()));
  gh.lazySingleton<_i100.SearchChefsUseCase>(
      () => _i100.SearchChefsUseCase(get<_i72.SearchRepo>()));
  gh.lazySingleton<_i101.SearchMealsUseCase>(
      () => _i101.SearchMealsUseCase(get<_i72.SearchRepo>()));
  gh.factory<_i102.SplashBloc>(
      () => _i102.SplashBloc(get<_i84.CheckAuthUseCase>()));
  gh.lazySingleton<_i103.SubscribeUseCase>(
      () => _i103.SubscribeUseCase(get<_i78.SubscriptionRepository>()));
  gh.factory<_i104.SubscriptionBloc>(() => _i104.SubscriptionBloc(
      get<_i94.GetSubscriptionUseCase>(),
      get<_i93.GetSubscriptionMealsUseCase>(),
      get<_i103.SubscribeUseCase>()));
  return get;
}

class _$RegisterModule extends _i105.RegisterModule {}
