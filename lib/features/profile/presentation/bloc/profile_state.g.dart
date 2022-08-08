// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProfileState extends ProfileState {
  @override
  final bool isLoading;
  @override
  final String message;
  @override
  final bool error;
  @override
  final bool logoutSuccess;
  @override
  final Profile? profile;

  factory _$ProfileState([void Function(ProfileStateBuilder)? updates]) =>
      (new ProfileStateBuilder()..update(updates))._build();

  _$ProfileState._(
      {required this.isLoading,
      required this.message,
      required this.error,
      required this.logoutSuccess,
      this.profile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'ProfileState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(message, r'ProfileState', 'message');
    BuiltValueNullFieldError.checkNotNull(error, r'ProfileState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        logoutSuccess, r'ProfileState', 'logoutSuccess');
  }

  @override
  ProfileState rebuild(void Function(ProfileStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileStateBuilder toBuilder() => new ProfileStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileState &&
        isLoading == other.isLoading &&
        message == other.message &&
        error == other.error &&
        logoutSuccess == other.logoutSuccess &&
        profile == other.profile;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, isLoading.hashCode), message.hashCode),
                error.hashCode),
            logoutSuccess.hashCode),
        profile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProfileState')
          ..add('isLoading', isLoading)
          ..add('message', message)
          ..add('error', error)
          ..add('logoutSuccess', logoutSuccess)
          ..add('profile', profile))
        .toString();
  }
}

class ProfileStateBuilder
    implements Builder<ProfileState, ProfileStateBuilder> {
  _$ProfileState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  bool? _logoutSuccess;
  bool? get logoutSuccess => _$this._logoutSuccess;
  set logoutSuccess(bool? logoutSuccess) =>
      _$this._logoutSuccess = logoutSuccess;

  Profile? _profile;
  Profile? get profile => _$this._profile;
  set profile(Profile? profile) => _$this._profile = profile;

  ProfileStateBuilder();

  ProfileStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _message = $v.message;
      _error = $v.error;
      _logoutSuccess = $v.logoutSuccess;
      _profile = $v.profile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfileState;
  }

  @override
  void update(void Function(ProfileStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProfileState build() => _build();

  _$ProfileState _build() {
    final _$result = _$v ??
        new _$ProfileState._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'ProfileState', 'isLoading'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ProfileState', 'message'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'ProfileState', 'error'),
            logoutSuccess: BuiltValueNullFieldError.checkNotNull(
                logoutSuccess, r'ProfileState', 'logoutSuccess'),
            profile: profile);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
