import 'package:beitouti_users/core/data/base_remote_datasource.dart';
import 'package:beitouti_users/features/subscription/data/models/subscription_model.dart';
import '../../models/subscription_meal_model.dart';

abstract class SubscriptionRemoteDataSource extends BaseRemoteDataSource {
  Future<SubscriptionModel> getSubscription({
    required int subscriptionId,
    required String token,
  });

  Future<List<SubscriptionsMealModel>> getSubscriptionMeals({
    required int subscriptionId,
    required String token,
  });

  Future<void> subscribe({
    required int subscriptionId,
    required String notes,
    required String token,
  });
}
