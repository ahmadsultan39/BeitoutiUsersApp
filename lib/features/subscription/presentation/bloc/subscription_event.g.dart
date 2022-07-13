// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Subscribe extends Subscribe {
  @override
  final int subscriptionId;
  @override
  final String notes;

  factory _$Subscribe([void Function(SubscribeBuilder)? updates]) =>
      (new SubscribeBuilder()..update(updates))._build();

  _$Subscribe._({required this.subscriptionId, required this.notes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        subscriptionId, r'Subscribe', 'subscriptionId');
    BuiltValueNullFieldError.checkNotNull(notes, r'Subscribe', 'notes');
  }

  @override
  Subscribe rebuild(void Function(SubscribeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscribeBuilder toBuilder() => new SubscribeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Subscribe &&
        subscriptionId == other.subscriptionId &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, subscriptionId.hashCode), notes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Subscribe')
          ..add('subscriptionId', subscriptionId)
          ..add('notes', notes))
        .toString();
  }
}

class SubscribeBuilder implements Builder<Subscribe, SubscribeBuilder> {
  _$Subscribe? _$v;

  int? _subscriptionId;
  int? get subscriptionId => _$this._subscriptionId;
  set subscriptionId(int? subscriptionId) =>
      _$this._subscriptionId = subscriptionId;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  SubscribeBuilder();

  SubscribeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subscriptionId = $v.subscriptionId;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Subscribe other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Subscribe;
  }

  @override
  void update(void Function(SubscribeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Subscribe build() => _build();

  _$Subscribe _build() {
    final _$result = _$v ??
        new _$Subscribe._(
            subscriptionId: BuiltValueNullFieldError.checkNotNull(
                subscriptionId, r'Subscribe', 'subscriptionId'),
            notes: BuiltValueNullFieldError.checkNotNull(
                notes, r'Subscribe', 'notes'));
    replace(_$result);
    return _$result;
  }
}

class _$GetSubscription extends GetSubscription {
  @override
  final int subscriptionId;

  factory _$GetSubscription([void Function(GetSubscriptionBuilder)? updates]) =>
      (new GetSubscriptionBuilder()..update(updates))._build();

  _$GetSubscription._({required this.subscriptionId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        subscriptionId, r'GetSubscription', 'subscriptionId');
  }

  @override
  GetSubscription rebuild(void Function(GetSubscriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSubscriptionBuilder toBuilder() =>
      new GetSubscriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSubscription && subscriptionId == other.subscriptionId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, subscriptionId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetSubscription')
          ..add('subscriptionId', subscriptionId))
        .toString();
  }
}

class GetSubscriptionBuilder
    implements Builder<GetSubscription, GetSubscriptionBuilder> {
  _$GetSubscription? _$v;

  int? _subscriptionId;
  int? get subscriptionId => _$this._subscriptionId;
  set subscriptionId(int? subscriptionId) =>
      _$this._subscriptionId = subscriptionId;

  GetSubscriptionBuilder();

  GetSubscriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subscriptionId = $v.subscriptionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSubscription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSubscription;
  }

  @override
  void update(void Function(GetSubscriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSubscription build() => _build();

  _$GetSubscription _build() {
    final _$result = _$v ??
        new _$GetSubscription._(
            subscriptionId: BuiltValueNullFieldError.checkNotNull(
                subscriptionId, r'GetSubscription', 'subscriptionId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetSubscriptionMeals extends GetSubscriptionMeals {
  @override
  final int subscriptionId;

  factory _$GetSubscriptionMeals(
          [void Function(GetSubscriptionMealsBuilder)? updates]) =>
      (new GetSubscriptionMealsBuilder()..update(updates))._build();

  _$GetSubscriptionMeals._({required this.subscriptionId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        subscriptionId, r'GetSubscriptionMeals', 'subscriptionId');
  }

  @override
  GetSubscriptionMeals rebuild(
          void Function(GetSubscriptionMealsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSubscriptionMealsBuilder toBuilder() =>
      new GetSubscriptionMealsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSubscriptionMeals &&
        subscriptionId == other.subscriptionId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, subscriptionId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetSubscriptionMeals')
          ..add('subscriptionId', subscriptionId))
        .toString();
  }
}

class GetSubscriptionMealsBuilder
    implements Builder<GetSubscriptionMeals, GetSubscriptionMealsBuilder> {
  _$GetSubscriptionMeals? _$v;

  int? _subscriptionId;
  int? get subscriptionId => _$this._subscriptionId;
  set subscriptionId(int? subscriptionId) =>
      _$this._subscriptionId = subscriptionId;

  GetSubscriptionMealsBuilder();

  GetSubscriptionMealsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subscriptionId = $v.subscriptionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSubscriptionMeals other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSubscriptionMeals;
  }

  @override
  void update(void Function(GetSubscriptionMealsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSubscriptionMeals build() => _build();

  _$GetSubscriptionMeals _build() {
    final _$result = _$v ??
        new _$GetSubscriptionMeals._(
            subscriptionId: BuiltValueNullFieldError.checkNotNull(
                subscriptionId, r'GetSubscriptionMeals', 'subscriptionId'));
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
