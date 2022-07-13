// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCurrentOrders extends GetCurrentOrders {
  factory _$GetCurrentOrders(
          [void Function(GetCurrentOrdersBuilder)? updates]) =>
      (new GetCurrentOrdersBuilder()..update(updates))._build();

  _$GetCurrentOrders._() : super._();

  @override
  GetCurrentOrders rebuild(void Function(GetCurrentOrdersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCurrentOrdersBuilder toBuilder() =>
      new GetCurrentOrdersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCurrentOrders;
  }

  @override
  int get hashCode {
    return 1017431012;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetCurrentOrders').toString();
  }
}

class GetCurrentOrdersBuilder
    implements Builder<GetCurrentOrders, GetCurrentOrdersBuilder> {
  _$GetCurrentOrders? _$v;

  GetCurrentOrdersBuilder();

  @override
  void replace(GetCurrentOrders other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCurrentOrders;
  }

  @override
  void update(void Function(GetCurrentOrdersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCurrentOrders build() => _build();

  _$GetCurrentOrders _build() {
    final _$result = _$v ?? new _$GetCurrentOrders._();
    replace(_$result);
    return _$result;
  }
}

class _$GetPreviousOrders extends GetPreviousOrders {
  @override
  final int page;

  factory _$GetPreviousOrders(
          [void Function(GetPreviousOrdersBuilder)? updates]) =>
      (new GetPreviousOrdersBuilder()..update(updates))._build();

  _$GetPreviousOrders._({required this.page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(page, 'GetPreviousOrders', 'page');
  }

  @override
  GetPreviousOrders rebuild(void Function(GetPreviousOrdersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPreviousOrdersBuilder toBuilder() =>
      new GetPreviousOrdersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPreviousOrders && page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc(0, page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetPreviousOrders')..add('page', page))
        .toString();
  }
}

class GetPreviousOrdersBuilder
    implements Builder<GetPreviousOrders, GetPreviousOrdersBuilder> {
  _$GetPreviousOrders? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GetPreviousOrdersBuilder();

  GetPreviousOrdersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPreviousOrders other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPreviousOrders;
  }

  @override
  void update(void Function(GetPreviousOrdersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPreviousOrders build() => _build();

  _$GetPreviousOrders _build() {
    final _$result = _$v ??
        new _$GetPreviousOrders._(
            page: BuiltValueNullFieldError.checkNotNull(
                page, 'GetPreviousOrders', 'page'));
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
    BuiltValueNullFieldError.checkNotNull(orderId, 'CancelOrder', 'orderId');
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
    return (newBuiltValueToStringHelper('CancelOrder')..add('orderId', orderId))
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
                orderId, 'CancelOrder', 'orderId'));
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
