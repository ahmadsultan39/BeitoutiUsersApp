import 'package:beitouti_users/features/search/domain/entities/search_chef.dart';
import 'package:beitouti_users/features/search/domain/entities/search_meal.dart';
import 'package:beitouti_users/features/search/domain/entities/search_subscription.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'search_state.g.dart';

abstract class SearchState implements Built<SearchState, SearchStateBuilder> {
  bool get isLoading;

  String get message;

  bool get error;

  BuiltList<SearchMeal> get meals;

  int get mealsPage;

  bool get isMealsFinished;

  int get totalMeals;

  bool get isMealsLoading;

  BuiltList<SearchSubscription> get subscriptions;

  int get subscriptionsPage;

  bool get isSubscriptionsFinished;

  int get totalSubscriptions;

  bool get isSubscriptionsLoading;

  BuiltList<SearchChef> get chefs;

  int get chefsPage;

  bool get isChefsFinished;

  int get totalChefs;

  bool get isChefsLoading;

  SearchState._();

  factory SearchState([Function(SearchStateBuilder b) updates]) = _$SearchState;

  factory SearchState.initial() {
    return SearchState(
      (b) => b
        ..isLoading = false
        ..message = ""
        ..error = false
        ..isMealsLoading = false
        ..isSubscriptionsLoading = false
        ..isChefsLoading = false
        ..meals.replace([])
        ..mealsPage = 0
        ..isMealsFinished = false
        ..totalMeals = 0
        ..subscriptions.replace([])
        ..subscriptionsPage = 0
        ..isSubscriptionsFinished = false
        ..totalSubscriptions = 0
        ..chefs.replace([])
        ..chefsPage = 0
        ..isChefsFinished = false
        ..totalChefs = 0,
    );
  }
}
