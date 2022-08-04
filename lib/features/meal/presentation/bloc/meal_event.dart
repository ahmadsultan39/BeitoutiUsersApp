import 'package:built_value/built_value.dart';

import '../../domain/entities/meal.dart';

part 'meal_event.g.dart';

abstract class MealEvent {}

abstract class GetMeal extends MealEvent
    implements Built<GetMeal, GetMealBuilder> {
  //getter fields

  int get mealId;

  GetMeal._();

  factory GetMeal([Function(GetMealBuilder b) updates]) = _$GetMeal;

  factory GetMeal.initial() {
    return GetMeal((b) => b);
  }
}

abstract class AddToFavourite extends MealEvent
    implements Built<AddToFavourite, AddToFavouriteBuilder> {
  //getter fields

  int get mealId;

  AddToFavourite._();

  factory AddToFavourite([Function(AddToFavouriteBuilder b) updates]) =
      _$AddToFavourite;

  factory AddToFavourite.initial() {
    return AddToFavourite((b) => b);
  }
}

abstract class AddMealToCart extends MealEvent
    implements Built<AddMealToCart, AddMealToCartBuilder> {
  //getter fields

  Meal get meal;

  String get notes;

  int get quantity;

  AddMealToCart._();

  factory AddMealToCart([Function(AddMealToCartBuilder b) updates]) =
      _$AddMealToCart;

  factory AddMealToCart.initial() {
    return AddMealToCart((b) => b);
  }
}

abstract class RemoveFromFavourite extends MealEvent
    implements Built<RemoveFromFavourite, RemoveFromFavouriteBuilder> {
  //getter fields

  int get mealId;

  RemoveFromFavourite._();

  factory RemoveFromFavourite(
      [Function(RemoveFromFavouriteBuilder b) updates]) = _$RemoveFromFavourite;

  factory RemoveFromFavourite.initial() {
    return RemoveFromFavourite((b) => b);
  }
}

abstract class CheckAddToCartAvailability extends MealEvent
    implements
        Built<CheckAddToCartAvailability, CheckAddToCartAvailabilityBuilder> {
  //getter fields

  int get chefId;

  CheckAddToCartAvailability._();

  factory CheckAddToCartAvailability(
          [Function(CheckAddToCartAvailabilityBuilder b) updates]) =
      _$CheckAddToCartAvailability;

  factory CheckAddToCartAvailability.initial() {
    return CheckAddToCartAvailability((b) => b);
  }
}

abstract class GetAllCartMealsQuantity extends MealEvent
    implements Built<GetAllCartMealsQuantity, GetAllCartMealsQuantityBuilder> {
  //getter fields

  GetAllCartMealsQuantity._();

  factory GetAllCartMealsQuantity(
          [Function(GetAllCartMealsQuantityBuilder b) updates]) =
      _$GetAllCartMealsQuantity;

  factory GetAllCartMealsQuantity.initial() {
    return GetAllCartMealsQuantity((b) => b);
  }
}

abstract class GetCartMealQuantity extends MealEvent
    implements Built<GetCartMealQuantity, GetCartMealQuantityBuilder> {
  //getter fields

  int get mealId;

  GetCartMealQuantity._();

  factory GetCartMealQuantity(
      [Function(GetCartMealQuantityBuilder b) updates]) = _$GetCartMealQuantity;

  factory GetCartMealQuantity.initial() {
    return GetCartMealQuantity((b) => b);
  }
}

abstract class ClearMessage extends MealEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
  _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}
