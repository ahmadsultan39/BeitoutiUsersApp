import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../error/exceptions.dart';
import '../network/models/base_list_response_model.dart';
import '../network/models/base_response_model.dart';
import '../util/constants.dart';

abstract class BaseRemoteDataSource {
  // @protected
  // Future<T> performPostRequest<T, E>(
  //   String endpoint,
  //   FormData data,{
  //   Options options,
  // });
  //
  @protected
  Future<List<T>> performGetListRequest<T>({
    required String endpoint,
    required String token,
  });

  @protected
  Future<T> performGetRequest<T>(
    String endpoint,
    String token,
  );
}

class BaseRemoteDataSourceImpl extends BaseRemoteDataSource {
  final Dio dio;

  BaseRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<T>> performGetListRequest<T>(
      {required String endpoint, required String token}) async {
    debugPrint("PerformGetListRequest");
    try {
      final response = await dio.get(
        endpoint,
        options: GetOptions.getOptionsWithToken(token),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final BaseListResponseModel<T> finalResponse =
            BaseListResponseModel<T>.fromJson(json.decode(response.data));
        if (finalResponse.data != null && finalResponse.data!.isNotEmpty) {
          debugPrint("Data is not null");
          return finalResponse.data!;
        } else {
          debugPrint("Data is null");
          throw NullDataException(error: ErrorMessage.nullData);
        }
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
                e.response!.statusCode == 412 // TODO fix this habad
            ) {
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

// @override
// Future<T> performPostRequest<T, E>(
//   String endpoint,
//   FormData data, {
//   required Options options,
// }) async {
//   try {
//     final response = await dio.post(
//       endpoint,
//       data: data,
//       options: options,
//     );
//     if (response.statusCode == 200) {
//       final BaseResponseModel<T> finalResponse = serializers
//           .deserialize(json.decode(response.data));
//       if (finalResponse.status) {
//         return finalResponse.data;
//       } else {
//         print('e is error');
//         throw ServerException();
//       }
//     } else if (response.statusCode == 401) {
//       throw ServerException(error: ErrorCode.ERROR401);
//     } else {
//       print('e is error');
//       throw ServerException();
//     }
//   } catch (e) {
//     print('e is $e');
//     if (e is DioError) {
//       if (e.response.statusCode == 401) {
//         print('response code is ${e.response.statusCode}');
//         throw ServerException(error: ErrorCode.ERROR401);
//       } else {
//         throw ServerException();
//       }
//     } else if (e is ServerException) {
//       throw ServerException();
//     }
//     throw ServerException();
//   }
// }

  @override
  Future<T> performGetRequest<T>(
      String endpoint, String token) async {
    try {
      final response = await dio.get(
        endpoint,
        options: GetOptions.getOptionsWithToken(token),
      );
      if (response.statusCode == 200) {
        final BaseResponseModel<T> finalResponse =
            BaseResponseModel<T>.fromJson(json.decode(response.data));
        if (finalResponse.data != null) {
          print('data is not null');
          return finalResponse.data!;
        } else {
          print('e is error');
          throw ServerException();
        }
      } else if (response.statusCode == 401) {
        throw ServerException(error: ErrorMessage.error401);
      } else {
        print('e is error');
        throw ServerException();
      }
    } catch (e) {
      print('e is $e');
      if (e is DioError) {
        print('response code is ${e.response!.statusCode}');
        if (e.response!.statusCode == 401) {
          print('response code is ${e.response!.statusCode}');
          throw ServerException(error: ErrorMessage.error401);
        } else {
          throw ServerException();
        }
      } else if (e is ServerException) {
        throw ServerException();
      }
      throw ServerException();
    }
  }
}
