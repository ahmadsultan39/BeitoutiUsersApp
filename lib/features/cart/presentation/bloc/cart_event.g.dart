// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCartItems extends GetCartItems {
  factory _$GetCartItems([void Function(GetCartItemsBuilder)? updates]) =>
      (new GetCartItemsBuilder()..update(updates))._build();

  _$GetCartItems._() : super._();

  @override
  GetCartItems rebuild(void Function(GetCartItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCartItemsBuilder toBuilder() => new GetCartItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCartItems;
  }

  @override
  int get hashCode {
    return 318750313;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetCartItems').toString();
  }
}

class GetCartItemsBuilder
    implements Builder<GetCartItems, GetCartItemsBuilder> {
  _$GetCartItems? _$v;

  GetCartItemsBuilder();

  @override
  void replace(GetCartItems other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCartItems;
  }

  @override
  void update(void Function(GetCartItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCartItems build() => _build();

  _$GetCartItems _build() {
    final _$result = _$v ?? new _$GetCartItems._();
    replace(_$result);
    return _$result;
  }
}

class _$IncreaseQuantity extends IncreaseQuantity {
  @override
  final int cartItemIndex;
  @override
  final int cartItemId;
  @override
  final int currentQuantity;

  factory _$IncreaseQuantity(
          [void Function(IncreaseQuantityBuilder)? updates]) =>
      (new IncreaseQuantityBuilder()..update(updates))._build();

  _$IncreaseQuantity._(
      {required this.cartItemIndex,
      required this.cartItemId,
      required this.currentQuantity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        cartItemIndex, r'IncreaseQuantity', 'cartItemIndex');
    BuiltValueNullFieldError.checkNotNull(
        cartItemId, r'IncreaseQuantity', 'cartItemId');
    BuiltValueNullFieldError.checkNotNull(
        currentQuantity, r'IncreaseQuantity', 'currentQuantity');
  }

  @override
  IncreaseQuantity rebuild(void Function(IncreaseQuantityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncreaseQuantityBuilder toBuilder() =>
      new IncreaseQuantityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncreaseQuantity &&
        cartItemIndex == other.cartItemIndex &&
        cartItemId == other.cartItemId &&
        currentQuantity == other.currentQuantity;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, cartItemIndex.hashCode), cartItemId.hashCode),
        currentQuantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IncreaseQuantity')
          ..add('cartItemIndex', cartItemIndex)
          ..add('cartItemId', cartItemId)
          ..add('currentQuantity', currentQuantity))
        .toString();
  }
}

class IncreaseQuantityBuilder
    implements Builder<IncreaseQuantity, IncreaseQuantityBuilder> {
  _$IncreaseQuantity? _$v;

  int? _cartItemIndex;
  int? get cartItemIndex => _$this._cartItemIndex;
  set cartItemIndex(int? cartItemIndex) =>
      _$this._cartItemIndex = cartItemIndex;

  int? _cartItemId;
  int? get cartItemId => _$this._cartItemId;
  set cartItemId(int? cartItemId) => _$this._cartItemId = cartItemId;

  int? _currentQuantity;
  int? get currentQuantity => _$this._currentQuantity;
  set currentQuantity(int? currentQuantity) =>
      _$this._currentQuantity = currentQuantity;

  IncreaseQuantityBuilder();

  IncreaseQuantityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cartItemIndex = $v.cartItemIndex;
      _cartItemId = $v.cartItemId;
      _currentQuantity = $v.currentQuantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncreaseQuantity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncreaseQuantity;
  }

  @override
  void update(void Function(IncreaseQuantityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncreaseQuantity build() => _build();

  _$IncreaseQuantity _build() {
    final _$result = _$v ??
        new _$IncreaseQuantity._(
            cartItemIndex: BuiltValueNullFieldError.checkNotNull(
                cartItemIndex, r'IncreaseQuantity', 'cartItemIndex'),
            cartItemId: BuiltValueNullFieldError.checkNotNull(
                cartItemId, r'IncreaseQuantity', 'cartItemId'),
            currentQuantity: BuiltValueNullFieldError.checkNotNull(
                currentQuantity, r'IncreaseQuantity', 'currentQuantity'));
    replace(_$result);
    return _$result;
  }
}

class _$OrderCart extends OrderCart {
  @override
  final CartModel cart;

  factory _$OrderCart([void Function(OrderCartBuilder)? updates]) =>
      (new OrderCartBuilder()..update(updates))._build();

  _$OrderCart._({required this.cart}) : super._() {
    BuiltValueNullFieldError.checkNotNull(cart, r'OrderCart', 'cart');
  }

  @override
  OrderCart rebuild(void Function(OrderCartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderCartBuilder toBuilder() => new OrderCartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderCart && cart == other.cart;
  }

  @override
  int get hashCode {
    return $jf($jc(0, cart.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderCart')..add('cart', cart))
        .toString();
  }
}

class OrderCartBuilder implements Builder<OrderCart, OrderCartBuilder> {
  _$OrderCart? _$v;

  CartModel? _cart;
  CartModel? get cart => _$this._cart;
  set cart(CartModel? cart) => _$this._cart = cart;

  OrderCartBuilder();

  OrderCartBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cart = $v.cart;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderCart other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderCart;
  }

  @override
  void update(void Function(OrderCartBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderCart build() => _build();

  _$OrderCart _build() {
    final _$result = _$v ??
        new _$OrderCart._(
            cart: BuiltValueNullFieldError.checkNotNull(
                cart, r'OrderCart', 'cart'));
    replace(_$result);
    return _$result;
  }
}

class _$DecreaseQuantity extends DecreaseQuantity {
  @override
  final int cartItemIndex;
  @override
  final int cartItemId;
  @override
  final int currentQuantity;

  factory _$DecreaseQuantity(
          [void Function(DecreaseQuantityBuilder)? updates]) =>
      (new DecreaseQuantityBuilder()..update(updates))._build();

  _$DecreaseQuantity._(
      {required this.cartItemIndex,
      required this.cartItemId,
      required this.currentQuantity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        cartItemIndex, r'DecreaseQuantity', 'cartItemIndex');
    BuiltValueNullFieldError.checkNotNull(
        cartItemId, r'DecreaseQuantity', 'cartItemId');
    BuiltValueNullFieldError.checkNotNull(
        currentQuantity, r'DecreaseQuantity', 'currentQuantity');
  }

  @override
  DecreaseQuantity rebuild(void Function(DecreaseQuantityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DecreaseQuantityBuilder toBuilder() =>
      new DecreaseQuantityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DecreaseQuantity &&
        cartItemIndex == other.cartItemIndex &&
        cartItemId == other.cartItemId &&
        currentQuantity == other.currentQuantity;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, cartItemIndex.hashCode), cartItemId.hashCode),
        currentQuantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DecreaseQuantity')
          ..add('cartItemIndex', cartItemIndex)
          ..add('cartItemId', cartItemId)
          ..add('currentQuantity', currentQuantity))
        .toString();
  }
}

class DecreaseQuantityBuilder
    implements Builder<DecreaseQuantity, DecreaseQuantityBuilder> {
  _$DecreaseQuantity? _$v;

  int? _cartItemIndex;
  int? get cartItemIndex => _$this._cartItemIndex;
  set cartItemIndex(int? cartItemIndex) =>
      _$this._cartItemIndex = cartItemIndex;

  int? _cartItemId;
  int? get cartItemId => _$this._cartItemId;
  set cartItemId(int? cartItemId) => _$this._cartItemId = cartItemId;

  int? _currentQuantity;
  int? get currentQuantity => _$this._currentQuantity;
  set currentQuantity(int? currentQuantity) =>
      _$this._currentQuantity = currentQuantity;

  DecreaseQuantityBuilder();

  DecreaseQuantityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cartItemIndex = $v.cartItemIndex;
      _cartItemId = $v.cartItemId;
      _currentQuantity = $v.currentQuantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DecreaseQuantity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DecreaseQuantity;
  }

  @override
  void update(void Function(DecreaseQuantityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DecreaseQuantity build() => _build();

  _$DecreaseQuantity _build() {
    final _$result = _$v ??
        new _$DecreaseQuantity._(
            cartItemIndex: BuiltValueNullFieldError.checkNotNull(
                cartItemIndex, r'DecreaseQuantity', 'cartItemIndex'),
            cartItemId: BuiltValueNullFieldError.checkNotNull(
                cartItemId, r'DecreaseQuantity', 'cartItemId'),
            currentQuantity: BuiltValueNullFieldError.checkNotNull(
                currentQuantity, r'DecreaseQuantity', 'currentQuantity'));
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

class _$DeleteCartItem extends DeleteCartItem {
  @override
  final int id;

  factory _$DeleteCartItem([void Function(DeleteCartItemBuilder)? updates]) =>
      (new DeleteCartItemBuilder()..update(updates))._build();

  _$DeleteCartItem._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'DeleteCartItem', 'id');
  }

  @override
  DeleteCartItem rebuild(void Function(DeleteCartItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteCartItemBuilder toBuilder() =>
      new DeleteCartItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteCartItem && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteCartItem')..add('id', id))
        .toString();
  }
}

class DeleteCartItemBuilder
    implements Builder<DeleteCartItem, DeleteCartItemBuilder> {
  _$DeleteCartItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DeleteCartItemBuilder();

  DeleteCartItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteCartItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteCartItem;
  }

  @override
  void update(void Function(DeleteCartItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteCartItem build() => _build();

  _$DeleteCartItem _build() {
    final _$result = _$v ??
        new _$DeleteCartItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DeleteCartItem', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GetCartAllMealsQuantity extends GetCartAllMealsQuantity {
  factory _$GetCartAllMealsQuantity(
          [void Function(GetCartAllMealsQuantityBuilder)? updates]) =>
      (new GetCartAllMealsQuantityBuilder()..update(updates))._build();

  _$GetCartAllMealsQuantity._() : super._();

  @override
  GetCartAllMealsQuantity rebuild(
          void Function(GetCartAllMealsQuantityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCartAllMealsQuantityBuilder toBuilder() =>
      new GetCartAllMealsQuantityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCartAllMealsQuantity;
  }

  @override
  int get hashCode {
    return 129389111;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetCartAllMealsQuantity').toString();
  }
}

class GetCartAllMealsQuantityBuilder
    implements
        Builder<GetCartAllMealsQuantity, GetCartAllMealsQuantityBuilder> {
  _$GetCartAllMealsQuantity? _$v;

  GetCartAllMealsQuantityBuilder();

  @override
  void replace(GetCartAllMealsQuantity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCartAllMealsQuantity;
  }

  @override
  void update(void Function(GetCartAllMealsQuantityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCartAllMealsQuantity build() => _build();

  _$GetCartAllMealsQuantity _build() {
    final _$result = _$v ?? new _$GetCartAllMealsQuantity._();
    replace(_$result);
    return _$result;
  }
}

class _$DeleteCart extends DeleteCart {
  factory _$DeleteCart([void Function(DeleteCartBuilder)? updates]) =>
      (new DeleteCartBuilder()..update(updates))._build();

  _$DeleteCart._() : super._();

  @override
  DeleteCart rebuild(void Function(DeleteCartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteCartBuilder toBuilder() => new DeleteCartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteCart;
  }

  @override
  int get hashCode {
    return 699774829;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'DeleteCart').toString();
  }
}

class DeleteCartBuilder implements Builder<DeleteCart, DeleteCartBuilder> {
  _$DeleteCart? _$v;

  DeleteCartBuilder();

  @override
  void replace(DeleteCart other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteCart;
  }

  @override
  void update(void Function(DeleteCartBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteCart build() => _build();

  _$DeleteCart _build() {
    final _$result = _$v ?? new _$DeleteCart._();
    replace(_$result);
    return _$result;
  }
}

class _$ReInitState extends ReInitState {
  factory _$ReInitState([void Function(ReInitStateBuilder)? updates]) =>
      (new ReInitStateBuilder()..update(updates))._build();

  _$ReInitState._() : super._();

  @override
  ReInitState rebuild(void Function(ReInitStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReInitStateBuilder toBuilder() => new ReInitStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReInitState;
  }

  @override
  int get hashCode {
    return 473026745;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ReInitState').toString();
  }
}

class ReInitStateBuilder implements Builder<ReInitState, ReInitStateBuilder> {
  _$ReInitState? _$v;

  ReInitStateBuilder();

  @override
  void replace(ReInitState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReInitState;
  }

  @override
  void update(void Function(ReInitStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReInitState build() => _build();

  _$ReInitState _build() {
    final _$result = _$v ?? new _$ReInitState._();
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
