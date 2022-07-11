// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chef_menu_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetChefCategoriesEvent extends GetChefCategoriesEvent {
  @override
  final int id;

  factory _$GetChefCategoriesEvent(
          [void Function(GetChefCategoriesEventBuilder)? updates]) =>
      (new GetChefCategoriesEventBuilder()..update(updates))._build();

  _$GetChefCategoriesEvent._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GetChefCategoriesEvent', 'id');
  }

  @override
  GetChefCategoriesEvent rebuild(
          void Function(GetChefCategoriesEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetChefCategoriesEventBuilder toBuilder() =>
      new GetChefCategoriesEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetChefCategoriesEvent && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetChefCategoriesEvent')
          ..add('id', id))
        .toString();
  }
}

class GetChefCategoriesEventBuilder
    implements Builder<GetChefCategoriesEvent, GetChefCategoriesEventBuilder> {
  _$GetChefCategoriesEvent? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GetChefCategoriesEventBuilder();

  GetChefCategoriesEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetChefCategoriesEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetChefCategoriesEvent;
  }

  @override
  void update(void Function(GetChefCategoriesEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetChefCategoriesEvent build() => _build();

  _$GetChefCategoriesEvent _build() {
    final _$result = _$v ??
        new _$GetChefCategoriesEvent._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GetChefCategoriesEvent', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GetChefCategoryMealsEvent extends GetChefCategoryMealsEvent {
  @override
  final int chefId;
  @override
  final int categoryId;

  factory _$GetChefCategoryMealsEvent(
          [void Function(GetChefCategoryMealsEventBuilder)? updates]) =>
      (new GetChefCategoryMealsEventBuilder()..update(updates))._build();

  _$GetChefCategoryMealsEvent._(
      {required this.chefId, required this.categoryId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        chefId, 'GetChefCategoryMealsEvent', 'chefId');
    BuiltValueNullFieldError.checkNotNull(
        categoryId, 'GetChefCategoryMealsEvent', 'categoryId');
  }

  @override
  GetChefCategoryMealsEvent rebuild(
          void Function(GetChefCategoryMealsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetChefCategoryMealsEventBuilder toBuilder() =>
      new GetChefCategoryMealsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetChefCategoryMealsEvent &&
        chefId == other.chefId &&
        categoryId == other.categoryId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, chefId.hashCode), categoryId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetChefCategoryMealsEvent')
          ..add('chefId', chefId)
          ..add('categoryId', categoryId))
        .toString();
  }
}

class GetChefCategoryMealsEventBuilder
    implements
        Builder<GetChefCategoryMealsEvent, GetChefCategoryMealsEventBuilder> {
  _$GetChefCategoryMealsEvent? _$v;

  int? _chefId;
  int? get chefId => _$this._chefId;
  set chefId(int? chefId) => _$this._chefId = chefId;

  int? _categoryId;
  int? get categoryId => _$this._categoryId;
  set categoryId(int? categoryId) => _$this._categoryId = categoryId;

  GetChefCategoryMealsEventBuilder();

  GetChefCategoryMealsEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chefId = $v.chefId;
      _categoryId = $v.categoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetChefCategoryMealsEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetChefCategoryMealsEvent;
  }

  @override
  void update(void Function(GetChefCategoryMealsEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetChefCategoryMealsEvent build() => _build();

  _$GetChefCategoryMealsEvent _build() {
    final _$result = _$v ??
        new _$GetChefCategoryMealsEvent._(
            chefId: BuiltValueNullFieldError.checkNotNull(
                chefId, 'GetChefCategoryMealsEvent', 'chefId'),
            categoryId: BuiltValueNullFieldError.checkNotNull(
                categoryId, 'GetChefCategoryMealsEvent', 'categoryId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetChefInfoEvent extends GetChefInfoEvent {
  @override
  final int id;

  factory _$GetChefInfoEvent(
          [void Function(GetChefInfoEventBuilder)? updates]) =>
      (new GetChefInfoEventBuilder()..update(updates))._build();

  _$GetChefInfoEvent._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GetChefInfoEvent', 'id');
  }

  @override
  GetChefInfoEvent rebuild(void Function(GetChefInfoEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetChefInfoEventBuilder toBuilder() =>
      new GetChefInfoEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetChefInfoEvent && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetChefInfoEvent')..add('id', id))
        .toString();
  }
}

class GetChefInfoEventBuilder
    implements Builder<GetChefInfoEvent, GetChefInfoEventBuilder> {
  _$GetChefInfoEvent? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GetChefInfoEventBuilder();

  GetChefInfoEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetChefInfoEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetChefInfoEvent;
  }

  @override
  void update(void Function(GetChefInfoEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetChefInfoEvent build() => _build();

  _$GetChefInfoEvent _build() {
    final _$result = _$v ??
        new _$GetChefInfoEvent._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GetChefInfoEvent', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GetChefSubscriptionsEvent extends GetChefSubscriptionsEvent {
  @override
  final int id;

  factory _$GetChefSubscriptionsEvent(
          [void Function(GetChefSubscriptionsEventBuilder)? updates]) =>
      (new GetChefSubscriptionsEventBuilder()..update(updates))._build();

  _$GetChefSubscriptionsEvent._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, 'GetChefSubscriptionsEvent', 'id');
  }

  @override
  GetChefSubscriptionsEvent rebuild(
          void Function(GetChefSubscriptionsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetChefSubscriptionsEventBuilder toBuilder() =>
      new GetChefSubscriptionsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetChefSubscriptionsEvent && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetChefSubscriptionsEvent')
          ..add('id', id))
        .toString();
  }
}

class GetChefSubscriptionsEventBuilder
    implements
        Builder<GetChefSubscriptionsEvent, GetChefSubscriptionsEventBuilder> {
  _$GetChefSubscriptionsEvent? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GetChefSubscriptionsEventBuilder();

  GetChefSubscriptionsEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetChefSubscriptionsEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetChefSubscriptionsEvent;
  }

  @override
  void update(void Function(GetChefSubscriptionsEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetChefSubscriptionsEvent build() => _build();

  _$GetChefSubscriptionsEvent _build() {
    final _$result = _$v ??
        new _$GetChefSubscriptionsEvent._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GetChefSubscriptionsEvent', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GetChefSubscriptionMealsEvent extends GetChefSubscriptionMealsEvent {
  @override
  final int id;

  factory _$GetChefSubscriptionMealsEvent(
          [void Function(GetChefSubscriptionMealsEventBuilder)? updates]) =>
      (new GetChefSubscriptionMealsEventBuilder()..update(updates))._build();

  _$GetChefSubscriptionMealsEvent._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, 'GetChefSubscriptionMealsEvent', 'id');
  }

  @override
  GetChefSubscriptionMealsEvent rebuild(
          void Function(GetChefSubscriptionMealsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetChefSubscriptionMealsEventBuilder toBuilder() =>
      new GetChefSubscriptionMealsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetChefSubscriptionMealsEvent && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetChefSubscriptionMealsEvent')
          ..add('id', id))
        .toString();
  }
}

class GetChefSubscriptionMealsEventBuilder
    implements
        Builder<GetChefSubscriptionMealsEvent,
            GetChefSubscriptionMealsEventBuilder> {
  _$GetChefSubscriptionMealsEvent? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GetChefSubscriptionMealsEventBuilder();

  GetChefSubscriptionMealsEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetChefSubscriptionMealsEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetChefSubscriptionMealsEvent;
  }

  @override
  void update(void Function(GetChefSubscriptionMealsEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetChefSubscriptionMealsEvent build() => _build();

  _$GetChefSubscriptionMealsEvent _build() {
    final _$result = _$v ??
        new _$GetChefSubscriptionMealsEvent._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GetChefSubscriptionMealsEvent', 'id'));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
