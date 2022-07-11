// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meals_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MealsState extends MealsState {
  @override
  final bool isLoading;
  @override
  final String message;
  @override
  final bool error;
  @override
  final BuiltList<HomeMeal> offeredMeals;
  @override
  final BuiltList<HomeMeal> topRatedMeals;
  @override
  final BuiltList<HomeMeal> recentMeals;
  @override
  final BuiltList<HomeMeal> topOrderedMeals;
  @override
  final BuiltList<HomeSubscribe> topSubscriptions;
  @override
  final bool isOfferedMealsLoading;
  @override
  final bool isTopRatedMealsLoading;
  @override
  final bool isRecentMealsLoading;
  @override
  final bool isTopOrderedMealsLoading;
  @override
  final bool isTopSubscriptionsLoading;

  factory _$MealsState([void Function(MealsStateBuilder)? updates]) =>
      (new MealsStateBuilder()..update(updates))._build();

  _$MealsState._(
      {required this.isLoading,
      required this.message,
      required this.error,
      required this.offeredMeals,
      required this.topRatedMeals,
      required this.recentMeals,
      required this.topOrderedMeals,
      required this.topSubscriptions,
      required this.isOfferedMealsLoading,
      required this.isTopRatedMealsLoading,
      required this.isRecentMealsLoading,
      required this.isTopOrderedMealsLoading,
      required this.isTopSubscriptionsLoading})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, 'MealsState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(message, 'MealsState', 'message');
    BuiltValueNullFieldError.checkNotNull(error, 'MealsState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        offeredMeals, 'MealsState', 'offeredMeals');
    BuiltValueNullFieldError.checkNotNull(
        topRatedMeals, 'MealsState', 'topRatedMeals');
    BuiltValueNullFieldError.checkNotNull(
        recentMeals, 'MealsState', 'recentMeals');
    BuiltValueNullFieldError.checkNotNull(
        topOrderedMeals, 'MealsState', 'topOrderedMeals');
    BuiltValueNullFieldError.checkNotNull(
        topSubscriptions, 'MealsState', 'topSubscriptions');
    BuiltValueNullFieldError.checkNotNull(
        isOfferedMealsLoading, 'MealsState', 'isOfferedMealsLoading');
    BuiltValueNullFieldError.checkNotNull(
        isTopRatedMealsLoading, 'MealsState', 'isTopRatedMealsLoading');
    BuiltValueNullFieldError.checkNotNull(
        isRecentMealsLoading, 'MealsState', 'isRecentMealsLoading');
    BuiltValueNullFieldError.checkNotNull(
        isTopOrderedMealsLoading, 'MealsState', 'isTopOrderedMealsLoading');
    BuiltValueNullFieldError.checkNotNull(
        isTopSubscriptionsLoading, 'MealsState', 'isTopSubscriptionsLoading');
  }

  @override
  MealsState rebuild(void Function(MealsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MealsStateBuilder toBuilder() => new MealsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MealsState &&
        isLoading == other.isLoading &&
        message == other.message &&
        error == other.error &&
        offeredMeals == other.offeredMeals &&
        topRatedMeals == other.topRatedMeals &&
        recentMeals == other.recentMeals &&
        topOrderedMeals == other.topOrderedMeals &&
        topSubscriptions == other.topSubscriptions &&
        isOfferedMealsLoading == other.isOfferedMealsLoading &&
        isTopRatedMealsLoading == other.isTopRatedMealsLoading &&
        isRecentMealsLoading == other.isRecentMealsLoading &&
        isTopOrderedMealsLoading == other.isTopOrderedMealsLoading &&
        isTopSubscriptionsLoading == other.isTopSubscriptionsLoading;
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, isLoading.hashCode),
                                                    message.hashCode),
                                                error.hashCode),
                                            offeredMeals.hashCode),
                                        topRatedMeals.hashCode),
                                    recentMeals.hashCode),
                                topOrderedMeals.hashCode),
                            topSubscriptions.hashCode),
                        isOfferedMealsLoading.hashCode),
                    isTopRatedMealsLoading.hashCode),
                isRecentMealsLoading.hashCode),
            isTopOrderedMealsLoading.hashCode),
        isTopSubscriptionsLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MealsState')
          ..add('isLoading', isLoading)
          ..add('message', message)
          ..add('error', error)
          ..add('offeredMeals', offeredMeals)
          ..add('topRatedMeals', topRatedMeals)
          ..add('recentMeals', recentMeals)
          ..add('topOrderedMeals', topOrderedMeals)
          ..add('topSubscriptions', topSubscriptions)
          ..add('isOfferedMealsLoading', isOfferedMealsLoading)
          ..add('isTopRatedMealsLoading', isTopRatedMealsLoading)
          ..add('isRecentMealsLoading', isRecentMealsLoading)
          ..add('isTopOrderedMealsLoading', isTopOrderedMealsLoading)
          ..add('isTopSubscriptionsLoading', isTopSubscriptionsLoading))
        .toString();
  }
}

class MealsStateBuilder implements Builder<MealsState, MealsStateBuilder> {
  _$MealsState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  ListBuilder<HomeMeal>? _offeredMeals;
  ListBuilder<HomeMeal> get offeredMeals =>
      _$this._offeredMeals ??= new ListBuilder<HomeMeal>();
  set offeredMeals(ListBuilder<HomeMeal>? offeredMeals) =>
      _$this._offeredMeals = offeredMeals;

  ListBuilder<HomeMeal>? _topRatedMeals;
  ListBuilder<HomeMeal> get topRatedMeals =>
      _$this._topRatedMeals ??= new ListBuilder<HomeMeal>();
  set topRatedMeals(ListBuilder<HomeMeal>? topRatedMeals) =>
      _$this._topRatedMeals = topRatedMeals;

  ListBuilder<HomeMeal>? _recentMeals;
  ListBuilder<HomeMeal> get recentMeals =>
      _$this._recentMeals ??= new ListBuilder<HomeMeal>();
  set recentMeals(ListBuilder<HomeMeal>? recentMeals) =>
      _$this._recentMeals = recentMeals;

  ListBuilder<HomeMeal>? _topOrderedMeals;
  ListBuilder<HomeMeal> get topOrderedMeals =>
      _$this._topOrderedMeals ??= new ListBuilder<HomeMeal>();
  set topOrderedMeals(ListBuilder<HomeMeal>? topOrderedMeals) =>
      _$this._topOrderedMeals = topOrderedMeals;

  ListBuilder<HomeSubscribe>? _topSubscriptions;
  ListBuilder<HomeSubscribe> get topSubscriptions =>
      _$this._topSubscriptions ??= new ListBuilder<HomeSubscribe>();
  set topSubscriptions(ListBuilder<HomeSubscribe>? topSubscriptions) =>
      _$this._topSubscriptions = topSubscriptions;

  bool? _isOfferedMealsLoading;
  bool? get isOfferedMealsLoading => _$this._isOfferedMealsLoading;
  set isOfferedMealsLoading(bool? isOfferedMealsLoading) =>
      _$this._isOfferedMealsLoading = isOfferedMealsLoading;

  bool? _isTopRatedMealsLoading;
  bool? get isTopRatedMealsLoading => _$this._isTopRatedMealsLoading;
  set isTopRatedMealsLoading(bool? isTopRatedMealsLoading) =>
      _$this._isTopRatedMealsLoading = isTopRatedMealsLoading;

  bool? _isRecentMealsLoading;
  bool? get isRecentMealsLoading => _$this._isRecentMealsLoading;
  set isRecentMealsLoading(bool? isRecentMealsLoading) =>
      _$this._isRecentMealsLoading = isRecentMealsLoading;

  bool? _isTopOrderedMealsLoading;
  bool? get isTopOrderedMealsLoading => _$this._isTopOrderedMealsLoading;
  set isTopOrderedMealsLoading(bool? isTopOrderedMealsLoading) =>
      _$this._isTopOrderedMealsLoading = isTopOrderedMealsLoading;

  bool? _isTopSubscriptionsLoading;
  bool? get isTopSubscriptionsLoading => _$this._isTopSubscriptionsLoading;
  set isTopSubscriptionsLoading(bool? isTopSubscriptionsLoading) =>
      _$this._isTopSubscriptionsLoading = isTopSubscriptionsLoading;

  MealsStateBuilder();

  MealsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _message = $v.message;
      _error = $v.error;
      _offeredMeals = $v.offeredMeals.toBuilder();
      _topRatedMeals = $v.topRatedMeals.toBuilder();
      _recentMeals = $v.recentMeals.toBuilder();
      _topOrderedMeals = $v.topOrderedMeals.toBuilder();
      _topSubscriptions = $v.topSubscriptions.toBuilder();
      _isOfferedMealsLoading = $v.isOfferedMealsLoading;
      _isTopRatedMealsLoading = $v.isTopRatedMealsLoading;
      _isRecentMealsLoading = $v.isRecentMealsLoading;
      _isTopOrderedMealsLoading = $v.isTopOrderedMealsLoading;
      _isTopSubscriptionsLoading = $v.isTopSubscriptionsLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MealsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MealsState;
  }

  @override
  void update(void Function(MealsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MealsState build() => _build();

  _$MealsState _build() {
    _$MealsState _$result;
    try {
      _$result = _$v ??
          new _$MealsState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'MealsState', 'isLoading'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'MealsState', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'MealsState', 'error'),
              offeredMeals: offeredMeals.build(),
              topRatedMeals: topRatedMeals.build(),
              recentMeals: recentMeals.build(),
              topOrderedMeals: topOrderedMeals.build(),
              topSubscriptions: topSubscriptions.build(),
              isOfferedMealsLoading: BuiltValueNullFieldError.checkNotNull(
                  isOfferedMealsLoading, 'MealsState', 'isOfferedMealsLoading'),
              isTopRatedMealsLoading: BuiltValueNullFieldError.checkNotNull(
                  isTopRatedMealsLoading, 'MealsState', 'isTopRatedMealsLoading'),
              isRecentMealsLoading: BuiltValueNullFieldError.checkNotNull(
                  isRecentMealsLoading, 'MealsState', 'isRecentMealsLoading'),
              isTopOrderedMealsLoading: BuiltValueNullFieldError.checkNotNull(
                  isTopOrderedMealsLoading, 'MealsState', 'isTopOrderedMealsLoading'),
              isTopSubscriptionsLoading: BuiltValueNullFieldError.checkNotNull(
                  isTopSubscriptionsLoading,
                  'MealsState',
                  'isTopSubscriptionsLoading'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'offeredMeals';
        offeredMeals.build();
        _$failedField = 'topRatedMeals';
        topRatedMeals.build();
        _$failedField = 'recentMeals';
        recentMeals.build();
        _$failedField = 'topOrderedMeals';
        topOrderedMeals.build();
        _$failedField = 'topSubscriptions';
        topSubscriptions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MealsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
