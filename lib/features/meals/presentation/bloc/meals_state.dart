import 'package:beitouti_users/features/meals/domain/entities/home_meal.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_subscribe.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import '../../../../core/util/enums.dart';

part 'meals_state.g.dart';

abstract class MealsState implements Built<MealsState, MealsStateBuilder> {
  bool get isLoading;

  String get message;

  bool get error;

  BuiltList<HomeMeal> get offeredMeals;

  BuiltList<HomeMeal> get topRatedMeals;

  BuiltList<HomeMeal> get recentMeals;

  BuiltList<HomeMeal> get topOrderedMeals;

  BuiltList<HomeSubscribe> get topSubscriptions;

  bool get isOfferedMealsLoading;

  bool get isTopRatedMealsLoading;

  bool get isRecentMealsLoading;

  bool get isTopOrderedMealsLoading;

  bool get isTopSubscriptionsLoading;

  MealsState._();

  factory MealsState([Function(MealsStateBuilder b) updates]) = _$MealsState;

  factory MealsState.initial() {
    return MealsState(
      (b) => b
        ..isLoading = false
        ..message = ""
        ..error = false
        ..isRecentMealsLoading = false
        ..isTopRatedMealsLoading = false
        ..isTopOrderedMealsLoading = false
        ..isOfferedMealsLoading = false
        ..isTopSubscriptionsLoading = false
        ..topSubscriptions.replace([])
        ..offeredMeals.replace([])
        ..topOrderedMeals.replace([])
        ..topRatedMeals.replace([])
        ..recentMeals.replace([]),
    );
  }
}
