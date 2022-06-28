import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/databases/cart_database.dart';
import 'core/util/constants.dart';
import 'injection.config.dart';

final sl = GetIt.instance;

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  Dio get dio => getDio();

  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();

  @lazySingleton
  CartDataBaseManager get cartDataBaseManager => CartDataBaseManager();
}

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() async => $initGetIt(sl);

Dio getDio() {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: Endpoints.baseUrl,
      headers: {
        "Accept": "application/json",
      },
      responseType: ResponseType.plain,
    ),
  );
  dio.interceptors.add(
    LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
    ),
  );
  return dio;
}
