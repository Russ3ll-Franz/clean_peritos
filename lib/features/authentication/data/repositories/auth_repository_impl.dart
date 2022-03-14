import 'package:app_peritos/features/authentication/domain/entities/user.dart';
import 'package:app_peritos/core/error/failures.dart';
import 'package:app_peritos/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Either<Failure, void>> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
