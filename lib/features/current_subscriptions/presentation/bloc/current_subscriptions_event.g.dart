// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_subscriptions_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCurrentSubscriptions extends GetCurrentSubscriptions {
  factory _$GetCurrentSubscriptions(
          [void Function(GetCurrentSubscriptionsBuilder)? updates]) =>
      (new GetCurrentSubscriptionsBuilder()..update(updates))._build();

  _$GetCurrentSubscriptions._() : super._();

  @override
  GetCurrentSubscriptions rebuild(
          void Function(GetCurrentSubscriptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCurrentSubscriptionsBuilder toBuilder() =>
      new GetCurrentSubscriptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCurrentSubscriptions;
  }

  @override
  int get hashCode {
    return 788147212;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetCurrentSubscriptions').toString();
  }
}

class GetCurrentSubscriptionsBuilder
    implements
        Builder<GetCurrentSubscriptions, GetCurrentSubscriptionsBuilder> {
  _$GetCurrentSubscriptions? _$v;

  GetCurrentSubscriptionsBuilder();

  @override
  void replace(GetCurrentSubscriptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCurrentSubscriptions;
  }

  @override
  void update(void Function(GetCurrentSubscriptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCurrentSubscriptions build() => _build();

  _$GetCurrentSubscriptions _build() {
    final _$result = _$v ?? new _$GetCurrentSubscriptions._();
    replace(_$result);
    return _$result;
  }
}

class _$GetSubscriptionOrders extends GetSubscriptionOrders {
  @override
  final int subscriptionId;

  factory _$GetSubscriptionOrders(
          [void Function(GetSubscriptionOrdersBuilder)? updates]) =>
      (new GetSubscriptionOrdersBuilder()..update(updates))._build();

  _$GetSubscriptionOrders._({required this.subscriptionId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        subscriptionId, r'GetSubscriptionOrders', 'subscriptionId');
  }

  @override
  GetSubscriptionOrders rebuild(
          void Function(GetSubscriptionOrdersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSubscriptionOrdersBuilder toBuilder() =>
      new GetSubscriptionOrdersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSubscriptionOrders &&
        subscriptionId == other.subscriptionId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, subscriptionId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetSubscriptionOrders')
          ..add('subscriptionId', subscriptionId))
        .toString();
  }
}

class GetSubscriptionOrdersBuilder
    implements Builder<GetSubscriptionOrders, GetSubscriptionOrdersBuilder> {
  _$GetSubscriptionOrders? _$v;

  int? _subscriptionId;
  int? get subscriptionId => _$this._subscriptionId;
  set subscriptionId(int? subscriptionId) =>
      _$this._subscriptionId = subscriptionId;

  GetSubscriptionOrdersBuilder();

  GetSubscriptionOrdersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subscriptionId = $v.subscriptionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSubscriptionOrders other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSubscriptionOrders;
  }

  @override
  void update(void Function(GetSubscriptionOrdersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSubscriptionOrders build() => _build();

  _$GetSubscriptionOrders _build() {
    final _$result = _$v ??
        new _$GetSubscriptionOrders._(
            subscriptionId: BuiltValueNullFieldError.checkNotNull(
                subscriptionId, r'GetSubscriptionOrders', 'subscriptionId'));
    replace(_$result);
    return _$result;
  }
}

class _$CancelOrder extends CancelOrder {
  @override
  final int orderId;

  factory _$CancelOrder([void Function(CancelOrderBuilder)? updates]) =>
      (new CancelOrderBuilder()..update(updates))._build();

  _$CancelOrder._({required this.orderId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(orderId, r'CancelOrder', 'orderId');
  }

  @override
  CancelOrder rebuild(void Function(CancelOrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelOrderBuilder toBuilder() => new CancelOrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelOrder && orderId == other.orderId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, orderId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CancelOrder')
          ..add('orderId', orderId))
        .toString();
  }
}

class CancelOrderBuilder implements Builder<CancelOrder, CancelOrderBuilder> {
  _$CancelOrder? _$v;

  int? _orderId;
  int? get orderId => _$this._orderId;
  set orderId(int? orderId) => _$this._orderId = orderId;

  CancelOrderBuilder();

  CancelOrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelOrder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelOrder;
  }

  @override
  void update(void Function(CancelOrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelOrder build() => _build();

  _$CancelOrder _build() {
    final _$result = _$v ??
        new _$CancelOrder._(
            orderId: BuiltValueNullFieldError.checkNotNull(
                orderId, r'CancelOrder', 'orderId'));
    replace(_$result);
    return _$result;
  }
}

class _$ClearSubscriptionOrders extends ClearSubscriptionOrders {
  factory _$ClearSubscriptionOrders(
          [void Function(ClearSubscriptionOrdersBuilder)? updates]) =>
      (new ClearSubscriptionOrdersBuilder()..update(updates))._build();

  _$ClearSubscriptionOrders._() : super._();

  @override
  ClearSubscriptionOrders rebuild(
          void Function(ClearSubscriptionOrdersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearSubscriptionOrdersBuilder toBuilder() =>
      new ClearSubscriptionOrdersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearSubscriptionOrders;
  }

  @override
  int get hashCode {
    return 366501320;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ClearSubscriptionOrders').toString();
  }
}

class ClearSubscriptionOrdersBuilder
    implements
        Builder<ClearSubscriptionOrders, ClearSubscriptionOrdersBuilder> {
  _$ClearSubscriptionOrders? _$v;

  ClearSubscriptionOrdersBuilder();

  @override
  void replace(ClearSubscriptionOrders other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClearSubscriptionOrders;
  }

  @override
  void update(void Function(ClearSubscriptionOrdersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClearSubscriptionOrders build() => _build();

  _$ClearSubscriptionOrders _build() {
    final _$result = _$v ?? new _$ClearSubscriptionOrders._();
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
