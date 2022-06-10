//TODO extend base repository

import 'package:beitouti_users/features/auth/domain/entities/accessibility_status.dart';
import 'package:beitouti_users/features/auth/domain/entities/register_request.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> sendCode({
    required String phoneNumber,
  });

  Future<Either<Failure, AccessibilityStatus>> checkCode({
    required String phoneNumber,
    required String code,
  });

  Future<Either<Failure, void>> requestRegister({
    required RegisterRequest request,
  });
}
