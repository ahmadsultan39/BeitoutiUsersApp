// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chefs_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChefsState extends ChefsState {
  @override
  final List<Chef> nearest;
  @override
  final List<Chef> topRated;
  @override
  final List<Chef> topOrdered;
  @override
  final List<Chef> mostRecent;
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$ChefsState([void Function(ChefsStateBuilder)? updates]) =>
      (new ChefsStateBuilder()..update(updates))._build();

  _$ChefsState._(
      {required this.nearest,
      required this.topRated,
      required this.topOrdered,
      required this.mostRecent,
      required this.isLoading,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(nearest, 'ChefsState', 'nearest');
    BuiltValueNullFieldError.checkNotNull(topRated, 'ChefsState', 'topRated');
    BuiltValueNullFieldError.checkNotNull(
        topOrdered, 'ChefsState', 'topOrdered');
    BuiltValueNullFieldError.checkNotNull(
        mostRecent, 'ChefsState', 'mostRecent');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'ChefsState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, 'ChefsState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, 'ChefsState', 'message');
  }

  @override
  ChefsState rebuild(void Function(ChefsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChefsStateBuilder toBuilder() => new ChefsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChefsState &&
        nearest == other.nearest &&
        topRated == other.topRated &&
        topOrdered == other.topOrdered &&
        mostRecent == other.mostRecent &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nearest.hashCode), topRated.hashCode),
                        topOrdered.hashCode),
                    mostRecent.hashCode),
                isLoading.hashCode),
            error.hashCode),
        message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChefsState')
          ..add('nearest', nearest)
          ..add('topRated', topRated)
          ..add('topOrdered', topOrdered)
          ..add('mostRecent', mostRecent)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class ChefsStateBuilder implements Builder<ChefsState, ChefsStateBuilder> {
  _$ChefsState? _$v;

  List<Chef>? _nearest;
  List<Chef>? get nearest => _$this._nearest;
  set nearest(List<Chef>? nearest) => _$this._nearest = nearest;

  List<Chef>? _topRated;
  List<Chef>? get topRated => _$this._topRated;
  set topRated(List<Chef>? topRated) => _$this._topRated = topRated;

  List<Chef>? _topOrdered;
  List<Chef>? get topOrdered => _$this._topOrdered;
  set topOrdered(List<Chef>? topOrdered) => _$this._topOrdered = topOrdered;

  List<Chef>? _mostRecent;
  List<Chef>? get mostRecent => _$this._mostRecent;
  set mostRecent(List<Chef>? mostRecent) => _$this._mostRecent = mostRecent;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ChefsStateBuilder();

  ChefsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nearest = $v.nearest;
      _topRated = $v.topRated;
      _topOrdered = $v.topOrdered;
      _mostRecent = $v.mostRecent;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChefsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChefsState;
  }

  @override
  void update(void Function(ChefsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChefsState build() => _build();

  _$ChefsState _build() {
    final _$result = _$v ??
        new _$ChefsState._(
            nearest: BuiltValueNullFieldError.checkNotNull(
                nearest, 'ChefsState', 'nearest'),
            topRated: BuiltValueNullFieldError.checkNotNull(
                topRated, 'ChefsState', 'topRated'),
            topOrdered: BuiltValueNullFieldError.checkNotNull(
                topOrdered, 'ChefsState', 'topOrdered'),
            mostRecent: BuiltValueNullFieldError.checkNotNull(
                mostRecent, 'ChefsState', 'mostRecent'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, 'ChefsState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'ChefsState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'ChefsState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
