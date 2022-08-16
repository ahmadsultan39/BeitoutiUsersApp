import 'dart:convert';

import 'package:beitouti_users/core/error/exceptions.dart';
import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/features/cart/data/data_sources/remote/cart_remote_data_source_imp.dart';
import 'package:beitouti_users/features/cart/data/models/cart_meal_model.dart';
import 'package:beitouti_users/features/cart/data/models/cart_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'make_order.mocks.dart';

@GenerateMocks([Dio])
void main() {
  final MockDio mockDio = MockDio();
  final CartRemoteDataSourceImp mockCartRemoteDataSource =
      CartRemoteDataSourceImp(
    dio: mockDio,
  );
  const CartModel cartModel = CartModel(
      meals: [CartMealModel(id: 11, quantity: 3, notes: "")],
      paymentMethod: "cash",
      chefId: 3,
      selectedDeliveryTime: "2022-08-10 14:00:00",
      mealsCount: 3000,
      notes: "",
      totalCost: 7878,
      mealsCost: 3000);

  group("make order test", (){
    test(
      'Should throw Bad Request Exception',
          () async {
        when(
          mockDio.post(
            Endpoints.makeOrder,
            data: json.encode(cartModel.toJson()),
            options: GetOptions.getOptionsWithToken(""),
          ),
        ).thenThrow(
          DioError(
              requestOptions: RequestOptions(path: Endpoints.makeOrder),
              type: DioErrorType.response,
              response: Response(
                  data: json.encode({"errors": "error", "data": ""}),
                  requestOptions: RequestOptions(
                    path: Endpoints.makeOrder,
                  ),
                  statusCode: 400)),
        );

        final call = mockCartRemoteDataSource.orderCart;

        expect(
              () => call(cart: cartModel, token: ""),
          throwsA(
            const TypeMatcher<BadRequestException>(),
          ),
        );
      },
    );

    test(
      'Should throw Unauthorized Exception',
          () async {
        when(
          mockDio.post(
            Endpoints.makeOrder,
            data: json.encode(cartModel.toJson()),
            options: GetOptions.getOptionsWithToken(""),
          ),
        ).thenThrow(
          DioError(
              requestOptions: RequestOptions(path: Endpoints.makeOrder),
              type: DioErrorType.response,
              response: Response(
                  data: json.encode({"errors": "error", "data": ""}),
                  requestOptions: RequestOptions(
                    path: Endpoints.makeOrder,
                  ),
                  statusCode: 401)),
        );

        final call = mockCartRemoteDataSource.orderCart;

        expect(
              () => call(cart: cartModel, token: ""),
          throwsA(
            const TypeMatcher<UnauthorizedException>(),
          ),
        );
      },
    );

    test(
      'Should throw Forbidden Exception',
          () async {
        when(
          mockDio.post(
            Endpoints.makeOrder,
            data: json.encode(cartModel.toJson()),
            options: GetOptions.getOptionsWithToken(""),
          ),
        ).thenThrow(
          DioError(
              requestOptions: RequestOptions(path: Endpoints.makeOrder),
              type: DioErrorType.response,
              response: Response(
                  data: json.encode({"errors": "error", "data": ""}),
                  requestOptions: RequestOptions(
                    path: Endpoints.makeOrder,
                  ),
                  statusCode: 403)),
        );

        final call = mockCartRemoteDataSource.orderCart;

        expect(
              () => call(cart: cartModel, token: ""),
          throwsA(
            const TypeMatcher<ForbiddenException>(),
          ),
        );
      },
    );

    test(
      'Should throw Not Found Exception',
          () async {
        when(
          mockDio.post(
            Endpoints.makeOrder,
            data: json.encode(cartModel.toJson()),
            options: GetOptions.getOptionsWithToken(""),
          ),
        ).thenThrow(
          DioError(
              requestOptions: RequestOptions(path: Endpoints.makeOrder),
              type: DioErrorType.response,
              response: Response(
                  data: json.encode({"errors": "error", "data": ""}),
                  requestOptions: RequestOptions(
                    path: Endpoints.makeOrder,
                  ),
                  statusCode: 404)),
        );

        final call = mockCartRemoteDataSource.orderCart;

        expect(
              () => call(cart: cartModel, token: ""),
          throwsA(
            const TypeMatcher<NotFoundException>(),
          ),
        );
      },
    );

    test(
      'Should throw Unprocessable Entity Exception for 422 status code',
          () async {
        when(
          mockDio.post(
            Endpoints.makeOrder,
            data: json.encode(cartModel.toJson()),
            options: GetOptions.getOptionsWithToken(""),
          ),
        ).thenThrow(
          DioError(
              requestOptions: RequestOptions(path: Endpoints.makeOrder),
              type: DioErrorType.response,
              response: Response(
                  data: json.encode({"errors": "error", "data": ""}),
                  requestOptions: RequestOptions(
                    path: Endpoints.makeOrder,
                  ),
                  statusCode: 422)),
        );

        final call = mockCartRemoteDataSource.orderCart;

        expect(
              () => call(cart: cartModel, token: ""),
          throwsA(
            const TypeMatcher<UnprocessableEntityException>(),
          ),
        );
      },
    );

    test(
      'Should throw Unprocessable Entity Exception for 412 status code',
          () async {
        when(
          mockDio.post(
            Endpoints.makeOrder,
            data: json.encode(cartModel.toJson()),
            options: GetOptions.getOptionsWithToken(""),
          ),
        ).thenThrow(
          DioError(
              requestOptions: RequestOptions(path: Endpoints.makeOrder),
              type: DioErrorType.response,
              response: Response(
                  data: json.encode({"errors": "error", "data": ""}),
                  requestOptions: RequestOptions(
                    path: Endpoints.makeOrder,
                  ),
                  statusCode: 412)),
        );

        final call = mockCartRemoteDataSource.orderCart;

        expect(
              () => call(cart: cartModel, token: ""),
          throwsA(
            const TypeMatcher<UnprocessableEntityException>(),
          ),
        );
      },
    );

    test(
      'Should throw Internal Server Error Exception',
          () async {
        when(
          mockDio.post(
            Endpoints.makeOrder,
            data: json.encode(cartModel.toJson()),
            options: GetOptions.getOptionsWithToken(""),
          ),
        ).thenThrow(
          DioError(
              requestOptions: RequestOptions(path: Endpoints.makeOrder),
              type: DioErrorType.response,
              response: Response(
                  data: json.encode({"errors": "error", "data": ""}),
                  requestOptions: RequestOptions(
                    path: Endpoints.makeOrder,
                  ),
                  statusCode: 500)),
        );

        final call = mockCartRemoteDataSource.orderCart;

        expect(
              () => call(cart: cartModel, token: ""),
          throwsA(
            const TypeMatcher<InternalServerErrorException>(),
          ),
        );
      },
    );

    test(
      'Should throw Service Unavailable Exception',
          () async {
        when(
          mockDio.post(
            Endpoints.makeOrder,
            data: json.encode(cartModel.toJson()),
            options: GetOptions.getOptionsWithToken(""),
          ),
        ).thenThrow(
          DioError(
              requestOptions: RequestOptions(path: Endpoints.makeOrder),
              type: DioErrorType.response,
              response: Response(
                  data: json.encode({"errors": "error", "data": ""}),
                  requestOptions: RequestOptions(
                    path: Endpoints.makeOrder,
                  ),
                  statusCode: 503)),
        );

        final call = mockCartRemoteDataSource.orderCart;

        expect(
              () => call(cart: cartModel, token: ""),
          throwsA(
            const TypeMatcher<ServiceUnavailableException>(),
          ),
        );
      },
    );

    test(
      'Should throw Unhandled Dio Exception',
          () async {
        when(
          mockDio.post(
            Endpoints.makeOrder,
            data: json.encode(cartModel.toJson()),
            options: GetOptions.getOptionsWithToken(""),
          ),
        ).thenThrow(
          DioError(
              requestOptions: RequestOptions(path: Endpoints.makeOrder),
              type: DioErrorType.response,
              response: Response(
                  data: json.encode({"errors": "error", "data": ""}),
                  requestOptions: RequestOptions(
                    path: Endpoints.makeOrder,
                  ),
                  statusCode: 505)),
        );

        final call = mockCartRemoteDataSource.orderCart;

        expect(
              () => call(cart: cartModel, token: ""),
          throwsA(
            const TypeMatcher<ServerException>(),
          ),
        );
      },
    );

    test(
      'Should throw Server Exception',
          () async {
        when(
          mockDio.post(
            Endpoints.makeOrder,
            data: json.encode(cartModel.toJson()),
            options: GetOptions.getOptionsWithToken(""),
          ),
        ).thenAnswer(
                (_) async => Response(
                data: json.encode({"data": ""}),
                requestOptions: RequestOptions(
                  path: Endpoints.makeOrder,
                ),
                statusCode: 505)
        );

        final call = mockCartRemoteDataSource.orderCart;

        expect(
              () => call(cart: cartModel, token: ""),
          throwsA(
            const TypeMatcher<ServerException>(),
          ),
        );
      },
    );

    test(
      'Should complete with no Exceptions',
          () async {
        when(
          mockDio.post(
            Endpoints.makeOrder,
            data: json.encode(cartModel.toJson()),
            options: GetOptions.getOptionsWithToken(""),
          ),
        ).thenAnswer(
                (_) async => Response(
                data: json.encode({"data": ""}),
                requestOptions: RequestOptions(
                  path: Endpoints.makeOrder,
                ),
                statusCode: 201)
        );

        final call = mockCartRemoteDataSource.orderCart(cart: cartModel, token: "");

        expect(
              () => call,
          equals(
            const TypeMatcher<void>(),
          ),
        );
      },
    );
  });


}
