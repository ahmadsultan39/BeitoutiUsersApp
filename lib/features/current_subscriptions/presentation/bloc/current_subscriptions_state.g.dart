// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_subscriptions_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CurrentSubscriptionsState extends CurrentSubscriptionsState {
  @override
  final bool isLoading;
  @override
  final String message;
  @override
  final bool error;
  @override
  final BuiltList<CurrentSubscription> subscriptions;
  @override
  final BuiltList<CurrentSubscriptionOrder> subscriptionOrders;

  factory _$CurrentSubscriptionsState(
          [void Function(CurrentSubscriptionsStateBuilder)? updates]) =>
      (new CurrentSubscriptionsStateBuilder()..update(updates))._build();

  _$CurrentSubscriptionsState._(
      {required this.isLoading,
      required this.message,
      required this.error,
      required this.subscriptions,
      required this.subscriptionOrders})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'CurrentSubscriptionsState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        message, r'CurrentSubscriptionsState', 'message');
    BuiltValueNullFieldError.checkNotNull(
        error, r'CurrentSubscriptionsState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        subscriptions, r'CurrentSubscriptionsState', 'subscriptions');
    BuiltValueNullFieldError.checkNotNull(
        subscriptionOrders, r'CurrentSubscriptionsState', 'subscriptionOrders');
  }

  @override
  CurrentSubscriptionsState rebuild(
          void Function(CurrentSubscriptionsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentSubscriptionsStateBuilder toBuilder() =>
      new CurrentSubscriptionsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentSubscriptionsState &&
        isLoading == other.isLoading &&
        message == other.message &&
        error == other.error &&
        subscriptions == other.subscriptions &&
        subscriptionOrders == other.subscriptionOrders;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, isLoading.hashCode), message.hashCode),
                error.hashCode),
            subscriptions.hashCode),
        subscriptionOrders.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CurrentSubscriptionsState')
          ..add('isLoading', isLoading)
          ..add('message', message)
          ..add('error', error)
          ..add('subscriptions', subscriptions)
          ..add('subscriptionOrders', subscriptionOrders))
        .toString();
  }
}

class CurrentSubscriptionsStateBuilder
    implements
        Builder<CurrentSubscriptionsState, CurrentSubscriptionsStateBuilder> {
  _$CurrentSubscriptionsState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  ListBuilder<CurrentSubscription>? _subscriptions;
  ListBuilder<CurrentSubscription> get subscriptions =>
      _$this._subscriptions ??= new ListBuilder<CurrentSubscription>();
  set subscriptions(ListBuilder<CurrentSubscription>? subscriptions) =>
      _$this._subscriptions = subscriptions;

  ListBuilder<CurrentSubscriptionOrder>? _subscriptionOrders;
  ListBuilder<CurrentSubscriptionOrder> get subscriptionOrders =>
      _$this._subscriptionOrders ??=
          new ListBuilder<CurrentSubscriptionOrder>();
  set subscriptionOrders(
          ListBuilder<CurrentSubscriptionOrder>? subscriptionOrders) =>
      _$this._subscriptionOrders = subscriptionOrders;

  CurrentSubscriptionsStateBuilder();

  CurrentSubscriptionsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _message = $v.message;
      _error = $v.error;
      _subscriptions = $v.subscriptions.toBuilder();
      _subscriptionOrders = $v.subscriptionOrders.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrentSubscriptionsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrentSubscriptionsState;
  }

  @override
  void update(void Function(CurrentSubscriptionsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CurrentSubscriptionsState build() => _build();

  _$CurrentSubscriptionsState _build() {
    _$CurrentSubscriptionsState _$result;
    try {
      _$result = _$v ??
          new _$CurrentSubscriptionsState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'CurrentSubscriptionsState', 'isLoading'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'CurrentSubscriptionsState', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'CurrentSubscriptionsState', 'error'),
              subscriptions: subscriptions.build(),
              subscriptionOrders: subscriptionOrders.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subscriptions';
        subscriptions.build();
        _$failedField = 'subscriptionOrders';
        subscriptionOrders.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CurrentSubscriptionsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
