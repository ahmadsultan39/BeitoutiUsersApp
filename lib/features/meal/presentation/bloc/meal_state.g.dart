// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MealState extends MealState {
  @override
  final bool isLoading;
  @override
  final String message;
  @override
  final bool error;
  @override
  final Meal? meal;

  factory _$MealState([void Function(MealStateBuilder)? updates]) =>
      (new MealStateBuilder()..update(updates))._build();

  _$MealState._(
      {required this.isLoading,
      required this.message,
      required this.error,
      this.meal})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, 'MealState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(message, 'MealState', 'message');
    BuiltValueNullFieldError.checkNotNull(error, 'MealState', 'error');
  }

  @override
  MealState rebuild(void Function(MealStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MealStateBuilder toBuilder() => new MealStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MealState &&
        isLoading == other.isLoading &&
        message == other.message &&
        error == other.error &&
        meal == other.meal;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), message.hashCode), error.hashCode),
        meal.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MealState')
          ..add('isLoading', isLoading)
          ..add('message', message)
          ..add('error', error)
          ..add('meal', meal))
        .toString();
  }
}

class MealStateBuilder implements Builder<MealState, MealStateBuilder> {
  _$MealState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  Meal? _meal;
  Meal? get meal => _$this._meal;
  set meal(Meal? meal) => _$this._meal = meal;

  MealStateBuilder();

  MealStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _message = $v.message;
      _error = $v.error;
      _meal = $v.meal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MealState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MealState;
  }

  @override
  void update(void Function(MealStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MealState build() => _build();

  _$MealState _build() {
    final _$result = _$v ??
        new _$MealState._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, 'MealState', 'isLoading'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'MealState', 'message'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'MealState', 'error'),
            meal: meal);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
