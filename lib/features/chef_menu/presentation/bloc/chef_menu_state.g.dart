// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chef_menu_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChefMenuState extends ChefMenuState {
  @override
  final bool isCategoriesLoading;
  @override
  final bool isCategoryMealsLoading;
  @override
  final bool isChefInfoLoading;
  @override
  final bool isSubscriptionsLoading;
  @override
  final bool isSubscriptionMealsLoading;
  @override
  final List<ChefCategory> categories;
  @override
  final List<ChefMeal> categoryMeals;
  @override
  final ChefInfo? chefInfo;
  @override
  final List<Subscription> subscriptions;
  @override
  final List<SubscriptionMeal> subscriptionMeals;
  @override
  final bool error;
  @override
  final String message;

  factory _$ChefMenuState([void Function(ChefMenuStateBuilder)? updates]) =>
      (new ChefMenuStateBuilder()..update(updates))._build();

  _$ChefMenuState._(
      {required this.isCategoriesLoading,
      required this.isCategoryMealsLoading,
      required this.isChefInfoLoading,
      required this.isSubscriptionsLoading,
      required this.isSubscriptionMealsLoading,
      required this.categories,
      required this.categoryMeals,
      this.chefInfo,
      required this.subscriptions,
      required this.subscriptionMeals,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isCategoriesLoading, 'ChefMenuState', 'isCategoriesLoading');
    BuiltValueNullFieldError.checkNotNull(
        isCategoryMealsLoading, 'ChefMenuState', 'isCategoryMealsLoading');
    BuiltValueNullFieldError.checkNotNull(
        isChefInfoLoading, 'ChefMenuState', 'isChefInfoLoading');
    BuiltValueNullFieldError.checkNotNull(
        isSubscriptionsLoading, 'ChefMenuState', 'isSubscriptionsLoading');
    BuiltValueNullFieldError.checkNotNull(isSubscriptionMealsLoading,
        'ChefMenuState', 'isSubscriptionMealsLoading');
    BuiltValueNullFieldError.checkNotNull(
        categories, 'ChefMenuState', 'categories');
    BuiltValueNullFieldError.checkNotNull(
        categoryMeals, 'ChefMenuState', 'categoryMeals');
    BuiltValueNullFieldError.checkNotNull(
        subscriptions, 'ChefMenuState', 'subscriptions');
    BuiltValueNullFieldError.checkNotNull(
        subscriptionMeals, 'ChefMenuState', 'subscriptionMeals');
    BuiltValueNullFieldError.checkNotNull(error, 'ChefMenuState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, 'ChefMenuState', 'message');
  }

  @override
  ChefMenuState rebuild(void Function(ChefMenuStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChefMenuStateBuilder toBuilder() => new ChefMenuStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChefMenuState &&
        isCategoriesLoading == other.isCategoriesLoading &&
        isCategoryMealsLoading == other.isCategoryMealsLoading &&
        isChefInfoLoading == other.isChefInfoLoading &&
        isSubscriptionsLoading == other.isSubscriptionsLoading &&
        isSubscriptionMealsLoading == other.isSubscriptionMealsLoading &&
        categories == other.categories &&
        categoryMeals == other.categoryMeals &&
        chefInfo == other.chefInfo &&
        subscriptions == other.subscriptions &&
        subscriptionMeals == other.subscriptionMeals &&
        error == other.error &&
        message == other.message;
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
                                                    0,
                                                    isCategoriesLoading
                                                        .hashCode),
                                                isCategoryMealsLoading
                                                    .hashCode),
                                            isChefInfoLoading.hashCode),
                                        isSubscriptionsLoading.hashCode),
                                    isSubscriptionMealsLoading.hashCode),
                                categories.hashCode),
                            categoryMeals.hashCode),
                        chefInfo.hashCode),
                    subscriptions.hashCode),
                subscriptionMeals.hashCode),
            error.hashCode),
        message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChefMenuState')
          ..add('isCategoriesLoading', isCategoriesLoading)
          ..add('isCategoryMealsLoading', isCategoryMealsLoading)
          ..add('isChefInfoLoading', isChefInfoLoading)
          ..add('isSubscriptionsLoading', isSubscriptionsLoading)
          ..add('isSubscriptionMealsLoading', isSubscriptionMealsLoading)
          ..add('categories', categories)
          ..add('categoryMeals', categoryMeals)
          ..add('chefInfo', chefInfo)
          ..add('subscriptions', subscriptions)
          ..add('subscriptionMeals', subscriptionMeals)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class ChefMenuStateBuilder
    implements Builder<ChefMenuState, ChefMenuStateBuilder> {
  _$ChefMenuState? _$v;

  bool? _isCategoriesLoading;
  bool? get isCategoriesLoading => _$this._isCategoriesLoading;
  set isCategoriesLoading(bool? isCategoriesLoading) =>
      _$this._isCategoriesLoading = isCategoriesLoading;

  bool? _isCategoryMealsLoading;
  bool? get isCategoryMealsLoading => _$this._isCategoryMealsLoading;
  set isCategoryMealsLoading(bool? isCategoryMealsLoading) =>
      _$this._isCategoryMealsLoading = isCategoryMealsLoading;

  bool? _isChefInfoLoading;
  bool? get isChefInfoLoading => _$this._isChefInfoLoading;
  set isChefInfoLoading(bool? isChefInfoLoading) =>
      _$this._isChefInfoLoading = isChefInfoLoading;

  bool? _isSubscriptionsLoading;
  bool? get isSubscriptionsLoading => _$this._isSubscriptionsLoading;
  set isSubscriptionsLoading(bool? isSubscriptionsLoading) =>
      _$this._isSubscriptionsLoading = isSubscriptionsLoading;

  bool? _isSubscriptionMealsLoading;
  bool? get isSubscriptionMealsLoading => _$this._isSubscriptionMealsLoading;
  set isSubscriptionMealsLoading(bool? isSubscriptionMealsLoading) =>
      _$this._isSubscriptionMealsLoading = isSubscriptionMealsLoading;

  List<ChefCategory>? _categories;
  List<ChefCategory>? get categories => _$this._categories;
  set categories(List<ChefCategory>? categories) =>
      _$this._categories = categories;

  List<ChefMeal>? _categoryMeals;
  List<ChefMeal>? get categoryMeals => _$this._categoryMeals;
  set categoryMeals(List<ChefMeal>? categoryMeals) =>
      _$this._categoryMeals = categoryMeals;

  ChefInfo? _chefInfo;
  ChefInfo? get chefInfo => _$this._chefInfo;
  set chefInfo(ChefInfo? chefInfo) => _$this._chefInfo = chefInfo;

  List<Subscription>? _subscriptions;
  List<Subscription>? get subscriptions => _$this._subscriptions;
  set subscriptions(List<Subscription>? subscriptions) =>
      _$this._subscriptions = subscriptions;

  List<SubscriptionMeal>? _subscriptionMeals;
  List<SubscriptionMeal>? get subscriptionMeals => _$this._subscriptionMeals;
  set subscriptionMeals(List<SubscriptionMeal>? subscriptionMeals) =>
      _$this._subscriptionMeals = subscriptionMeals;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ChefMenuStateBuilder();

  ChefMenuStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isCategoriesLoading = $v.isCategoriesLoading;
      _isCategoryMealsLoading = $v.isCategoryMealsLoading;
      _isChefInfoLoading = $v.isChefInfoLoading;
      _isSubscriptionsLoading = $v.isSubscriptionsLoading;
      _isSubscriptionMealsLoading = $v.isSubscriptionMealsLoading;
      _categories = $v.categories;
      _categoryMeals = $v.categoryMeals;
      _chefInfo = $v.chefInfo;
      _subscriptions = $v.subscriptions;
      _subscriptionMeals = $v.subscriptionMeals;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChefMenuState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChefMenuState;
  }

  @override
  void update(void Function(ChefMenuStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChefMenuState build() => _build();

  _$ChefMenuState _build() {
    final _$result = _$v ??
        new _$ChefMenuState._(
            isCategoriesLoading: BuiltValueNullFieldError.checkNotNull(
                isCategoriesLoading, 'ChefMenuState', 'isCategoriesLoading'),
            isCategoryMealsLoading: BuiltValueNullFieldError.checkNotNull(
                isCategoryMealsLoading, 'ChefMenuState', 'isCategoryMealsLoading'),
            isChefInfoLoading: BuiltValueNullFieldError.checkNotNull(
                isChefInfoLoading, 'ChefMenuState', 'isChefInfoLoading'),
            isSubscriptionsLoading: BuiltValueNullFieldError.checkNotNull(
                isSubscriptionsLoading, 'ChefMenuState', 'isSubscriptionsLoading'),
            isSubscriptionMealsLoading: BuiltValueNullFieldError.checkNotNull(
                isSubscriptionMealsLoading, 'ChefMenuState', 'isSubscriptionMealsLoading'),
            categories: BuiltValueNullFieldError.checkNotNull(
                categories, 'ChefMenuState', 'categories'),
            categoryMeals: BuiltValueNullFieldError.checkNotNull(
                categoryMeals, 'ChefMenuState', 'categoryMeals'),
            chefInfo: chefInfo,
            subscriptions: BuiltValueNullFieldError.checkNotNull(subscriptions, 'ChefMenuState', 'subscriptions'),
            subscriptionMeals: BuiltValueNullFieldError.checkNotNull(subscriptionMeals, 'ChefMenuState', 'subscriptionMeals'),
            error: BuiltValueNullFieldError.checkNotNull(error, 'ChefMenuState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(message, 'ChefMenuState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
