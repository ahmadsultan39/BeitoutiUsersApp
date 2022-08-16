// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubscriptionState extends SubscriptionState {
  @override
  final bool isLoading;
  @override
  final String message;
  @override
  final bool error;
  @override
  final BuiltList<SubscriptionMeal> subscriptionMeals;
  @override
  final Subscription? subscription;
  @override
  final bool isSubscribed;

  factory _$SubscriptionState(
          [void Function(SubscriptionStateBuilder)? updates]) =>
      (new SubscriptionStateBuilder()..update(updates))._build();

  _$SubscriptionState._(
      {required this.isLoading,
      required this.message,
      required this.error,
      required this.subscriptionMeals,
      this.subscription,
      required this.isSubscribed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'SubscriptionState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        message, r'SubscriptionState', 'message');
    BuiltValueNullFieldError.checkNotNull(error, r'SubscriptionState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        subscriptionMeals, r'SubscriptionState', 'subscriptionMeals');
    BuiltValueNullFieldError.checkNotNull(
        isSubscribed, r'SubscriptionState', 'isSubscribed');
  }

  @override
  SubscriptionState rebuild(void Function(SubscriptionStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionStateBuilder toBuilder() =>
      new SubscriptionStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionState &&
        isLoading == other.isLoading &&
        message == other.message &&
        error == other.error &&
        subscriptionMeals == other.subscriptionMeals &&
        subscription == other.subscription &&
        isSubscribed == other.isSubscribed;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, isLoading.hashCode), message.hashCode),
                    error.hashCode),
                subscriptionMeals.hashCode),
            subscription.hashCode),
        isSubscribed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionState')
          ..add('isLoading', isLoading)
          ..add('message', message)
          ..add('error', error)
          ..add('subscriptionMeals', subscriptionMeals)
          ..add('subscription', subscription)
          ..add('isSubscribed', isSubscribed))
        .toString();
  }
}

class SubscriptionStateBuilder
    implements Builder<SubscriptionState, SubscriptionStateBuilder> {
  _$SubscriptionState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  ListBuilder<SubscriptionMeal>? _subscriptionMeals;
  ListBuilder<SubscriptionMeal> get subscriptionMeals =>
      _$this._subscriptionMeals ??= new ListBuilder<SubscriptionMeal>();
  set subscriptionMeals(ListBuilder<SubscriptionMeal>? subscriptionMeals) =>
      _$this._subscriptionMeals = subscriptionMeals;

  Subscription? _subscription;
  Subscription? get subscription => _$this._subscription;
  set subscription(Subscription? subscription) =>
      _$this._subscription = subscription;

  bool? _isSubscribed;
  bool? get isSubscribed => _$this._isSubscribed;
  set isSubscribed(bool? isSubscribed) => _$this._isSubscribed = isSubscribed;

  SubscriptionStateBuilder();

  SubscriptionStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _message = $v.message;
      _error = $v.error;
      _subscriptionMeals = $v.subscriptionMeals.toBuilder();
      _subscription = $v.subscription;
      _isSubscribed = $v.isSubscribed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubscriptionState;
  }

  @override
  void update(void Function(SubscriptionStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionState build() => _build();

  _$SubscriptionState _build() {
    _$SubscriptionState _$result;
    try {
      _$result = _$v ??
          new _$SubscriptionState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'SubscriptionState', 'isLoading'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'SubscriptionState', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'SubscriptionState', 'error'),
              subscriptionMeals: subscriptionMeals.build(),
              subscription: subscription,
              isSubscribed: BuiltValueNullFieldError.checkNotNull(
                  isSubscribed, r'SubscriptionState', 'isSubscribed'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subscriptionMeals';
        subscriptionMeals.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SubscriptionState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
