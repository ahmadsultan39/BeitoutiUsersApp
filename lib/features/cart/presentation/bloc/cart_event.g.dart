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
    return newBuiltValueToStringHelper('GetCartItems').toString();
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

class _$OrderCart extends OrderCart {
  @override
  final CartModel cart;

  factory _$OrderCart([void Function(OrderCartBuilder)? updates]) =>
      (new OrderCartBuilder()..update(updates))._build();

  _$OrderCart._({required this.cart}) : super._() {
    BuiltValueNullFieldError.checkNotNull(cart, 'OrderCart', 'cart');
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
    return (newBuiltValueToStringHelper('OrderCart')..add('cart', cart))
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
                cart, 'OrderCart', 'cart'));
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
    return newBuiltValueToStringHelper('ClearMessage').toString();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
