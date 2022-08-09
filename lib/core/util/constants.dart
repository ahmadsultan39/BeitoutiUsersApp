import 'package:beitouti_users/features/auth/data/models/register_request_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Endpoints {
  static const baseUrl = "http://fe1a-46-213-19-37.ngrok.io/api/user";
  static const imageUrl = "http://fe1a-46-213-19-37.ngrok.io";
  static const sendCode = "/send-code";
  static const checkCodeAndAccessibility = "/check-code-and-accessibility";
  static const requestRegister = "/request-register";
  static const topRatedMeals = "/get-top-rated-meals";
  static const offeredMeals = "/get-meal-offers";
  static const recentMeals = "/get-recent-meals";
  static const topOrderedMeals = "/get-top-ordered-meals";
  static const topSubscriptions = "/get-top-subscriptions";
  static const nearestChefs = "/filter-nearest-chefs";
  static const topRatedChefs = "/filter-top-rated-chefs";
  static const topOrderedChefs = "/filter-top-ordered-chefs";
  static const mostRecentChefs = "/filter-newest-chefs";
  static const currentOrders = "/current-orders";
  static const favourites = "/saved-list";
  static const logout = "/logout";
  static const String searchChefs = "/search/chefs";
  static const String searchMeals = "/search/meals";
  static const String searchSubscriptions = "/search/subscriptions";

  static String getChefInfo(int id) => "/show-chef/$id";

  static String getChefCategories(int id) => "/show-chef/$id/categories";

  static String getChefSubscriptions(int id) => "/show-chef/$id/subscriptions";

  static String getSubscriptionMeals(int id) => "/show-subscription-meals/$id";

  static String getChefCategoryMeals(int chefId, int categoryId) =>
      "/show-chef/$chefId/categories/$categoryId";

  static const makeOrder = "/make-order";

  static const currentSubscriptions = "/current-subscriptions";

  static String subscriptionOrders(int subscriptionId) =>
      "/current-subscriptions/$subscriptionId/orders";

  static String previousOrders(int page) => "/previous-orders?page=$page";

  static String showMeal(int mealId) => "/show-meal/$mealId";

  static String cancelOrder(int orderId) => "/orders/$orderId/cancel";

  static String showOrder(int orderId) => "/orders/$orderId/show";

  static String rateOrder(int orderId) => "/orders/$orderId/rate";

  static String reportOrder(int orderId) => "/orders/$orderId/report";

  static String showSubscription(int subscriptionId) =>
      "/show-subscription/$subscriptionId";

  static String showSubscriptionMeals(int subscriptionId) =>
      "/show-subscription-meals/$subscriptionId";

  static String subscribe(int subscriptionId) =>
      "/subscriptions/$subscriptionId/subscribe";

  static String removeFromFavourite(int mealId) =>
      "/delete-meal-from-favorite/$mealId";

  static String addToFavourite(int mealId) => "/add-meal-to-favorite/$mealId";

  static String allOfferedMeals(int page) => "/get-all-meal-offers?page=$page";

  static String allSubscriptions(int page) =>
      "/get-all-subscriptions?page=$page";
}

class SharedPreferencesKeys {
  static String userId = 'user_id';
  static String apiToken = 'token';
  static String userName = 'user_name';
  static String userEmail = 'user_email';
  static String userPhoneNumber = 'user_phone_number';
  static String userCampusCardExpiryDate = 'user_campus_card_expiry_date';
}

class ErrorMessage {
  static String error400 = 'الطلب الذي تم إرساله غير صالح';
  static String error401 = 'فشلت عملية المصادقة مع الخادم';
  static String error403 = 'لا يوجد لديك إذن للقيام بهذه العملية';
  static String error404 = 'المورد المطلوب غير موجود';
  static String error422 = 'االبيانات المدخلة غير صحيحة';
  static String error500 = 'حدث خطأ ما في عملية التواصل مع الخادم';
  static String error503 = 'الخدمة المطلوب غير متوفرة حالياً';
  static String someThingWentWrong = 'حدث خطأ ما';
  static String nullData = 'لايوجد بيانات لعرضها';
}

class RequestBody {
  // Send Code
  static FormData sendCode({required String phoneNumber}) {
    return FormData.fromMap({
      'phone_number': phoneNumber,
    });
  }

  static Object rateOrder({
    required int rate,
    required int mealId,
    required String notes,
  }) {
    return {
      "meals": [
        {
          "id": mealId,
          "rate": rate,
          "notes": notes,
        },
      ],
    };
  }

  // Report Order
  static FormData reportOrder({
    required String reportedOn,
    required String reason,
  }) {
    return FormData.fromMap({
      'reported_on': reportedOn,
      'reason': reason,
    });
  }

  // Check Code
  static FormData checkCode({
    required String phoneNumber,
    required String code,
    required String fcmToken,
  }) {
    return FormData.fromMap({
      'phone_number': phoneNumber,
      'code': code,
      'fcm_token': fcmToken,
    });
  }

  // Subscribe
  static FormData subscribe({
    required String notes,
  }) {
    return FormData.fromMap({
      'notes': notes,
    });
  }

  // Request Register
  static FormData requestRegister({
    required RegisterRequestModel request,
    required String fcmToken,
  }) {
    return FormData.fromMap({
      'phone_number': request.phoneNumber,
      'study_specialty': request.studySpeciality,
      'national_id': request.nationalId,
      'study_year': request.studyYear,
      'campus_card_id': request.campusCardId,
      'campus_card_expiry_date': request.campusCardExpiryDate,
      'campus_unit_number': request.campusUnitNumber,
      'birth_date': request.birthDate,
      'name': request.name,
      'email': request.email,
      'location': request.location.index,
      'gender': request.gender.index,
      'fcm_token': fcmToken,
    });
  }
}

class GetOptions {
  static Options options = Options();

  static Options getOptionsWithToken(String? token, {int isPagination = 0}) {
    if (token != null && token.isNotEmpty) {
      options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': ' Bearer $token',
      };
    } else {
      options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };
    }
    return options;
  }
}

void message({
  required String message,
  required bool isError,
  required BuildContext context,
  required bloc,
}) {
  // For debug only
  debugPrint('Message is "$message"');
  debugPrint(bloc.state.toString());

  if (message.isNotEmpty) {
    if (isError) {
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red.withOpacity(1.0),
        textColor: Colors.white,
        fontSize: 16.0.sp,
      );
    } else {
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        textColor: Colors.white,
        fontSize: 16.0.sp,
      );
    }
    bloc.clearMessage();
  }
}
