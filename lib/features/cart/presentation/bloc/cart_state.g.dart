// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CartState extends CartState {
  @override
  final bool isLoading;
  @override
  final String message;
  @override
  final bool error;
  @override
  final BuiltList<CartItemModel> cartItems;

  factory _$CartState([void Function(CartStateBuilder)? updates]) =>
      (new CartStateBuilder()..update(updates))._build();

  _$CartState._(
      {required this.isLoading,
      required this.message,
      required this.error,
      required this.cartItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, r'CartState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(message, r'CartState', 'message');
    BuiltValueNullFieldError.checkNotNull(error, r'CartState', 'error');
    BuiltValueNullFieldError.checkNotNull(cartItems, r'CartState', 'cartItems');
  }

  @override
  CartState rebuild(void Function(CartStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartStateBuilder toBuilder() => new CartStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartState &&
        isLoading == other.isLoading &&
        message == other.message &&
        error == other.error &&
        cartItems == other.cartItems;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), message.hashCode), error.hashCode),
        cartItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartState')
          ..add('isLoading', isLoading)
          ..add('message', message)
          ..add('error', error)
          ..add('cartItems', cartItems))
        .toString();
  }
}

class CartStateBuilder implements Builder<CartState, CartStateBuilder> {
  _$CartState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  ListBuilder<CartItemModel>? _cartItems;
  ListBuilder<CartItemModel> get cartItems =>
      _$this._cartItems ??= new ListBuilder<CartItemModel>();
  set cartItems(ListBuilder<CartItemModel>? cartItems) =>
      _$this._cartItems = cartItems;

  CartStateBuilder();

  CartStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _message = $v.message;
      _error = $v.error;
      _cartItems = $v.cartItems.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartState;
  }

  @override
  void update(void Function(CartStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CartState build() => _build();

  _$CartState _build() {
    _$CartState _$result;
    try {
      _$result = _$v ??
          new _$CartState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'CartState', 'isLoading'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'CartState', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'CartState', 'error'),
              cartItems: cartItems.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cartItems';
        cartItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CartState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
