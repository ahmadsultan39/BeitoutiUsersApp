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

class _$GetMealsEvent extends GetMealsEvent {
  @override
  final String query;
  @override
  final int page;

  factory _$GetMealsEvent([void Function(GetMealsEventBuilder)? updates]) =>
      (new GetMealsEventBuilder()..update(updates))._build();

  _$GetMealsEvent._({required this.query, required this.page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(query, 'GetMealsEvent', 'query');
    BuiltValueNullFieldError.checkNotNull(page, 'GetMealsEvent', 'page');
  }

  @override
  GetMealsEvent rebuild(void Function(GetMealsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMealsEventBuilder toBuilder() => new GetMealsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMealsEvent && query == other.query && page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, query.hashCode), page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetMealsEvent')
          ..add('query', query)
          ..add('page', page))
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

  GetMealsEventBuilder();

  GetMealsEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _page = $v.page;
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
                query, 'GetMealsEvent', 'query'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, 'GetMealsEvent', 'page'));
    replace(_$result);
    return _$result;
  }
}

class _$GetSubscriptionsEvent extends GetSubscriptionsEvent {
  @override
  final String query;
  @override
  final int page;

  factory _$GetSubscriptionsEvent(
          [void Function(GetSubscriptionsEventBuilder)? updates]) =>
      (new GetSubscriptionsEventBuilder()..update(updates))._build();

  _$GetSubscriptionsEvent._({required this.query, required this.page})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        query, 'GetSubscriptionsEvent', 'query');
    BuiltValueNullFieldError.checkNotNull(
        page, 'GetSubscriptionsEvent', 'page');
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
        page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, query.hashCode), page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetSubscriptionsEvent')
          ..add('query', query)
          ..add('page', page))
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

  GetSubscriptionsEventBuilder();

  GetSubscriptionsEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _page = $v.page;
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
                query, 'GetSubscriptionsEvent', 'query'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, 'GetSubscriptionsEvent', 'page'));
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
    BuiltValueNullFieldError.checkNotNull(query, 'GetChefsEvent', 'query');
    BuiltValueNullFieldError.checkNotNull(page, 'GetChefsEvent', 'page');
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
    return (newBuiltValueToStringHelper('GetChefsEvent')
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
                query, 'GetChefsEvent', 'query'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, 'GetChefsEvent', 'page'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
