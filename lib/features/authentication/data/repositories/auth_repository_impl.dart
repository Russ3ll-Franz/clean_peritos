import 'package:app_peritos/features/authentication/data/data.dart';
import 'package:app_peritos/features/authentication/domain/entities/auth.dart';
import 'package:app_peritos/features/authentication/domain/entities/user.dart';
import 'package:app_peritos/core/error/failures.dart';
import 'package:app_peritos/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteSource _authRemoteSource;

  AuthRepositoryImpl(this._authRemoteSource);

  @override
  Future<AuthResponse> signIn(String username, String password) async {
    final response = await _authRemoteSource.signIn(username, password);
    return response.map((auth) => auth.toEntity());
    /* return response.map((Auth) => albums.toEntities()); */
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
