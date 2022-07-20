import 'package:built_value/built_value.dart';
import '../../domain/entities/meal.dart';

part 'meal_state.g.dart';

abstract class MealState implements Built<MealState, MealStateBuilder> {
  bool get isLoading;

  String get message;

  bool get error;

  Meal? get meal;

  bool? get isCartAvailable;

  int?
      get cartMealQuantity; // refer to quantity of this meal int the cart (if doesn't exist will be 0)

  int? get allCartMealsQuantity; // refer to quantity of all meals in the cart

  MealState._();

  factory MealState([Function(MealStateBuilder b) updates]) = _$MealState;

  factory MealState.initial() {
    return MealState(
      (b) => b
        ..isLoading = false
        ..message = ""
        ..meal = null
        ..error = false
        ..cartMealQuantity = null
        ..allCartMealsQuantity = null
        ..isCartAvailable = null,
    );
  }
}
