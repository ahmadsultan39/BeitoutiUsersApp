// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourites__event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFavouriteMeal extends GetFavouriteMeal {
  factory _$GetFavouriteMeal(
          [void Function(GetFavouriteMealBuilder)? updates]) =>
      (new GetFavouriteMealBuilder()..update(updates))._build();

  _$GetFavouriteMeal._() : super._();

  @override
  GetFavouriteMeal rebuild(void Function(GetFavouriteMealBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFavouriteMealBuilder toBuilder() =>
      new GetFavouriteMealBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFavouriteMeal;
  }

  @override
  int get hashCode {
    return 808415151;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetFavouriteMeal').toString();
  }
}

class GetFavouriteMealBuilder
    implements Builder<GetFavouriteMeal, GetFavouriteMealBuilder> {
  _$GetFavouriteMeal? _$v;

  GetFavouriteMealBuilder();

  @override
  void replace(GetFavouriteMeal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFavouriteMeal;
  }

  @override
  void update(void Function(GetFavouriteMealBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFavouriteMeal build() => _build();

  _$GetFavouriteMeal _build() {
    final _$result = _$v ?? new _$GetFavouriteMeal._();
    replace(_$result);
    return _$result;
  }
}

class _$RemoveFromFavourite extends RemoveFromFavourite {
  @override
  final int mealId;

  factory _$RemoveFromFavourite(
          [void Function(RemoveFromFavouriteBuilder)? updates]) =>
      (new RemoveFromFavouriteBuilder()..update(updates))._build();

  _$RemoveFromFavourite._({required this.mealId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        mealId, r'RemoveFromFavourite', 'mealId');
  }

  @override
  RemoveFromFavourite rebuild(
          void Function(RemoveFromFavouriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveFromFavouriteBuilder toBuilder() =>
      new RemoveFromFavouriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveFromFavourite && mealId == other.mealId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, mealId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RemoveFromFavourite')
          ..add('mealId', mealId))
        .toString();
  }
}

class RemoveFromFavouriteBuilder
    implements Builder<RemoveFromFavourite, RemoveFromFavouriteBuilder> {
  _$RemoveFromFavourite? _$v;

  int? _mealId;
  int? get mealId => _$this._mealId;
  set mealId(int? mealId) => _$this._mealId = mealId;

  RemoveFromFavouriteBuilder();

  RemoveFromFavouriteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mealId = $v.mealId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveFromFavourite other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveFromFavourite;
  }

  @override
  void update(void Function(RemoveFromFavouriteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemoveFromFavourite build() => _build();

  _$RemoveFromFavourite _build() {
    final _$result = _$v ??
        new _$RemoveFromFavourite._(
            mealId: BuiltValueNullFieldError.checkNotNull(
                mealId, r'RemoveFromFavourite', 'mealId'));
    replace(_$result);
    return _$result;
  }
}

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
