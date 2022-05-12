import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/util/constants.dart';
import 'injection.config.dart';

final sl = GetIt.instance;

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

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
      baseUrl: Endpoints.BASE_URL,
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