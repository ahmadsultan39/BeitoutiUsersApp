// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

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

class _$GetMealsEvent extends GetMealsEvent {
  @override
  final String query;
  @override
  final int page;
  @override
  final String? sortPrice;
  @override
  final String? sortRate;

  factory _$GetMealsEvent([void Function(GetMealsEventBuilder)? updates]) =>
      (new GetMealsEventBuilder()..update(updates))._build();

  _$GetMealsEvent._(
      {required this.query, required this.page, this.sortPrice, this.sortRate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(query, r'GetMealsEvent', 'query');
    BuiltValueNullFieldError.checkNotNull(page, r'GetMealsEvent', 'page');
  }

  @override
  GetMealsEvent rebuild(void Function(GetMealsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMealsEventBuilder toBuilder() => new GetMealsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMealsEvent &&
        query == other.query &&
        page == other.page &&
        sortPrice == other.sortPrice &&
        sortRate == other.sortRate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, query.hashCode), page.hashCode), sortPrice.hashCode),
        sortRate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetMealsEvent')
          ..add('query', query)
          ..add('page', page)
          ..add('sortPrice', sortPrice)
          ..add('sortRate', sortRate))
        .toString();
  }
}

class GetMealsEventBuilder
    implements Builder<GetMealsEvent, GetMealsEventBuilder> {
  _$GetMealsEvent? _$v;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  String? _sortPrice;
  String? get sortPrice => _$this._sortPrice;
  set sortPrice(String? sortPrice) => _$this._sortPrice = sortPrice;

  String? _sortRate;
  String? get sortRate => _$this._sortRate;
  set sortRate(String? sortRate) => _$this._sortRate = sortRate;

  GetMealsEventBuilder();

  GetMealsEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _page = $v.page;
      _sortPrice = $v.sortPrice;
      _sortRate = $v.sortRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMealsEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMealsEvent;
  }

  @override
  void update(void Function(GetMealsEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMealsEvent build() => _build();

  _$GetMealsEvent _build() {
    final _$result = _$v ??
        new _$GetMealsEvent._(
            query: BuiltValueNullFieldError.checkNotNull(
                query, r'GetMealsEvent', 'query'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'GetMealsEvent', 'page'),
            sortPrice: sortPrice,
            sortRate: sortRate);
    replace(_$result);
    return _$result;
  }
}

class _$SortMealsByPriceEvent extends SortMealsByPriceEvent {
  @override
  final String sortOrder;

  factory _$SortMealsByPriceEvent(
          [void Function(SortMealsByPriceEventBuilder)? updates]) =>
      (new SortMealsByPriceEventBuilder()..update(updates))._build();

  _$SortMealsByPriceEvent._({required this.sortOrder}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sortOrder, r'SortMealsByPriceEvent', 'sortOrder');
  }

  @override
  SortMealsByPriceEvent rebuild(
          void Function(SortMealsByPriceEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SortMealsByPriceEventBuilder toBuilder() =>
      new SortMealsByPriceEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SortMealsByPriceEvent && sortOrder == other.sortOrder;
  }

  @override
  int get hashCode {
    return $jf($jc(0, sortOrder.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SortMealsByPriceEvent')
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class SortMealsByPriceEventBuilder
    implements Builder<SortMealsByPriceEvent, SortMealsByPriceEventBuilder> {
  _$SortMealsByPriceEvent? _$v;

  String? _sortOrder;
  String? get sortOrder => _$this._sortOrder;
  set sortOrder(String? sortOrder) => _$this._sortOrder = sortOrder;

  SortMealsByPriceEventBuilder();

  SortMealsByPriceEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sortOrder = $v.sortOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SortMealsByPriceEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SortMealsByPriceEvent;
  }

  @override
  void update(void Function(SortMealsByPriceEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SortMealsByPriceEvent build() => _build();

  _$SortMealsByPriceEvent _build() {
    final _$result = _$v ??
        new _$SortMealsByPriceEvent._(
            sortOrder: BuiltValueNullFieldError.checkNotNull(
                sortOrder, r'SortMealsByPriceEvent', 'sortOrder'));
    replace(_$result);
    return _$result;
  }
}

class _$SortMealsByRateEvent extends SortMealsByRateEvent {
  @override
  final String sortOrder;

  factory _$SortMealsByRateEvent(
          [void Function(SortMealsByRateEventBuilder)? updates]) =>
      (new SortMealsByRateEventBuilder()..update(updates))._build();

  _$SortMealsByRateEvent._({required this.sortOrder}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sortOrder, r'SortMealsByRateEvent', 'sortOrder');
  }

  @override
  SortMealsByRateEvent rebuild(
          void Function(SortMealsByRateEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SortMealsByRateEventBuilder toBuilder() =>
      new SortMealsByRateEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SortMealsByRateEvent && sortOrder == other.sortOrder;
  }

  @override
  int get hashCode {
    return $jf($jc(0, sortOrder.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SortMealsByRateEvent')
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class SortMealsByRateEventBuilder
    implements Builder<SortMealsByRateEvent, SortMealsByRateEventBuilder> {
  _$SortMealsByRateEvent? _$v;

  String? _sortOrder;
  String? get sortOrder => _$this._sortOrder;
  set sortOrder(String? sortOrder) => _$this._sortOrder = sortOrder;

  SortMealsByRateEventBuilder();

  SortMealsByRateEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sortOrder = $v.sortOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SortMealsByRateEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SortMealsByRateEvent;
  }

  @override
  void update(void Function(SortMealsByRateEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SortMealsByRateEvent build() => _build();

  _$SortMealsByRateEvent _build() {
    final _$result = _$v ??
        new _$SortMealsByRateEvent._(
            sortOrder: BuiltValueNullFieldError.checkNotNull(
                sortOrder, r'SortMealsByRateEvent', 'sortOrder'));
    replace(_$result);
    return _$result;
  }
}

class _$GetSubscriptionsEvent extends GetSubscriptionsEvent {
  @override
  final String query;
  @override
  final int page;
  @override
  final int? filterDays;

  factory _$GetSubscriptionsEvent(
          [void Function(GetSubscriptionsEventBuilder)? updates]) =>
      (new GetSubscriptionsEventBuilder()..update(updates))._build();

  _$GetSubscriptionsEvent._(
      {required this.query, required this.page, this.filterDays})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        query, r'GetSubscriptionsEvent', 'query');
    BuiltValueNullFieldError.checkNotNull(
        page, r'GetSubscriptionsEvent', 'page');
  }

  @override
  GetSubscriptionsEvent rebuild(
          void Function(GetSubscriptionsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSubscriptionsEventBuilder toBuilder() =>
      new GetSubscriptionsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSubscriptionsEvent &&
        query == other.query &&
        page == other.page &&
        filterDays == other.filterDays;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, query.hashCode), page.hashCode), filterDays.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetSubscriptionsEvent')
          ..add('query', query)
          ..add('page', page)
          ..add('filterDays', filterDays))
        .toString();
  }
}

class GetSubscriptionsEventBuilder
    implements Builder<GetSubscriptionsEvent, GetSubscriptionsEventBuilder> {
  _$GetSubscriptionsEvent? _$v;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _filterDays;
  int? get filterDays => _$this._filterDays;
  set filterDays(int? filterDays) => _$this._filterDays = filterDays;

  GetSubscriptionsEventBuilder();

  GetSubscriptionsEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _page = $v.page;
      _filterDays = $v.filterDays;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSubscriptionsEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSubscriptionsEvent;
  }

  @override
  void update(void Function(GetSubscriptionsEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSubscriptionsEvent build() => _build();

  _$GetSubscriptionsEvent _build() {
    final _$result = _$v ??
        new _$GetSubscriptionsEvent._(
            query: BuiltValueNullFieldError.checkNotNull(
                query, r'GetSubscriptionsEvent', 'query'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'GetSubscriptionsEvent', 'page'),
            filterDays: filterDays);
    replace(_$result);
    return _$result;
  }
}

class _$FilterSubscriptionsByDaysEvent extends FilterSubscriptionsByDaysEvent {
  @override
  final int filterDays;

  factory _$FilterSubscriptionsByDaysEvent(
          [void Function(FilterSubscriptionsByDaysEventBuilder)? updates]) =>
      (new FilterSubscriptionsByDaysEventBuilder()..update(updates))._build();

  _$FilterSubscriptionsByDaysEvent._({required this.filterDays}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        filterDays, r'FilterSubscriptionsByDaysEvent', 'filterDays');
  }

  @override
  FilterSubscriptionsByDaysEvent rebuild(
          void Function(FilterSubscriptionsByDaysEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterSubscriptionsByDaysEventBuilder toBuilder() =>
      new FilterSubscriptionsByDaysEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterSubscriptionsByDaysEvent &&
        filterDays == other.filterDays;
  }

  @override
  int get hashCode {
    return $jf($jc(0, filterDays.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilterSubscriptionsByDaysEvent')
          ..add('filterDays', filterDays))
        .toString();
  }
}

class FilterSubscriptionsByDaysEventBuilder
    implements
        Builder<FilterSubscriptionsByDaysEvent,
            FilterSubscriptionsByDaysEventBuilder> {
  _$FilterSubscriptionsByDaysEvent? _$v;

  int? _filterDays;
  int? get filterDays => _$this._filterDays;
  set filterDays(int? filterDays) => _$this._filterDays = filterDays;

  FilterSubscriptionsByDaysEventBuilder();

  FilterSubscriptionsByDaysEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filterDays = $v.filterDays;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterSubscriptionsByDaysEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilterSubscriptionsByDaysEvent;
  }

  @override
  void update(void Function(FilterSubscriptionsByDaysEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterSubscriptionsByDaysEvent build() => _build();

  _$FilterSubscriptionsByDaysEvent _build() {
    final _$result = _$v ??
        new _$FilterSubscriptionsByDaysEvent._(
            filterDays: BuiltValueNullFieldError.checkNotNull(
                filterDays, r'FilterSubscriptionsByDaysEvent', 'filterDays'));
    replace(_$result);
    return _$result;
  }
}

class _$GetChefsEvent extends GetChefsEvent {
  @override
  final String query;
  @override
  final int page;

  factory _$GetChefsEvent([void Function(GetChefsEventBuilder)? updates]) =>
      (new GetChefsEventBuilder()..update(updates))._build();

  _$GetChefsEvent._({required this.query, required this.page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(query, r'GetChefsEvent', 'query');
    BuiltValueNullFieldError.checkNotNull(page, r'GetChefsEvent', 'page');
  }

  @override
  GetChefsEvent rebuild(void Function(GetChefsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetChefsEventBuilder toBuilder() => new GetChefsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetChefsEvent && query == other.query && page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, query.hashCode), page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetChefsEvent')
          ..add('query', query)
          ..add('page', page))
        .toString();
  }
}

class GetChefsEventBuilder
    implements Builder<GetChefsEvent, GetChefsEventBuilder> {
  _$GetChefsEvent? _$v;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GetChefsEventBuilder();

  GetChefsEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetChefsEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetChefsEvent;
  }

  @override
  void update(void Function(GetChefsEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetChefsEvent build() => _build();

  _$GetChefsEvent _build() {
    final _$result = _$v ??
        new _$GetChefsEvent._(
            query: BuiltValueNullFieldError.checkNotNull(
                query, r'GetChefsEvent', 'query'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'GetChefsEvent', 'page'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
