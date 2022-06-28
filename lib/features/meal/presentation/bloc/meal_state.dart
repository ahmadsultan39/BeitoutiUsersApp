import 'package:built_value/built_value.dart';
import '../../domain/entities/meal.dart';

part 'meal_state.g.dart';

abstract class MealState implements Built<MealState, MealStateBuilder> {
  bool get isLoading;

  String get message;

  bool get error;

  Meal? get meal;

  MealState._();

  factory MealState([Function(MealStateBuilder b) updates]) = _$MealState;

  factory MealState.initial() {
    return MealState(
      (b) => b
        ..isLoading = false
        ..message = ""
        ..meal = null
        ..error = false,
    );
  }
}
