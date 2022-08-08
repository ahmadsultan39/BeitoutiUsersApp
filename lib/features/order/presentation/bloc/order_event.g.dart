// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RateOrder extends RateOrder {
  @override
  final int orderId;
  @override
  final int mealIndex;
  @override
  final int mealId;
  @override
  final int rate;
  @override
  final String notes;

  factory _$RateOrder([void Function(RateOrderBuilder)? updates]) =>
      (new RateOrderBuilder()..update(updates))._build();

  _$RateOrder._(
      {required this.orderId,
      required this.mealIndex,
      required this.mealId,
      required this.rate,
      required this.notes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(orderId, r'RateOrder', 'orderId');
    BuiltValueNullFieldError.checkNotNull(mealIndex, r'RateOrder', 'mealIndex');
    BuiltValueNullFieldError.checkNotNull(mealId, r'RateOrder', 'mealId');
    BuiltValueNullFieldError.checkNotNull(rate, r'RateOrder', 'rate');
    BuiltValueNullFieldError.checkNotNull(notes, r'RateOrder', 'notes');
  }

  @override
  RateOrder rebuild(void Function(RateOrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RateOrderBuilder toBuilder() => new RateOrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RateOrder &&
        orderId == other.orderId &&
        mealIndex == other.mealIndex &&
        mealId == other.mealId &&
        rate == other.rate &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, orderId.hashCode), mealIndex.hashCode),
                mealId.hashCode),
            rate.hashCode),
        notes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RateOrder')
          ..add('orderId', orderId)
          ..add('mealIndex', mealIndex)
          ..add('mealId', mealId)
          ..add('rate', rate)
          ..add('notes', notes))
        .toString();
  }
}

class RateOrderBuilder implements Builder<RateOrder, RateOrderBuilder> {
  _$RateOrder? _$v;

  int? _orderId;
  int? get orderId => _$this._orderId;
  set orderId(int? orderId) => _$this._orderId = orderId;

  int? _mealIndex;
  int? get mealIndex => _$this._mealIndex;
  set mealIndex(int? mealIndex) => _$this._mealIndex = mealIndex;

  int? _mealId;
  int? get mealId => _$this._mealId;
  set mealId(int? mealId) => _$this._mealId = mealId;

  int? _rate;
  int? get rate => _$this._rate;
  set rate(int? rate) => _$this._rate = rate;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  RateOrderBuilder();

  RateOrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _mealIndex = $v.mealIndex;
      _mealId = $v.mealId;
      _rate = $v.rate;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RateOrder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RateOrder;
  }

  @override
  void update(void Function(RateOrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RateOrder build() => _build();

  _$RateOrder _build() {
    final _$result = _$v ??
        new _$RateOrder._(
            orderId: BuiltValueNullFieldError.checkNotNull(
                orderId, r'RateOrder', 'orderId'),
            mealIndex: BuiltValueNullFieldError.checkNotNull(
                mealIndex, r'RateOrder', 'mealIndex'),
            mealId: BuiltValueNullFieldError.checkNotNull(
                mealId, r'RateOrder', 'mealId'),
            rate: BuiltValueNullFieldError.checkNotNull(
                rate, r'RateOrder', 'rate'),
            notes: BuiltValueNullFieldError.checkNotNull(
                notes, r'RateOrder', 'notes'));
    replace(_$result);
    return _$result;
  }
}

class _$ReportOrder extends ReportOrder {
  @override
  final int orderId;
  @override
  final String reason;
  @override
  final String reportedOn;

  factory _$ReportOrder([void Function(ReportOrderBuilder)? updates]) =>
      (new ReportOrderBuilder()..update(updates))._build();

  _$ReportOrder._(
      {required this.orderId, required this.reason, required this.reportedOn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(orderId, r'ReportOrder', 'orderId');
    BuiltValueNullFieldError.checkNotNull(reason, r'ReportOrder', 'reason');
    BuiltValueNullFieldError.checkNotNull(
        reportedOn, r'ReportOrder', 'reportedOn');
  }

  @override
  ReportOrder rebuild(void Function(ReportOrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportOrderBuilder toBuilder() => new ReportOrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportOrder &&
        orderId == other.orderId &&
        reason == other.reason &&
        reportedOn == other.reportedOn;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, orderId.hashCode), reason.hashCode), reportedOn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportOrder')
          ..add('orderId', orderId)
          ..add('reason', reason)
          ..add('reportedOn', reportedOn))
        .toString();
  }
}

class ReportOrderBuilder implements Builder<ReportOrder, ReportOrderBuilder> {
  _$ReportOrder? _$v;

  int? _orderId;
  int? get orderId => _$this._orderId;
  set orderId(int? orderId) => _$this._orderId = orderId;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _reportedOn;
  String? get reportedOn => _$this._reportedOn;
  set reportedOn(String? reportedOn) => _$this._reportedOn = reportedOn;

  ReportOrderBuilder();

  ReportOrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _reason = $v.reason;
      _reportedOn = $v.reportedOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportOrder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportOrder;
  }

  @override
  void update(void Function(ReportOrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportOrder build() => _build();

  _$ReportOrder _build() {
    final _$result = _$v ??
        new _$ReportOrder._(
            orderId: BuiltValueNullFieldError.checkNotNull(
                orderId, r'ReportOrder', 'orderId'),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'ReportOrder', 'reason'),
            reportedOn: BuiltValueNullFieldError.checkNotNull(
                reportedOn, r'ReportOrder', 'reportedOn'));
    replace(_$result);
    return _$result;
  }
}

class _$GetOrder extends GetOrder {
  @override
  final int orderId;

  factory _$GetOrder([void Function(GetOrderBuilder)? updates]) =>
      (new GetOrderBuilder()..update(updates))._build();

  _$GetOrder._({required this.orderId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(orderId, r'GetOrder', 'orderId');
  }

  @override
  GetOrder rebuild(void Function(GetOrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOrderBuilder toBuilder() => new GetOrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrder && orderId == other.orderId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, orderId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetOrder')..add('orderId', orderId))
        .toString();
  }
}

class GetOrderBuilder implements Builder<GetOrder, GetOrderBuilder> {
  _$GetOrder? _$v;

  int? _orderId;
  int? get orderId => _$this._orderId;
  set orderId(int? orderId) => _$this._orderId = orderId;

  GetOrderBuilder();

  GetOrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetOrder;
  }

  @override
  void update(void Function(GetOrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrder build() => _build();

  _$GetOrder _build() {
    final _$result = _$v ??
        new _$GetOrder._(
            orderId: BuiltValueNullFieldError.checkNotNull(
                orderId, r'GetOrder', 'orderId'));
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
