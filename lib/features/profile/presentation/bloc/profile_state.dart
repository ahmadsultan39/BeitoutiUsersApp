import 'package:built_value/built_value.dart';

import '../../domain/entities/profile.dart';

part 'profile_state.g.dart';

abstract class ProfileState
    implements Built<ProfileState, ProfileStateBuilder> {
  bool get isLoading;

  String get message;

  bool get error;

  bool get logoutSuccess;

  Profile? get profile;

  ProfileState._();

  factory ProfileState([Function(ProfileStateBuilder b) updates]) =
      _$ProfileState;

  factory ProfileState.initial() {
    return ProfileState(
      (b) => b
        ..logoutSuccess = false
        ..profile = null
        ..isLoading = false
        ..message = ""
        ..error = false,
    );
  }
}
