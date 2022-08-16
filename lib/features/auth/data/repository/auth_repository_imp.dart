import 'package:beitouti_users/core/error/exceptions.dart';
import 'package:beitouti_users/core/error/failures.dart';
import 'package:beitouti_users/core/util/enums.dart';
import 'package:beitouti_users/features/auth/data/models/register_request_model.dart';
import 'package:beitouti_users/features/auth/domain/entities/accessibility_status.dart';
import 'package:beitouti_users/features/auth/domain/entities/register_request.dart';
import 'package:beitouti_users/features/auth/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/util/enums.dart';
import '../data_source/local/auth_local_data_source.dart';
import '../data_source/remote/auth_remote_data_source.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImp implements AuthRepository {
  final AuthLocalDataSource _local;
  final AuthRemoteDataSource _http;

  AuthRepositoryImp(this._local, this._http);

  @override
  Future<Either<Failure, void>> sendCode({required String phoneNumber}) async {
    try {
      await _http.sendCode(phoneNumber: phoneNumber);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, AccessibilityStatus>> checkCode(
      {required String phoneNumber, required String code}) async {
    try {
      String? fcmToken =  "";//await FirebaseMessaging.instance.getToken();
      fcmToken = fcmToken ?? "" ;
      final accessibilityStatus = await _http.checkCodeAndAccessibility(
        phoneNumber: phoneNumber,
        code: code,
        fcmToken: fcmToken,
      );
      if (accessibilityStatus.status == AccessibilityStaysType.active) {
        _local.saveUser(accessibilityStatus.userModel!);
      }
      return Right(accessibilityStatus);
    } on ServerException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }

  @override
  Future<Either<Failure, void>> requestRegister(
      {required RegisterRequest request}) async {
    try {
      String? fcmToken =  "";//await FirebaseMessaging.instance.getToken();
      fcmToken = fcmToken ?? "" ;
      await _http.requestRegister(
        request: RegisterRequestModel(
          name: request.name,
          email: request.email,
          location: request.location.index,
          gender: request.gender.index,
          phoneNumber: request.phoneNumber,
          studySpeciality: request.studySpeciality,
          nationalId: request.nationalId,
          studyYear: request.studyYear,
          campusCardId: request.campusCardId,
          campusCardExpiryDate: request.campusCardExpiryDate,
          campusUnitNumber: request.campusUnitNumber,
          birthDate: request.birthDate,
        ),
        fcmToken : fcmToken
      );
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(error: e.error));
    }
  }
}
