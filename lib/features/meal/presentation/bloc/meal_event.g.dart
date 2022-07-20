// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMeal extends GetMeal {
  @override
  final int mealId;

  factory _$GetMeal([void Function(GetMealBuilder)? updates]) =>
      (new GetMealBuilder()..update(updates))._build();

  _$GetMeal._({required this.mealId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(mealId, r'GetMeal', 'mealId');
  }

  @override
  GetMeal rebuild(void Function(GetMealBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMealBuilder toBuilder() => new GetMealBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMeal && mealId == other.mealId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, mealId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetMeal')..add('mealId', mealId))
        .toString();
  }
}

class GetMealBuilder implements Builder<GetMeal, GetMealBuilder> {
  _$GetMeal? _$v;

  int? _mealId;
  int? get mealId => _$this._mealId;
  set mealId(int? mealId) => _$this._mealId = mealId;

  GetMealBuilder();

  GetMealBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mealId = $v.mealId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMeal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMeal;
  }

  @override
  void update(void Function(GetMealBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMeal build() => _build();

  _$GetMeal _build() {
    final _$result = _$v ??
        new _$GetMeal._(
            mealId: BuiltValueNullFieldError.checkNotNull(
                mealId, r'GetMeal', 'mealId'));
    replace(_$result);
    return _$result;
  }
}

class _$AddToFavourite extends AddToFavourite {
  @override
  final int mealId;

  factory _$AddToFavourite([void Function(AddToFavouriteBuilder)? updates]) =>
      (new AddToFavouriteBuilder()..update(updates))._build();

  _$AddToFavourite._({required this.mealId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(mealId, r'AddToFavourite', 'mealId');
  }

  @override
  AddToFavourite rebuild(void Function(AddToFavouriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToFavouriteBuilder toBuilder() =>
      new AddToFavouriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToFavourite && mealId == other.mealId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, mealId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddToFavourite')
          ..add('mealId', mealId))
        .toString();
  }
}

class AddToFavouriteBuilder
    implements Builder<AddToFavourite, AddToFavouriteBuilder> {
  _$AddToFavourite? _$v;

  int? _mealId;
  int? get mealId => _$this._mealId;
  set mealId(int? mealId) => _$this._mealId = mealId;

  AddToFavouriteBuilder();

  AddToFavouriteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mealId = $v.mealId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToFavourite other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddToFavourite;
  }

  @override
  void update(void Function(AddToFavouriteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddToFavourite build() => _build();

  _$AddToFavourite _build() {
    final _$result = _$v ??
        new _$AddToFavourite._(
            mealId: BuiltValueNullFieldError.checkNotNull(
                mealId, r'AddToFavourite', 'mealId'));
    replace(_$result);
    return _$result;
  }
}

class _$AddMealToCart extends AddMealToCart {
  @override
  final Meal meal;
  @override
  final String notes;
  @override
  final int quantity;

  factory _$AddMealToCart([void Function(AddMealToCartBuilder)? updates]) =>
      (new AddMealToCartBuilder()..update(updates))._build();

  _$AddMealToCart._(
      {required this.meal, required this.notes, required this.quantity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(meal, r'AddMealToCart', 'meal');
    BuiltValueNullFieldError.checkNotNull(notes, r'AddMealToCart', 'notes');
    BuiltValueNullFieldError.checkNotNull(
        quantity, r'AddMealToCart', 'quantity');
  }

  @override
  AddMealToCart rebuild(void Function(AddMealToCartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddMealToCartBuilder toBuilder() => new AddMealToCartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddMealToCart &&
        meal == other.meal &&
        notes == other.notes &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, meal.hashCode), notes.hashCode), quantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddMealToCart')
          ..add('meal', meal)
          ..add('notes', notes)
          ..add('quantity', quantity))
        .toString();
  }
}

class AddMealToCartBuilder
    implements Builder<AddMealToCart, AddMealToCartBuilder> {
  _$AddMealToCart? _$v;

  Meal? _meal;
  Meal? get meal => _$this._meal;
  set meal(Meal? meal) => _$this._meal = meal;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  AddMealToCartBuilder();

  AddMealToCartBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meal = $v.meal;
      _notes = $v.notes;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddMealToCart other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddMealToCart;
  }

  @override
  void update(void Function(AddMealToCartBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddMealToCart build() => _build();

  _$AddMealToCart _build() {
    final _$result = _$v ??
        new _$AddMealToCart._(
            meal: BuiltValueNullFieldError.checkNotNull(
                meal, r'AddMealToCart', 'meal'),
            notes: BuiltValueNullFieldError.checkNotNull(
                notes, r'AddMealToCart', 'notes'),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, r'AddMealToCart', 'quantity'));
    replace(_$result);
    return _$result;
  }
}

class _$RemoveFromFavourite extends RemoveFromFavourite {
  @override
  final int mealId;

  factory _$RemoveFromFavourite(
          [void Function(RemoveFromFavouriteBuilder)? updates]) =>
      (new RemoveFromFavouriteBuilder()..update(updates))._build();

  _$RemoveFromFavourite._({required this.mealId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        mealId, r'RemoveFromFavourite', 'mealId');
  }

  @override
  RemoveFromFavourite rebuild(
          void Function(RemoveFromFavouriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveFromFavouriteBuilder toBuilder() =>
      new RemoveFromFavouriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveFromFavourite && mealId == other.mealId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, mealId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RemoveFromFavourite')
          ..add('mealId', mealId))
        .toString();
  }
}

class RemoveFromFavouriteBuilder
    implements Builder<RemoveFromFavourite, RemoveFromFavouriteBuilder> {
  _$RemoveFromFavourite? _$v;

  int? _mealId;
  int? get mealId => _$this._mealId;
  set mealId(int? mealId) => _$this._mealId = mealId;

  RemoveFromFavouriteBuilder();

  RemoveFromFavouriteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mealId = $v.mealId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveFromFavourite other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveFromFavourite;
  }

  @override
  void update(void Function(RemoveFromFavouriteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemoveFromFavourite build() => _build();

  _$RemoveFromFavourite _build() {
    final _$result = _$v ??
        new _$RemoveFromFavourite._(
            mealId: BuiltValueNullFieldError.checkNotNull(
                mealId, r'RemoveFromFavourite', 'mealId'));
    replace(_$result);
    return _$result;
  }
}

class _$CheckAddToCartAvailability extends CheckAddToCartAvailability {
  @override
  final int chefId;

  factory _$CheckAddToCartAvailability(
          [void Function(CheckAddToCartAvailabilityBuilder)? updates]) =>
      (new CheckAddToCartAvailabilityBuilder()..update(updates))._build();

  _$CheckAddToCartAvailability._({required this.chefId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        chefId, r'CheckAddToCartAvailability', 'chefId');
  }

  @override
  CheckAddToCartAvailability rebuild(
          void Function(CheckAddToCartAvailabilityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckAddToCartAvailabilityBuilder toBuilder() =>
      new CheckAddToCartAvailabilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckAddToCartAvailability && chefId == other.chefId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, chefId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckAddToCartAvailability')
          ..add('chefId', chefId))
        .toString();
  }
}

class CheckAddToCartAvailabilityBuilder
    implements
        Builder<CheckAddToCartAvailability, CheckAddToCartAvailabilityBuilder> {
  _$CheckAddToCartAvailability? _$v;

  int? _chefId;
  int? get chefId => _$this._chefId;
  set chefId(int? chefId) => _$this._chefId = chefId;

  CheckAddToCartAvailabilityBuilder();

  CheckAddToCartAvailabilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chefId = $v.chefId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckAddToCartAvailability other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckAddToCartAvailability;
  }

  @override
  void update(void Function(CheckAddToCartAvailabilityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckAddToCartAvailability build() => _build();

  _$CheckAddToCartAvailability _build() {
    final _$result = _$v ??
        new _$CheckAddToCartAvailability._(
            chefId: BuiltValueNullFieldError.checkNotNull(
                chefId, r'CheckAddToCartAvailability', 'chefId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetAllCartMealsQuantity extends GetAllCartMealsQuantity {
  factory _$GetAllCartMealsQuantity(
          [void Function(GetAllCartMealsQuantityBuilder)? updates]) =>
      (new GetAllCartMealsQuantityBuilder()..update(updates))._build();

  _$GetAllCartMealsQuantity._() : super._();

  @override
  GetAllCartMealsQuantity rebuild(
          void Function(GetAllCartMealsQuantityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAllCartMealsQuantityBuilder toBuilder() =>
      new GetAllCartMealsQuantityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllCartMealsQuantity;
  }

  @override
  int get hashCode {
    return 962394883;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetAllCartMealsQuantity').toString();
  }
}

class GetAllCartMealsQuantityBuilder
    implements
        Builder<GetAllCartMealsQuantity, GetAllCartMealsQuantityBuilder> {
  _$GetAllCartMealsQuantity? _$v;

  GetAllCartMealsQuantityBuilder();

  @override
  void replace(GetAllCartMealsQuantity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAllCartMealsQuantity;
  }

  @override
  void update(void Function(GetAllCartMealsQuantityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAllCartMealsQuantity build() => _build();

  _$GetAllCartMealsQuantity _build() {
    final _$result = _$v ?? new _$GetAllCartMealsQuantity._();
    replace(_$result);
    return _$result;
  }
}

class _$GetCartMealQuantity extends GetCartMealQuantity {
  @override
  final int mealId;

  factory _$GetCartMealQuantity(
          [void Function(GetCartMealQuantityBuilder)? updates]) =>
      (new GetCartMealQuantityBuilder()..update(updates))._build();

  _$GetCartMealQuantity._({required this.mealId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        mealId, r'GetCartMealQuantity', 'mealId');
  }

  @override
  GetCartMealQuantity rebuild(
          void Function(GetCartMealQuantityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCartMealQuantityBuilder toBuilder() =>
      new GetCartMealQuantityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCartMealQuantity && mealId == other.mealId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, mealId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetCartMealQuantity')
          ..add('mealId', mealId))
        .toString();
  }
}

class GetCartMealQuantityBuilder
    implements Builder<GetCartMealQuantity, GetCartMealQuantityBuilder> {
  _$GetCartMealQuantity? _$v;

  int? _mealId;
  int? get mealId => _$this._mealId;
  set mealId(int? mealId) => _$this._mealId = mealId;

  GetCartMealQuantityBuilder();

  GetCartMealQuantityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mealId = $v.mealId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCartMealQuantity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCartMealQuantity;
  }

  @override
  void update(void Function(GetCartMealQuantityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCartMealQuantity build() => _build();

  _$GetCartMealQuantity _build() {
    final _$result = _$v ??
        new _$GetCartMealQuantity._(
            mealId: BuiltValueNullFieldError.checkNotNull(
                mealId, r'GetCartMealQuantity', 'mealId'));
    replace(_$result);
    return _$result;
  }
}

class _$ClearMessage extends ClearMessage {
  factory _$ClearMessage([void Function(ClearMessageBuilder)? updates]) =>
      (new ClearMessageBuilder()..update(updates))._build();

  _$ClearMessage._() : super._();

  @override
  ClearMessage rebuild(void Function(ClearMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearMessageBuilder toBuilder() => new ClearMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearMessage;
  }

  @override
  int get hashCode {
    return 147402354;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ClearMessage').toString();
  }
}

class ClearMessageBuilder
    implements Builder<ClearMessage, ClearMessageBuilder> {
  _$ClearMessage? _$v;

  ClearMessageBuilder();

  @override
  void replace(ClearMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClearMessage;
  }

  @override
  void update(void Function(ClearMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClearMessage build() => _build();

  _$ClearMessage _build() {
    final _$result = _$v ?? new _$ClearMessage._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
