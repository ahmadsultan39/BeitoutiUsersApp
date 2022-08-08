import 'dart:convert';
import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/features/subscription/data/data_sources/remote/subscription_remote_data_source.dart';
import 'package:beitouti_users/features/subscription/data/models/subscription_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/error/exceptions.dart';
import '../../../../../core/network/models/base_response_model.dart';
import '../../models/subscription_meal_model.dart';

@LazySingleton(as: SubscriptionRemoteDataSource)
class SubscriptionRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements SubscriptionRemoteDataSource {
  SubscriptionRemoteDataSourceImp({
    required Dio dio,
  }) : super(dio: dio);

  @override
  Future<SubscriptionModel> getSubscription({
    required int subscriptionId,
    required String token,
  }) =>
      performGetRequest<SubscriptionModel>(
        endpoint: Endpoints.showSubscription(subscriptionId),
        token: token,
      );

  @override
  Future<List<SubscriptionsMealModel>> getSubscriptionMeals({
    required int subscriptionId,
    required String token,
  }) =>
      performGetListRequest<SubscriptionsMealModel>(
        endpoint: Endpoints.showSubscriptionMeals(subscriptionId),
        token: token,
      );

  @override
  Future<void> subscribe({
    required int subscriptionId,
    required String notes,
    required String token,
  }) async {
    try {
      final response = await dio.post(
        Endpoints.subscribe(subscriptionId),
        data: RequestBody.subscribe(notes: notes),
        options: GetOptions.getOptionsWithToken(token),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      } else {
        throw ServerException(error: ErrorMessage.someThingWentWrong);
      }
    } on DioError catch (e) {
      final String? errorMessage = BaseResponseModel<Null>.fromJson(
        json.decode(
          e.response!.data,
        ),
      ).errors;
      if (e.response != null) {
        if (e.response!.statusCode == 400) {
          throw BadRequestException(
            error: errorMessage ?? ErrorMessage.error400,
          );
        } else if (e.response!.statusCode == 401) {
          throw UnauthorizedException(
            error: errorMessage ?? ErrorMessage.error401,
          );
        } else if (e.response!.statusCode == 403) {
          throw ForbiddenException(
            error: errorMessage ?? ErrorMessage.error403,
          );
        } else if (e.response!.statusCode == 404) {
          throw NotFoundException(
            error: errorMessage ?? ErrorMessage.error404,
          );
        } else if (e.response!.statusCode == 422 ||
            e.response!.statusCode == 412) {
          throw UnprocessableEntityException(
            error: errorMessage ?? ErrorMessage.error422,
          );
        } else if (e.response!.statusCode == 500) {
          throw InternalServerErrorException(
            error: errorMessage ?? ErrorMessage.error500,
          );
        } else if (e.response!.statusCode == 503) {
          throw ServiceUnavailableException(
            error: errorMessage ?? ErrorMessage.error503,
          );
        } else {
          throw ServerException(
            error: ErrorMessage.someThingWentWrong,
          );
        }
      } else {
        throw ServerException(
          error: ErrorMessage.someThingWentWrong,
        );
      }
    }
  }
}
