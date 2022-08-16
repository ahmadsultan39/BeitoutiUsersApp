import 'package:beitouti_users/core/usecase/usecase.dart';
import 'package:beitouti_users/features/profile/domain/use_cases/get_profile_info_use_case.dart';
import 'package:beitouti_users/features/profile/domain/use_cases/logout_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'profile.dart';

@lazySingleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileInfoUseCase _getProfileInfoUseCase;
  final LogoutUseCase _logoutUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addGetProfileEvent() {
    add(GetProfileEvent());
  }

  void addLogoutEvent() {
    add(LogoutEvent());
  }

  @factoryMethod
  ProfileBloc(
    this._getProfileInfoUseCase,
    this._logoutUseCase,
  ) : super(ProfileState.initial()) {
    on<ProfileEvent>(
      (event, emit) async {
        /// *** ClearMessage *** ///
        if (event is ClearMessage) {
          emit(
            state.rebuild(
              (b) => b
                ..error = false
                ..message = '',
            ),
          );
        }

        /// *** ClearMessage *** ///
        if (event is LogoutEvent) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _logoutUseCase(NoParams());

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..message = failure.error
                  ..error = true,
              ),
            ),
            (success) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = true
                  ..logoutSuccess = true,
              ),
            ),
          );
        }

        /// *** GetProfile *** ///
        if (event is GetProfileEvent) {
          final result = await _getProfileInfoUseCase(NoParams());

          result.fold(
            (failure) => emit(
              state.rebuild(
                (b) => b
                  ..error = true
                  ..message = failure.error,
              ),
            ),
            (profile) => emit(
              state.rebuild(
                (b) => b..profile = profile,
              ),
            ),
          );
        }
      },
    );
  }
}
