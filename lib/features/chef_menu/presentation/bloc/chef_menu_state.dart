
import 'package:beitouti_users/features/chef_menu/domain/entities/chef_category.dart';
import 'package:beitouti_users/features/chef_menu/domain/entities/chef_info.dart';
import 'package:beitouti_users/features/chef_menu/domain/entities/chef_meal.dart';
import 'package:beitouti_users/features/chef_menu/domain/entities/subscription.dart';
import 'package:beitouti_users/features/chef_menu/domain/entities/subscription_meal.dart';
import 'package:built_value/built_value.dart';

part 'chef_menu_state.g.dart';

abstract class ChefMenuState implements Built<ChefMenuState, ChefMenuStateBuilder> {

  bool get isCategoriesLoading;
  bool get isCategoryMealsLoading;
  bool get isChefInfoLoading;
  bool get isSubscriptionsLoading;
  bool get isSubscriptionMealsLoading;

  List<ChefCategory> get categories;
  List<ChefMeal> get categoryMeals;
  ChefInfo? get chefInfo;
  List<Subscription> get subscriptions;
  List<SubscriptionMeal> get subscriptionMeals;

  bool get error;

  String get message;

  ChefMenuState._();

  factory ChefMenuState([Function(ChefMenuStateBuilder b) updates]) = _$ChefMenuState;

  factory ChefMenuState.initial() {
    return ChefMenuState(
          (b) => b
        ..isCategoriesLoading = false
        ..isCategoryMealsLoading = false
        ..isChefInfoLoading = false
        ..isSubscriptionsLoading = false
        ..isSubscriptionMealsLoading = false
            ..categories = []
            ..categoryMeals = []
            ..subscriptions = []
            ..subscriptionMeals = []
            ..chefInfo = null
        ..error = false
        ..message = "",
    );
  }
}