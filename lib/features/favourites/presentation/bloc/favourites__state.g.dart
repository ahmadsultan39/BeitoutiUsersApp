// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourites__state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FavouritesState extends FavouritesState {
  @override
  final bool isLoading;
  @override
  final String message;
  @override
  final bool error;
  @override
  final BuiltList<FavouriteMeal> favourites;

  factory _$FavouritesState([void Function(FavouritesStateBuilder)? updates]) =>
      (new FavouritesStateBuilder()..update(updates))._build();

  _$FavouritesState._(
      {required this.isLoading,
      required this.message,
      required this.error,
      required this.favourites})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'FavouritesState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        message, r'FavouritesState', 'message');
    BuiltValueNullFieldError.checkNotNull(error, r'FavouritesState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        favourites, r'FavouritesState', 'favourites');
  }

  @override
  FavouritesState rebuild(void Function(FavouritesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavouritesStateBuilder toBuilder() =>
      new FavouritesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavouritesState &&
        isLoading == other.isLoading &&
        message == other.message &&
        error == other.error &&
        favourites == other.favourites;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), message.hashCode), error.hashCode),
        favourites.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FavouritesState')
          ..add('isLoading', isLoading)
          ..add('message', message)
          ..add('error', error)
          ..add('favourites', favourites))
        .toString();
  }
}

class FavouritesStateBuilder
    implements Builder<FavouritesState, FavouritesStateBuilder> {
  _$FavouritesState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  ListBuilder<FavouriteMeal>? _favourites;
  ListBuilder<FavouriteMeal> get favourites =>
      _$this._favourites ??= new ListBuilder<FavouriteMeal>();
  set favourites(ListBuilder<FavouriteMeal>? favourites) =>
      _$this._favourites = favourites;

  FavouritesStateBuilder();

  FavouritesStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _message = $v.message;
      _error = $v.error;
      _favourites = $v.favourites.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavouritesState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FavouritesState;
  }

  @override
  void update(void Function(FavouritesStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FavouritesState build() => _build();

  _$FavouritesState _build() {
    _$FavouritesState _$result;
    try {
      _$result = _$v ??
          new _$FavouritesState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'FavouritesState', 'isLoading'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'FavouritesState', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'FavouritesState', 'error'),
              favourites: favourites.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'favourites';
        favourites.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FavouritesState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
