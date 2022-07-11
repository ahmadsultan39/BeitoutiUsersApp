// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chefs_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChefsState extends ChefsState {
  @override
  final bool isNearestLoading;
  @override
  final List<Chef> nearest;
  @override
  final bool isTopRatedLoading;
  @override
  final List<Chef> topRated;
  @override
  final bool isTopOrderedLoading;
  @override
  final List<Chef> topOrdered;
  @override
  final bool isMostRecentLoading;
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
      {required this.isNearestLoading,
      required this.nearest,
      required this.isTopRatedLoading,
      required this.topRated,
      required this.isTopOrderedLoading,
      required this.topOrdered,
      required this.isMostRecentLoading,
      required this.mostRecent,
      required this.isLoading,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isNearestLoading, 'ChefsState', 'isNearestLoading');
    BuiltValueNullFieldError.checkNotNull(nearest, 'ChefsState', 'nearest');
    BuiltValueNullFieldError.checkNotNull(
        isTopRatedLoading, 'ChefsState', 'isTopRatedLoading');
    BuiltValueNullFieldError.checkNotNull(topRated, 'ChefsState', 'topRated');
    BuiltValueNullFieldError.checkNotNull(
        isTopOrderedLoading, 'ChefsState', 'isTopOrderedLoading');
    BuiltValueNullFieldError.checkNotNull(
        topOrdered, 'ChefsState', 'topOrdered');
    BuiltValueNullFieldError.checkNotNull(
        isMostRecentLoading, 'ChefsState', 'isMostRecentLoading');
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
        isNearestLoading == other.isNearestLoading &&
        nearest == other.nearest &&
        isTopRatedLoading == other.isTopRatedLoading &&
        topRated == other.topRated &&
        isTopOrderedLoading == other.isTopOrderedLoading &&
        topOrdered == other.topOrdered &&
        isMostRecentLoading == other.isMostRecentLoading &&
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
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, isNearestLoading.hashCode),
                                            nearest.hashCode),
                                        isTopRatedLoading.hashCode),
                                    topRated.hashCode),
                                isTopOrderedLoading.hashCode),
                            topOrdered.hashCode),
                        isMostRecentLoading.hashCode),
                    mostRecent.hashCode),
                isLoading.hashCode),
            error.hashCode),
        message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChefsState')
          ..add('isNearestLoading', isNearestLoading)
          ..add('nearest', nearest)
          ..add('isTopRatedLoading', isTopRatedLoading)
          ..add('topRated', topRated)
          ..add('isTopOrderedLoading', isTopOrderedLoading)
          ..add('topOrdered', topOrdered)
          ..add('isMostRecentLoading', isMostRecentLoading)
          ..add('mostRecent', mostRecent)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class ChefsStateBuilder implements Builder<ChefsState, ChefsStateBuilder> {
  _$ChefsState? _$v;

  bool? _isNearestLoading;
  bool? get isNearestLoading => _$this._isNearestLoading;
  set isNearestLoading(bool? isNearestLoading) =>
      _$this._isNearestLoading = isNearestLoading;

  List<Chef>? _nearest;
  List<Chef>? get nearest => _$this._nearest;
  set nearest(List<Chef>? nearest) => _$this._nearest = nearest;

  bool? _isTopRatedLoading;
  bool? get isTopRatedLoading => _$this._isTopRatedLoading;
  set isTopRatedLoading(bool? isTopRatedLoading) =>
      _$this._isTopRatedLoading = isTopRatedLoading;

  List<Chef>? _topRated;
  List<Chef>? get topRated => _$this._topRated;
  set topRated(List<Chef>? topRated) => _$this._topRated = topRated;

  bool? _isTopOrderedLoading;
  bool? get isTopOrderedLoading => _$this._isTopOrderedLoading;
  set isTopOrderedLoading(bool? isTopOrderedLoading) =>
      _$this._isTopOrderedLoading = isTopOrderedLoading;

  List<Chef>? _topOrdered;
  List<Chef>? get topOrdered => _$this._topOrdered;
  set topOrdered(List<Chef>? topOrdered) => _$this._topOrdered = topOrdered;

  bool? _isMostRecentLoading;
  bool? get isMostRecentLoading => _$this._isMostRecentLoading;
  set isMostRecentLoading(bool? isMostRecentLoading) =>
      _$this._isMostRecentLoading = isMostRecentLoading;

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
      _isNearestLoading = $v.isNearestLoading;
      _nearest = $v.nearest;
      _isTopRatedLoading = $v.isTopRatedLoading;
      _topRated = $v.topRated;
      _isTopOrderedLoading = $v.isTopOrderedLoading;
      _topOrdered = $v.topOrdered;
      _isMostRecentLoading = $v.isMostRecentLoading;
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
            isNearestLoading: BuiltValueNullFieldError.checkNotNull(
                isNearestLoading, 'ChefsState', 'isNearestLoading'),
            nearest: BuiltValueNullFieldError.checkNotNull(
                nearest, 'ChefsState', 'nearest'),
            isTopRatedLoading: BuiltValueNullFieldError.checkNotNull(
                isTopRatedLoading, 'ChefsState', 'isTopRatedLoading'),
            topRated: BuiltValueNullFieldError.checkNotNull(
                topRated, 'ChefsState', 'topRated'),
            isTopOrderedLoading: BuiltValueNullFieldError.checkNotNull(
                isTopOrderedLoading, 'ChefsState', 'isTopOrderedLoading'),
            topOrdered: BuiltValueNullFieldError.checkNotNull(
                topOrdered, 'ChefsState', 'topOrdered'),
            isMostRecentLoading: BuiltValueNullFieldError.checkNotNull(
                isMostRecentLoading, 'ChefsState', 'isMostRecentLoading'),
            mostRecent: BuiltValueNullFieldError.checkNotNull(
                mostRecent, 'ChefsState', 'mostRecent'),
            isLoading:
                BuiltValueNullFieldError.checkNotNull(isLoading, 'ChefsState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(error, 'ChefsState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(message, 'ChefsState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
