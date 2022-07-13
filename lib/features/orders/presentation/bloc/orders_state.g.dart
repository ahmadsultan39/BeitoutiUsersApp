// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrdersState extends OrdersState {
  @override
  final bool isLoading;
  @override
  final String message;
  @override
  final bool error;
  @override
  final BuiltList<OrderEntity> currentOrders;
  @override
  final BuiltList<OrderEntity> previousOrders;
  @override
  final bool isPreviousOrdersLoading;
  @override
  final bool isPreviousOrdersPaginateLoading;
  @override
  final bool isPreviousOrdersFinished;
  @override
  final int previousOrdersPage;

  factory _$OrdersState([void Function(OrdersStateBuilder)? updates]) =>
      (new OrdersStateBuilder()..update(updates))._build();

  _$OrdersState._(
      {required this.isLoading,
      required this.message,
      required this.error,
      required this.currentOrders,
      required this.previousOrders,
      required this.isPreviousOrdersLoading,
      required this.isPreviousOrdersPaginateLoading,
      required this.isPreviousOrdersFinished,
      required this.previousOrdersPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'OrdersState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(message, 'OrdersState', 'message');
    BuiltValueNullFieldError.checkNotNull(error, 'OrdersState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        currentOrders, 'OrdersState', 'currentOrders');
    BuiltValueNullFieldError.checkNotNull(
        previousOrders, 'OrdersState', 'previousOrders');
    BuiltValueNullFieldError.checkNotNull(
        isPreviousOrdersLoading, 'OrdersState', 'isPreviousOrdersLoading');
    BuiltValueNullFieldError.checkNotNull(isPreviousOrdersPaginateLoading,
        'OrdersState', 'isPreviousOrdersPaginateLoading');
    BuiltValueNullFieldError.checkNotNull(
        isPreviousOrdersFinished, 'OrdersState', 'isPreviousOrdersFinished');
    BuiltValueNullFieldError.checkNotNull(
        previousOrdersPage, 'OrdersState', 'previousOrdersPage');
  }

  @override
  OrdersState rebuild(void Function(OrdersStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersStateBuilder toBuilder() => new OrdersStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersState &&
        isLoading == other.isLoading &&
        message == other.message &&
        error == other.error &&
        currentOrders == other.currentOrders &&
        previousOrders == other.previousOrders &&
        isPreviousOrdersLoading == other.isPreviousOrdersLoading &&
        isPreviousOrdersPaginateLoading ==
            other.isPreviousOrdersPaginateLoading &&
        isPreviousOrdersFinished == other.isPreviousOrdersFinished &&
        previousOrdersPage == other.previousOrdersPage;
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
                            currentOrders.hashCode),
                        previousOrders.hashCode),
                    isPreviousOrdersLoading.hashCode),
                isPreviousOrdersPaginateLoading.hashCode),
            isPreviousOrdersFinished.hashCode),
        previousOrdersPage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrdersState')
          ..add('isLoading', isLoading)
          ..add('message', message)
          ..add('error', error)
          ..add('currentOrders', currentOrders)
          ..add('previousOrders', previousOrders)
          ..add('isPreviousOrdersLoading', isPreviousOrdersLoading)
          ..add('isPreviousOrdersPaginateLoading',
              isPreviousOrdersPaginateLoading)
          ..add('isPreviousOrdersFinished', isPreviousOrdersFinished)
          ..add('previousOrdersPage', previousOrdersPage))
        .toString();
  }
}

class OrdersStateBuilder implements Builder<OrdersState, OrdersStateBuilder> {
  _$OrdersState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  ListBuilder<OrderEntity>? _currentOrders;
  ListBuilder<OrderEntity> get currentOrders =>
      _$this._currentOrders ??= new ListBuilder<OrderEntity>();
  set currentOrders(ListBuilder<OrderEntity>? currentOrders) =>
      _$this._currentOrders = currentOrders;

  ListBuilder<OrderEntity>? _previousOrders;
  ListBuilder<OrderEntity> get previousOrders =>
      _$this._previousOrders ??= new ListBuilder<OrderEntity>();
  set previousOrders(ListBuilder<OrderEntity>? previousOrders) =>
      _$this._previousOrders = previousOrders;

  bool? _isPreviousOrdersLoading;
  bool? get isPreviousOrdersLoading => _$this._isPreviousOrdersLoading;
  set isPreviousOrdersLoading(bool? isPreviousOrdersLoading) =>
      _$this._isPreviousOrdersLoading = isPreviousOrdersLoading;

  bool? _isPreviousOrdersPaginateLoading;
  bool? get isPreviousOrdersPaginateLoading =>
      _$this._isPreviousOrdersPaginateLoading;
  set isPreviousOrdersPaginateLoading(bool? isPreviousOrdersPaginateLoading) =>
      _$this._isPreviousOrdersPaginateLoading = isPreviousOrdersPaginateLoading;

  bool? _isPreviousOrdersFinished;
  bool? get isPreviousOrdersFinished => _$this._isPreviousOrdersFinished;
  set isPreviousOrdersFinished(bool? isPreviousOrdersFinished) =>
      _$this._isPreviousOrdersFinished = isPreviousOrdersFinished;

  int? _previousOrdersPage;
  int? get previousOrdersPage => _$this._previousOrdersPage;
  set previousOrdersPage(int? previousOrdersPage) =>
      _$this._previousOrdersPage = previousOrdersPage;

  OrdersStateBuilder();

  OrdersStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _message = $v.message;
      _error = $v.error;
      _currentOrders = $v.currentOrders.toBuilder();
      _previousOrders = $v.previousOrders.toBuilder();
      _isPreviousOrdersLoading = $v.isPreviousOrdersLoading;
      _isPreviousOrdersPaginateLoading = $v.isPreviousOrdersPaginateLoading;
      _isPreviousOrdersFinished = $v.isPreviousOrdersFinished;
      _previousOrdersPage = $v.previousOrdersPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdersState;
  }

  @override
  void update(void Function(OrdersStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersState build() => _build();

  _$OrdersState _build() {
    _$OrdersState _$result;
    try {
      _$result = _$v ??
          new _$OrdersState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'OrdersState', 'isLoading'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'OrdersState', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'OrdersState', 'error'),
              currentOrders: currentOrders.build(),
              previousOrders: previousOrders.build(),
              isPreviousOrdersLoading: BuiltValueNullFieldError.checkNotNull(
                  isPreviousOrdersLoading, 'OrdersState', 'isPreviousOrdersLoading'),
              isPreviousOrdersPaginateLoading: BuiltValueNullFieldError.checkNotNull(
                  isPreviousOrdersPaginateLoading,
                  'OrdersState',
                  'isPreviousOrdersPaginateLoading'),
              isPreviousOrdersFinished: BuiltValueNullFieldError.checkNotNull(
                  isPreviousOrdersFinished,
                  'OrdersState',
                  'isPreviousOrdersFinished'),
              previousOrdersPage: BuiltValueNullFieldError.checkNotNull(
                  previousOrdersPage, 'OrdersState', 'previousOrdersPage'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currentOrders';
        currentOrders.build();
        _$failedField = 'previousOrders';
        previousOrders.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrdersState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
