// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchState extends SearchState {
  @override
  final bool isLoading;
  @override
  final String message;
  @override
  final bool error;
  @override
  final BuiltList<SearchMeal> meals;
  @override
  final int mealsPage;
  @override
  final bool isMealsFinished;
  @override
  final int totalMeals;
  @override
  final bool isMealsLoading;
  @override
  final BuiltList<SearchSubscription> subscriptions;
  @override
  final int subscriptionsPage;
  @override
  final bool isSubscriptionsFinished;
  @override
  final int totalSubscriptions;
  @override
  final bool isSubscriptionsLoading;
  @override
  final BuiltList<SearchChef> chefs;
  @override
  final int chefsPage;
  @override
  final bool isChefsFinished;
  @override
  final int totalChefs;
  @override
  final bool isChefsLoading;

  factory _$SearchState([void Function(SearchStateBuilder)? updates]) =>
      (new SearchStateBuilder()..update(updates))._build();

  _$SearchState._(
      {required this.isLoading,
      required this.message,
      required this.error,
      required this.meals,
      required this.mealsPage,
      required this.isMealsFinished,
      required this.totalMeals,
      required this.isMealsLoading,
      required this.subscriptions,
      required this.subscriptionsPage,
      required this.isSubscriptionsFinished,
      required this.totalSubscriptions,
      required this.isSubscriptionsLoading,
      required this.chefs,
      required this.chefsPage,
      required this.isChefsFinished,
      required this.totalChefs,
      required this.isChefsLoading})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'SearchState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(message, r'SearchState', 'message');
    BuiltValueNullFieldError.checkNotNull(error, r'SearchState', 'error');
    BuiltValueNullFieldError.checkNotNull(meals, r'SearchState', 'meals');
    BuiltValueNullFieldError.checkNotNull(
        mealsPage, r'SearchState', 'mealsPage');
    BuiltValueNullFieldError.checkNotNull(
        isMealsFinished, r'SearchState', 'isMealsFinished');
    BuiltValueNullFieldError.checkNotNull(
        totalMeals, r'SearchState', 'totalMeals');
    BuiltValueNullFieldError.checkNotNull(
        isMealsLoading, r'SearchState', 'isMealsLoading');
    BuiltValueNullFieldError.checkNotNull(
        subscriptions, r'SearchState', 'subscriptions');
    BuiltValueNullFieldError.checkNotNull(
        subscriptionsPage, r'SearchState', 'subscriptionsPage');
    BuiltValueNullFieldError.checkNotNull(
        isSubscriptionsFinished, r'SearchState', 'isSubscriptionsFinished');
    BuiltValueNullFieldError.checkNotNull(
        totalSubscriptions, r'SearchState', 'totalSubscriptions');
    BuiltValueNullFieldError.checkNotNull(
        isSubscriptionsLoading, r'SearchState', 'isSubscriptionsLoading');
    BuiltValueNullFieldError.checkNotNull(chefs, r'SearchState', 'chefs');
    BuiltValueNullFieldError.checkNotNull(
        chefsPage, r'SearchState', 'chefsPage');
    BuiltValueNullFieldError.checkNotNull(
        isChefsFinished, r'SearchState', 'isChefsFinished');
    BuiltValueNullFieldError.checkNotNull(
        totalChefs, r'SearchState', 'totalChefs');
    BuiltValueNullFieldError.checkNotNull(
        isChefsLoading, r'SearchState', 'isChefsLoading');
  }

  @override
  SearchState rebuild(void Function(SearchStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchStateBuilder toBuilder() => new SearchStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchState &&
        isLoading == other.isLoading &&
        message == other.message &&
        error == other.error &&
        meals == other.meals &&
        mealsPage == other.mealsPage &&
        isMealsFinished == other.isMealsFinished &&
        totalMeals == other.totalMeals &&
        isMealsLoading == other.isMealsLoading &&
        subscriptions == other.subscriptions &&
        subscriptionsPage == other.subscriptionsPage &&
        isSubscriptionsFinished == other.isSubscriptionsFinished &&
        totalSubscriptions == other.totalSubscriptions &&
        isSubscriptionsLoading == other.isSubscriptionsLoading &&
        chefs == other.chefs &&
        chefsPage == other.chefsPage &&
        isChefsFinished == other.isChefsFinished &&
        totalChefs == other.totalChefs &&
        isChefsLoading == other.isChefsLoading;
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            isLoading
                                                                                .hashCode),
                                                                        message
                                                                            .hashCode),
                                                                    error
                                                                        .hashCode),
                                                                meals.hashCode),
                                                            mealsPage.hashCode),
                                                        isMealsFinished
                                                            .hashCode),
                                                    totalMeals.hashCode),
                                                isMealsLoading.hashCode),
                                            subscriptions.hashCode),
                                        subscriptionsPage.hashCode),
                                    isSubscriptionsFinished.hashCode),
                                totalSubscriptions.hashCode),
                            isSubscriptionsLoading.hashCode),
                        chefs.hashCode),
                    chefsPage.hashCode),
                isChefsFinished.hashCode),
            totalChefs.hashCode),
        isChefsLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchState')
          ..add('isLoading', isLoading)
          ..add('message', message)
          ..add('error', error)
          ..add('meals', meals)
          ..add('mealsPage', mealsPage)
          ..add('isMealsFinished', isMealsFinished)
          ..add('totalMeals', totalMeals)
          ..add('isMealsLoading', isMealsLoading)
          ..add('subscriptions', subscriptions)
          ..add('subscriptionsPage', subscriptionsPage)
          ..add('isSubscriptionsFinished', isSubscriptionsFinished)
          ..add('totalSubscriptions', totalSubscriptions)
          ..add('isSubscriptionsLoading', isSubscriptionsLoading)
          ..add('chefs', chefs)
          ..add('chefsPage', chefsPage)
          ..add('isChefsFinished', isChefsFinished)
          ..add('totalChefs', totalChefs)
          ..add('isChefsLoading', isChefsLoading))
        .toString();
  }
}

class SearchStateBuilder implements Builder<SearchState, SearchStateBuilder> {
  _$SearchState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  ListBuilder<SearchMeal>? _meals;
  ListBuilder<SearchMeal> get meals =>
      _$this._meals ??= new ListBuilder<SearchMeal>();
  set meals(ListBuilder<SearchMeal>? meals) => _$this._meals = meals;

  int? _mealsPage;
  int? get mealsPage => _$this._mealsPage;
  set mealsPage(int? mealsPage) => _$this._mealsPage = mealsPage;

  bool? _isMealsFinished;
  bool? get isMealsFinished => _$this._isMealsFinished;
  set isMealsFinished(bool? isMealsFinished) =>
      _$this._isMealsFinished = isMealsFinished;

  int? _totalMeals;
  int? get totalMeals => _$this._totalMeals;
  set totalMeals(int? totalMeals) => _$this._totalMeals = totalMeals;

  bool? _isMealsLoading;
  bool? get isMealsLoading => _$this._isMealsLoading;
  set isMealsLoading(bool? isMealsLoading) =>
      _$this._isMealsLoading = isMealsLoading;

  ListBuilder<SearchSubscription>? _subscriptions;
  ListBuilder<SearchSubscription> get subscriptions =>
      _$this._subscriptions ??= new ListBuilder<SearchSubscription>();
  set subscriptions(ListBuilder<SearchSubscription>? subscriptions) =>
      _$this._subscriptions = subscriptions;

  int? _subscriptionsPage;
  int? get subscriptionsPage => _$this._subscriptionsPage;
  set subscriptionsPage(int? subscriptionsPage) =>
      _$this._subscriptionsPage = subscriptionsPage;

  bool? _isSubscriptionsFinished;
  bool? get isSubscriptionsFinished => _$this._isSubscriptionsFinished;
  set isSubscriptionsFinished(bool? isSubscriptionsFinished) =>
      _$this._isSubscriptionsFinished = isSubscriptionsFinished;

  int? _totalSubscriptions;
  int? get totalSubscriptions => _$this._totalSubscriptions;
  set totalSubscriptions(int? totalSubscriptions) =>
      _$this._totalSubscriptions = totalSubscriptions;

  bool? _isSubscriptionsLoading;
  bool? get isSubscriptionsLoading => _$this._isSubscriptionsLoading;
  set isSubscriptionsLoading(bool? isSubscriptionsLoading) =>
      _$this._isSubscriptionsLoading = isSubscriptionsLoading;

  ListBuilder<SearchChef>? _chefs;
  ListBuilder<SearchChef> get chefs =>
      _$this._chefs ??= new ListBuilder<SearchChef>();
  set chefs(ListBuilder<SearchChef>? chefs) => _$this._chefs = chefs;

  int? _chefsPage;
  int? get chefsPage => _$this._chefsPage;
  set chefsPage(int? chefsPage) => _$this._chefsPage = chefsPage;

  bool? _isChefsFinished;
  bool? get isChefsFinished => _$this._isChefsFinished;
  set isChefsFinished(bool? isChefsFinished) =>
      _$this._isChefsFinished = isChefsFinished;

  int? _totalChefs;
  int? get totalChefs => _$this._totalChefs;
  set totalChefs(int? totalChefs) => _$this._totalChefs = totalChefs;

  bool? _isChefsLoading;
  bool? get isChefsLoading => _$this._isChefsLoading;
  set isChefsLoading(bool? isChefsLoading) =>
      _$this._isChefsLoading = isChefsLoading;

  SearchStateBuilder();

  SearchStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _message = $v.message;
      _error = $v.error;
      _meals = $v.meals.toBuilder();
      _mealsPage = $v.mealsPage;
      _isMealsFinished = $v.isMealsFinished;
      _totalMeals = $v.totalMeals;
      _isMealsLoading = $v.isMealsLoading;
      _subscriptions = $v.subscriptions.toBuilder();
      _subscriptionsPage = $v.subscriptionsPage;
      _isSubscriptionsFinished = $v.isSubscriptionsFinished;
      _totalSubscriptions = $v.totalSubscriptions;
      _isSubscriptionsLoading = $v.isSubscriptionsLoading;
      _chefs = $v.chefs.toBuilder();
      _chefsPage = $v.chefsPage;
      _isChefsFinished = $v.isChefsFinished;
      _totalChefs = $v.totalChefs;
      _isChefsLoading = $v.isChefsLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchState;
  }

  @override
  void update(void Function(SearchStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchState build() => _build();

  _$SearchState _build() {
    _$SearchState _$result;
    try {
      _$result = _$v ??
          new _$SearchState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'SearchState', 'isLoading'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'SearchState', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'SearchState', 'error'),
              meals: meals.build(),
              mealsPage: BuiltValueNullFieldError.checkNotNull(
                  mealsPage, r'SearchState', 'mealsPage'),
              isMealsFinished: BuiltValueNullFieldError.checkNotNull(
                  isMealsFinished, r'SearchState', 'isMealsFinished'),
              totalMeals: BuiltValueNullFieldError.checkNotNull(
                  totalMeals, r'SearchState', 'totalMeals'),
              isMealsLoading: BuiltValueNullFieldError.checkNotNull(
                  isMealsLoading, r'SearchState', 'isMealsLoading'),
              subscriptions: subscriptions.build(),
              subscriptionsPage: BuiltValueNullFieldError.checkNotNull(
                  subscriptionsPage, r'SearchState', 'subscriptionsPage'),
              isSubscriptionsFinished:
                  BuiltValueNullFieldError.checkNotNull(isSubscriptionsFinished, r'SearchState', 'isSubscriptionsFinished'),
              totalSubscriptions: BuiltValueNullFieldError.checkNotNull(totalSubscriptions, r'SearchState', 'totalSubscriptions'),
              isSubscriptionsLoading: BuiltValueNullFieldError.checkNotNull(isSubscriptionsLoading, r'SearchState', 'isSubscriptionsLoading'),
              chefs: chefs.build(),
              chefsPage: BuiltValueNullFieldError.checkNotNull(chefsPage, r'SearchState', 'chefsPage'),
              isChefsFinished: BuiltValueNullFieldError.checkNotNull(isChefsFinished, r'SearchState', 'isChefsFinished'),
              totalChefs: BuiltValueNullFieldError.checkNotNull(totalChefs, r'SearchState', 'totalChefs'),
              isChefsLoading: BuiltValueNullFieldError.checkNotNull(isChefsLoading, r'SearchState', 'isChefsLoading'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meals';
        meals.build();

        _$failedField = 'subscriptions';
        subscriptions.build();

        _$failedField = 'chefs';
        chefs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
