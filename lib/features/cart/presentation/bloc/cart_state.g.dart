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
  final bool allSuccess;
  @override
  final BuiltList<CartItemModel> cartItems;
  @override
  final int mealsCost;
  @override
  final int deliveryFee;
  @override
  final int deliveryStartsHour;
  @override
  final int deliveryEndsHour;

  factory _$CartState([void Function(CartStateBuilder)? updates]) =>
      (new CartStateBuilder()..update(updates))._build();

  _$CartState._(
      {required this.isLoading,
      required this.message,
      required this.error,
      required this.allSuccess,
      required this.cartItems,
      required this.mealsCost,
      required this.deliveryFee,
      required this.deliveryStartsHour,
      required this.deliveryEndsHour})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, r'CartState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(message, r'CartState', 'message');
    BuiltValueNullFieldError.checkNotNull(error, r'CartState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        allSuccess, r'CartState', 'allSuccess');
    BuiltValueNullFieldError.checkNotNull(cartItems, r'CartState', 'cartItems');
    BuiltValueNullFieldError.checkNotNull(mealsCost, r'CartState', 'mealsCost');
    BuiltValueNullFieldError.checkNotNull(
        deliveryFee, r'CartState', 'deliveryFee');
    BuiltValueNullFieldError.checkNotNull(
        deliveryStartsHour, r'CartState', 'deliveryStartsHour');
    BuiltValueNullFieldError.checkNotNull(
        deliveryEndsHour, r'CartState', 'deliveryEndsHour');
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
        allSuccess == other.allSuccess &&
        cartItems == other.cartItems &&
        mealsCost == other.mealsCost &&
        deliveryFee == other.deliveryFee &&
        deliveryStartsHour == other.deliveryStartsHour &&
        deliveryEndsHour == other.deliveryEndsHour;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, isLoading.hashCode),
                                    message.hashCode),
                                error.hashCode),
                            allSuccess.hashCode),
                        cartItems.hashCode),
                    mealsCost.hashCode),
                deliveryFee.hashCode),
            deliveryStartsHour.hashCode),
        deliveryEndsHour.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartState')
          ..add('isLoading', isLoading)
          ..add('message', message)
          ..add('error', error)
          ..add('allSuccess', allSuccess)
          ..add('cartItems', cartItems)
          ..add('mealsCost', mealsCost)
          ..add('deliveryFee', deliveryFee)
          ..add('deliveryStartsHour', deliveryStartsHour)
          ..add('deliveryEndsHour', deliveryEndsHour))
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

  bool? _allSuccess;
  bool? get allSuccess => _$this._allSuccess;
  set allSuccess(bool? allSuccess) => _$this._allSuccess = allSuccess;

  ListBuilder<CartItemModel>? _cartItems;
  ListBuilder<CartItemModel> get cartItems =>
      _$this._cartItems ??= new ListBuilder<CartItemModel>();
  set cartItems(ListBuilder<CartItemModel>? cartItems) =>
      _$this._cartItems = cartItems;

  int? _mealsCost;
  int? get mealsCost => _$this._mealsCost;
  set mealsCost(int? mealsCost) => _$this._mealsCost = mealsCost;

  int? _deliveryFee;
  int? get deliveryFee => _$this._deliveryFee;
  set deliveryFee(int? deliveryFee) => _$this._deliveryFee = deliveryFee;

  int? _deliveryStartsHour;
  int? get deliveryStartsHour => _$this._deliveryStartsHour;
  set deliveryStartsHour(int? deliveryStartsHour) =>
      _$this._deliveryStartsHour = deliveryStartsHour;

  int? _deliveryEndsHour;
  int? get deliveryEndsHour => _$this._deliveryEndsHour;
  set deliveryEndsHour(int? deliveryEndsHour) =>
      _$this._deliveryEndsHour = deliveryEndsHour;

  CartStateBuilder();

  CartStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _message = $v.message;
      _error = $v.error;
      _allSuccess = $v.allSuccess;
      _cartItems = $v.cartItems.toBuilder();
      _mealsCost = $v.mealsCost;
      _deliveryFee = $v.deliveryFee;
      _deliveryStartsHour = $v.deliveryStartsHour;
      _deliveryEndsHour = $v.deliveryEndsHour;
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
              allSuccess: BuiltValueNullFieldError.checkNotNull(
                  allSuccess, r'CartState', 'allSuccess'),
              cartItems: cartItems.build(),
              mealsCost: BuiltValueNullFieldError.checkNotNull(
                  mealsCost, r'CartState', 'mealsCost'),
              deliveryFee: BuiltValueNullFieldError.checkNotNull(
                  deliveryFee, r'CartState', 'deliveryFee'),
              deliveryStartsHour: BuiltValueNullFieldError.checkNotNull(
                  deliveryStartsHour, r'CartState', 'deliveryStartsHour'),
              deliveryEndsHour: BuiltValueNullFieldError.checkNotNull(
                  deliveryEndsHour, r'CartState', 'deliveryEndsHour'));
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
